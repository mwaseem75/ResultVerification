/// Given an incoming admission ADT message, adds MSH data and forwards the message to next nodes.
Class HL7QS.RoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="HL7QS.Production">
<ruleSet name="RoutingRule" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<constraint name="source" value="fromRegADTUpdate"></constraint>
<constraint name="docCategory" value="2.3.1"></constraint>
<constraint name="docName" value="ADT_A01"></constraint>
<when condition="1">
<send transform="HL7QS.UpdateADTtoBillingADTDTL" target="toBillingFile"></send>
<send transform="HL7QS.UpdateADTtoLabORMDTL" target="toLabFile"></send>
<send transform="HL7QS.UpdateADTtoPatientRegDBRequestDTL" target="HL7QS.PatientRegDBOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
