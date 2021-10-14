Class resultVer.UpdateReferenceRangesDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.5:ORU_R01' targetDocType='2.5:ORU_R01' create='copy' language='objectscript' >
<foreach property='source.{PIDgrpgrp()}' key='k1' >
<foreach property='source.{PIDgrpgrp(k1).ORCgrp()}' key='k2' >
<foreach property='source.{PIDgrpgrp(k1).ORCgrp(k2).OBXgrp()}' key='k3' >
<assign value='##class(resultVer.Utility).GetReferenceRange(source.{PIDgrpgrp(k1).ORCgrp(k2).OBXgrp(k3).OBX:ObservationIdentifier.Identifier})' property='target.{PIDgrpgrp(k1).ORCgrp(k2).OBXgrp(k3).OBX:ReferencesRange}' action='set' />
</foreach>
</foreach>
</foreach>
</transform>
}

}
