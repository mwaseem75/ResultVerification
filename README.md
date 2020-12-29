# quickstarts-hl7  

A stand-alone HL7 sample app built on InterSystems IRIS for Health and Docker. Recommended for use with: https://learning.intersystems.com/course/view.php?name=HL7%20QS  

Repo includes:   
* Dockerfile, docker-compose.yml, and Installer.cls to create container with HL7QS.Production in INTEROP namespace  
* /src with soruce files for HL7QS Production  
* /shared directory which acts as a volume between local machine and instance  

Requirements:  
* Docker command line  
* Get the latest InterSystems IRIS for Health image for use in the Dockerfile: https://hub.docker.com/_/intersystems-iris-for-health  

To Run on Windows:  
```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared\data\sample_data\ADT_A01.txt shared\data\registration\  
	start "http://localhost:52785/csp/sys/UtilHome.csp"  
```
To Run on Mac:  
```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared/data/sample_data/ADT_A01.txt shared/data/registration/  
	open "http://localhost:52785/csp/sys/UtilHome.csp"  
```
