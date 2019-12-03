Class HL7QS.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="HL7QS.Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="fromRegFile" Category="ClinicReg" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Service." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">fromRegADTUpdate</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/iris/app/shared/data/archive/</Setting>
    <Setting Target="Adapter" Name="FilePath">/iris/app/shared/data/registration/</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.3.1</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.txt</Setting>
  </Item>
  <Item Name="fromRegADTUpdate" Category="ClinicReg" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="This handles message routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Validation"></Setting>
    <Setting Target="Host" Name="BusinessRuleName">HL7QS.UpdateRule</Setting>
    <Setting Target="Host" Name="BadMessageHandler">BadMessageHandler</Setting>
  </Item>
  <Item Name="toBillingFile" Category="ClinicReg" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Operation." LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/iris/app/shared/data/billing/</Setting>
    <Setting Target="Host" Name="Filename">billing_%f</Setting>
  </Item>
  <Item Name="toLabFile" Category="ClinicReg" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Operation." LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/iris/app/shared/data/lab/</Setting>
    <Setting Target="Host" Name="Filename">lab_%f</Setting>
  </Item>
  <Item Name="HL7QS.PatientRegDBOperation" Category="ClinicReg" ClassName="HL7QS.PatientRegDBOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="fromUpdateADTRoute" Category="ClinicReg" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="This handles message routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Validation"></Setting>
    <Setting Target="Host" Name="BusinessRuleName">HL7QS.RoutingRule</Setting>
    <Setting Target="Host" Name="BadMessageHandler">BadMessageHandler</Setting>
  </Item>
</Production>
}

}
