Class isclearning.HL7QS.RegADTtoUpdateADTDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ADT_A01' create='copy' language='objectscript' >
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='"Admissions"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='..CurrentDateTime()' property='target.{MSH:DateTimeOfMessage}' action='set' />
</transform>
}

}
