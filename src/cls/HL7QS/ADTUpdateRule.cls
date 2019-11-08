/// Receives Patient ADT information from Form. Adds Clinic information to ADT message and forwards to router.
Class HL7QS.ADTUpdateRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="HL7QS.Production2">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<when condition="1">
<send transform="HL7QS.ADTtoADTupdateMSH" target="ADTRouter"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
