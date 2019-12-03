Class HL7QS.UpdateADTtoLabORUDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ORU_R01' create='new' language='objectscript' >
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{MSH:DateTimeOfMessage}' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='"Lab"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='"ORU_R01"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='source.{PID}' property='target.{PIDgrpgrp(1).PIDgrp.PID}' action='set' />
<assign value='source.{PV1}' property='target.{PIDgrpgrp(1).PIDgrp.PV1grp.PV1}' action='set' />
<assign value='29463-7' property='target.{PIDgrpgrp(1).ORCgrp(1).OBR:UniversalServiceID.identifier}' action='set' />
<assign value='"Body Weight"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBR:UniversalServiceID.text}' action='set' />
<assign value='" "' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(1).OBX:ObservationValue(1)}' action='set' />
<assign value='8302-2' property='target.{PIDgrpgrp(1).ORCgrp(2).OBR:UniversalServiceID.identifier}' action='set' />
<assign value='"Body Height"' property='target.{PIDgrpgrp(1).ORCgrp(2).OBR:UniversalServiceID.text}' action='set' />
<assign value='" "' property='target.{PIDgrpgrp(1).ORCgrp(2).OBXgrp(1).OBX:ObservationValue(1)}' action='set' />
</transform>
}

}
