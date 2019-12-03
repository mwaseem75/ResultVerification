# quickstarts-hl7  

A stand-alone HL7 sample app built on InterSystems IRIS for Health and Docker  

Requirements:  
	Docker command line  

To Run on Windows:  
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared\data\sample_data\ADT_A01.txt shared\data\registration\  
	start "http://localhost:52785/csp/sys/UtilHome.csp"  

open bugs:  
	-RegADTtoUpdateADTDTL not fully implemented (MSH (date), PID)  
	-UpdateADTtoBillingADTDTL not fully impelemented (MSH, PID, schema)  
	-UpdateADTtoLabORMDTL not fully implemented (missing segs?, MSH, PID, schema)  
	-lab outgoing file name  
	-patient reg ID not getting through to db
	-remove password expire from final container  
	-update adt_a01  
	-add comments
