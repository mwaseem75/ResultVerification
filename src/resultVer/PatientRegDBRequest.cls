/// Patient Registration Database Request
/// PatientRegDBRequest message for HL7QS Production
/// A request message for sending patient registration data to a business operation where it will be saved.
Class resultVer.PatientRegDBRequest Extends Ens.Request
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