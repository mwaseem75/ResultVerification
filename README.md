# LabResultsVerification-hl7  

## Summary
A stand-alone HL7 application built on InterSystems IRIS for Health and Docker. 
In terminal commands, build an HL7 integration engine, send a sample result to Business Process to get reference ranges for each test and set Abnormal Flag based on the results, and view the trace of routing and transformations.
Recommended for use with: https://learning.intersystems.com/course/view.php?name=HL7%20QS  

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
