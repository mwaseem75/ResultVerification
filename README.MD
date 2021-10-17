# LabResultsVerification-hl7  

## Summary
A stand-alone HL7 application built on InterSystems IRIS for Health and Docker. 
In terminal commands, build an HL7 integration engine, send a sample result to Business Process to get reference ranges for each test and set Abnormal Flag based on the results, and view the trace of routing and transformations.
Recommended for use with: https://learning.intersystems.com/course/view.php?name=HL7%20QS  

## Features
* Importing CSV data to Persistent class by using csvgen utility
* Use of Custom Utility functions
* Use of SQL to read data from Persistent class
* Use of Data Transformation to update reference ranges and abnormal flag from DataBase
* Use of Business Rules to find critical data


## Repo Contents   
* Dockerfile, docker-compose.yml, and Installer.cls to create container with 
  resultVer.Production in INTEROP namespace  
* TestRanges.csv, Contains reference ranges for tests used in sample file. Data will
  be improted by csvgen utility which will be install by using zpm.
  For csvgen, view details with :https://openexchange.intersystems.com/package/csvgen
* iris.script, containts script to execute during container initilization including 
  installing and importing TestRanges
* /src with source files for resultVer Production and for csvgen  
* /shared directory which acts as a volume between local machine and IRIS container 
* /.vscode/settings.json for automatic server connections when opened in VS Code. 

## Requirements:  
* [Docker desktop]( https://www.docker.com/products/docker-desktop)
* Get the latest InterSystems IRIS for Health image for use in the Dockerfile: https://hub.docker.com/_/intersystems-iris-for-health  

## To Run on Windows:  
```
	git clone https://github.com/intersystems/LabResultsVerification-hl7  
	cd Lab-ResultsVerification-hl7  
	docker-compose up -d  
	start explorer "http://localhost:52795/csp/interop/EnsPortal.ProductionConfig.zen?PRODUCTION=resultVer.Production"
```
Log in with credentials: SuperUser | SYS

## To Run on macOS:  

```
	git clone https://github.com/intersystems/LabResultsVerification-hl7 
	cd quickstarts-hl7  
	docker-compose up -d  
	open "http://localhost:52795/csp/interop/EnsPortal.ProductionConfig.zen?PRODUCTION=resultVer.Production"
```
Log in with credentials: SuperUser | SYS

# What is included?
*LabResultsVerification-hl* includes *Business Services* to read file, *Business Processes* to get results reference ranges and set abnormal flag and send to *Business Operations*. 

# Getting Started

Copy \shared\data\sample_data\ORU_R01.txt \shared\data\results directory.
System will update reference range by using TestRanges Persistent class and set the abnormal flag.
Business process will send critical results whom abnormal flag is set to *ToCriticalResultsFile* operation and rest of the normal results to *ToNormalResultsFile* operation.

# How it works!
Below is the primary and transformed HL7 2.5 ORU_R01 message:
![image](https://user-images.githubusercontent.com/18219467/137583773-0c5d80a9-1d9f-4fad-b3ee-1c9395e7c62b.png)

It need to save reference ranges in database, for this I used TestRanges Persistent class which will be auto populated by using csvgen:
![image](https://user-images.githubusercontent.com/18219467/137583829-6d9d6d54-604a-47fb-9fdc-cfb80c67c1e3.png)

In order to get reference range a custom function GetReferenceRange() is created in utility class. Please note this class should be Extends from EnsRule.FunctionSet 
![image](https://user-images.githubusercontent.com/18219467/137583884-6da17224-d947-496a-b979-9d574cd30e53.png)

and for Abnormal Flag, SetAbnormalFlag() function is created in utility class
![image](https://user-images.githubusercontent.com/18219467/137583921-a1eeede2-57ca-413c-a60d-9b4d4662c5e6.png)

Data Transformation (UpdateReferenceRangesDTL) is created which will update reference range and set abnormal flag by using GetReferenceRange() and SetAbnormalFlag() utility class functions in nested foreach loops:
![image](https://user-images.githubusercontent.com/18219467/137583970-5a8bb7cf-c0f4-44cc-93b4-00a58aad7a54.png)
Please note that in order to get Abnormal flag we have to pass OBX:ObservationValue (Result) along with OBX:ObservationIdentifier(TestCode)

Business process "ResultsDTRouter" will transform the message by using "ResultsDTRule" Business rule and send message to another business process "ResultsRoute" to send message to "ToCriticalResultsFile" operation in case of Abnormal flag is set otherwise if will send to "ToCriticalResultsFile" operation:
![image](https://user-images.githubusercontent.com/18219467/137584107-7209d287-3f48-4494-99fa-9e7e58b9b0a1.png)

Following Visual Trace Below Visual Trace is for the message successfully send to "ToCriticalResultsFile" Operation
![image](https://user-images.githubusercontent.com/18219467/137584121-6fd80715-c41a-40ed-8593-31ead517fecf.png)



