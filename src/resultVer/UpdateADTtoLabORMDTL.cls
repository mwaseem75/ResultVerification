Class resultVer.UpdateADTtoLabORMDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ORM_O01' create='new' language='objectscript' >
<assign value='source.{MSH}' property='target.{MSH}' action='set' />
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{MSH:DateTimeOfMessage}' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='"Lab"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='"ORM_O01"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='source.{PID}' property='target.{PIDgrp.PID}' action='set' />
<assign value='source.{PD1}' property='target.{PIDgrp.PD1}' action='set' />
<assign value='1234567' property='target.{ORCgrp(1).ORC:PlacerGroupNumber.entityidentifier}' action='set' />
<assign value='"QuickStart Clinic"' property='target.{ORCgrp(1).ORC:PlacerGroupNumber.namespaceID}' action='set' />
<assign value='29463-7' property='target.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:UniversalServiceID.identifier}' action='set' />
<assign value='"Body Weight"' property='target.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:UniversalServiceID.text}' action='set' />
<assign value='1234567' property='target.{ORCgrp(2).ORC:PlacerGroupNumber.entityidentifier}' action='set' />
<assign value='"QuickStart Clinic"' property='target.{ORCgrp(2).ORC:PlacerGroupNumber.namespaceID}' action='set' />
<assign value='"Body Height"' property='target.{ORCgrp(2).OBRuniongrp.OBRunion.OBR:UniversalServiceID.identifier}' action='set' />
<assign value='8302-2' property='target.{ORCgrp(2).OBRuniongrp.OBRunion.OBR:UniversalServiceID.text}' action='set' />
</transform>
}

}
