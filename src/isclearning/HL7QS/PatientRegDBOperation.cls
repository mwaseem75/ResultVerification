/// Patient Registration Database Operation.

/// PatientRegDBOperation. Custom business operation for HL7QS Production.

/// Persists data from PatientRegDBRequest (Patient Registration Database Request) message to the database via an object.

/// Also includes SQL adapter, so the class could be modified to use SQL queries rather than objects.

Class isclearning.HL7QS.PatientRegDBOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method UpdatePatientRegDB(pInput As isclearning.HL7QS.PatientRegDBRequest, Output pOutput As Ens.Response) As %Status
{
	set newEntry =  ##class(isclearning.HL7QS.PatientReg).%New()
	set newEntry.PatientID = pInput.PatientID
	set newEntry.RegDateTime = pInput.RegDateTime
	set sc = newEntry.%Save()	
	quit sc
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="isclearning.HL7QS.PatientRegDBRequest">
        <Method>UpdatePatientRegDB</Method>
    </MapItem>
</MapItems>
}

}
