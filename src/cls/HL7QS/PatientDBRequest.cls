Class HL7QS.PatientRegDBRequest Extends Ens.Request
{
	Property PatientID As %Numeric;
	
	Property RegDateTime As %DateTime;
Storage Default
{
<Data name="PatientRegDBRequestDefaultData">
<Subscript>"PatientRegDBRequest"</Subscript>
<Value name="1">
<Value>PatientID</Value>
</Value>
<Value name="2">
<Value>RegDateTime</Value>
</Value>
</Data>
<DefaultData>PatientRegDBRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}