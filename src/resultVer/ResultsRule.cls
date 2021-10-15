/// HL7QS Routing Rule
/// Business process for HL7QS Production
/// Given an incoming ADT message, this rule calls three transformations and forwards the message to next nodes.
Class resultVer.ResultsRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="resultVer.Production">
<ruleSet name="RoutingRule2" effectiveBegin="" effectiveEnd="">
<rule name="" disabled="false">
<constraint name="docCategory" value="2.5"></constraint>
<constraint name="docName" value="ORU_R01"></constraint>
<when condition="1">
<foreach propertypath="HL7.{PIDgrpgrp(1).ORCgrp(1).OBXgrp().OBX}">
<when condition="Length(Segment.{AbnormalFlags(1)})&gt;0">
<send transform="" target="ToCriticalResultsFile"></send>
<return></return>
</when>
</foreach>
<send transform="" target="ToNormalResultsFile"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
