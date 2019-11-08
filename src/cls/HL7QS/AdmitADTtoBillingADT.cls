Class HL7QS.AdmitADTtoBillingADT Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ADT_A01' create='new' language='objectscript' >
<annotation>Forwards ADT message from Admission form to billing.</annotation>
<assign value='source' property='target' action='set' />
</transform>
}

}
