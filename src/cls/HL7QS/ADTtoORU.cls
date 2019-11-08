Class HL7QS.ADTtoORU Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A01' targetDocType='2.3.1:ORU_R01' create='new' language='objectscript' >
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{MSH:FieldSeparator}' property='target.{MSH:FieldSeparator}' action='set' />
<assign value='source.{MSH:EncodingCharacters}' property='target.{MSH:EncodingCharacters}' action='set' />
<assign value='source.{MSH:DateTimeOfMessage}' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='"ORU_R01"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='source.{PID}' property='target.{PIDgrpgrp(1).PIDgrp.PID}' action='set' />
<assign value='source.{PV1}' property='target.{PIDgrpgrp(1).PIDgrp.PV1grp.PV1}' action='set' />
<assign value='"ST"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(1).OBX:ValueType}' action='set' />
<assign value='1010.1' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(1).OBX:ObservationIdentifier.identifier}' action='set' />
<assign value='"BODY WEIGHT"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:ObservationIdentifier.text}' action='set' />
<assign value='202' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(1).OBX:ObservationValue(1)}' action='set' />
<assign value='"KG"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(1).OBX:Units}' action='set' />
<assign value='"ST"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:ValueType}' action='set' />
<assign value='1010.1' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:ObservationIdentifier.identifier}' action='set' />
<assign value='"HEIGHT"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:ObservationIdentifier.text}' action='set' />
<assign value='202' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:ObservationValue(1)}' action='set' />
<assign value='"M"' property='target.{PIDgrpgrp(1).ORCgrp(1).OBXgrp(2).OBX:Units}' action='set' />
</transform>
}

}
