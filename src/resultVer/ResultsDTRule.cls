/// HL7QS Routing Rule
/// Business process for HL7QS Production
/// Given an incoming ADT message, this rule calls three transformations and forwards the message to next nodes.
Class resultVer.ResultsDTRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="resultVer.Production">
<ruleSet name="RoutingRule" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<constraint name="source" value="FromResultsFile"></constraint>
<constraint name="docCategory" value="2.5"></constraint>
<constraint name="docName" value="ORU_R01"></constraint>
<when condition="1">
<send transform="resultVer.UpdateReferenceRangesDTL" target="ResultsRouter"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}