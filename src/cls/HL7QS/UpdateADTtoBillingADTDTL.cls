Class HL7QS.UpdateADTtoBillingADTDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ADT_A01' create='copy' language='objectscript' >
<annotation>Forwards updated ADT message from registration to billing.</annotation>
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='"Billing"' property='target.{MSH:ReceivingApplication}' action='set' />
</transform>
}

}
