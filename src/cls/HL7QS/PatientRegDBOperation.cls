/// PatientRegDBOperation for HL7QS Production. Saves info from PatientRegDBRequest to database via ObjectScript objects. Also contains SQL adapter.
Class HL7QS.PatientRegDBOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method UpdatePatientRegDB(pInput As HL7QS.PatientRegDBRequest, Output pOutput As Ens.Response) As %Status
{
	set newEntry =  ##class(HL7QS.PatientReg).%New()
	set newEntry.PatientID = pInput.PatientID
	set newEntry.RegDateTime = pInput.RegDateTime
	set sc = newEntry.%Save()	
	quit sc
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="HL7QS.PatientRegDBRequest">
        <Method>UpdatePatientRegDB</Method>
    </MapItem>
</MapItems>
}

}
