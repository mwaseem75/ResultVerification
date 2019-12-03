Class HL7QS.UpdateADTtoPatientRegDBRequestDTL Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, HL7QS.PatientRegDBRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='HL7QS.PatientRegDBRequest' sourceDocType='2.3.1:ADT_A01' create='new' language='objectscript' >
<assign value='source.{PID:PatientID.ID}' property='target.PatientID' action='set' />
<assign value='source.{MSH:DateTimeOfMessage.timeofanevent}' property='target.RegDateTime' action='set' />
</transform>
}

}
