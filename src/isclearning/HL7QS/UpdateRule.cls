/// HL7QS Update Rule

/// Business Process for HL7 Quick Start

/// Given an incoming ADT message, this rule calls a data transformation and forwards the message to the message router.

Class isclearning.HL7QS.UpdateRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="isclearning.HL7QS.Production">
<ruleSet name="UpdateRule" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<constraint name="source" value="fromRegFile"></constraint>
<constraint name="docCategory" value="2.3.1"></constraint>
<constraint name="docName" value="ADT_A01"></constraint>
<when condition="1">
<send transform="isclearning.HL7QS.RegADTtoUpdateADTDTL" target="fromUpdateADTRoute"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
