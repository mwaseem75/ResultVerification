Class HL7QS.PatientRegDBOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method UpdatePatientRegDB(pInput As HL7QS.PatientRegDBRequest, Output pOutput As Ens.Response) As %Status
{
	Quit $$$ERROR($$$NotImplemented)
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="EnsLib.HL7.Message">
        <Method>UpdatePatientRegDB</Method>
    </MapItem>
</MapItems>
}

}
