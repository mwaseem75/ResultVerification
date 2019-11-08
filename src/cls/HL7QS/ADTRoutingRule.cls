/// Given an incoming admission ADT message, adds MSH data and forwards the message to next nodes.
Class HL7QS.ADTRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="HL7QS.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<constraint name="source" value="ADTUpdate"></constraint>
<constraint name="docCategory" value="2.3.1"></constraint>
<constraint name="docName" value="ADT_A01,ADT_A04,ADT_A05,ADT_A08"></constraint>
<when condition="1">
<send transform="HL7QS.AdmitADTtoBillingADT" target="ToBillingADT"></send>
<send transform="" target="ToDatabaseFHIR"></send>
<send transform="HL7QS.ADTtoORU" target="ToLabORU"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
