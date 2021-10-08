Class resultVer.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="resultVer.Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="fromResultFile" Category="ClinicReg" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Service." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">fromRegADTUpdate</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/iris/app/shared/data/archive/</Setting>
    <Setting Target="Adapter" Name="FilePath">/iris/app/shared/data/results/</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.3.1</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.txt</Setting>
  </Item>
  
  
</Production>
}

}
