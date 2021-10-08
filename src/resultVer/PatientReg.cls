/// Patient Registration
/// Persistent PatientReg data class for HL7QS Production
/// Stores PatientID and RegDateTime for incoming ADT messages.
Class resultVer.PatientReg Extends %Persistent
{

Property PatientID As %Numeric;

Property RegDateTime As %DateTime;

Storage Default
{
<Data name="PatientRegDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PatientID</Value>
</Value>
<Value name="3">
<Value>RegDateTime</Value>
</Value>
</Data>
<DataLocation>^resultVer.PatientRegD</DataLocation>
<DefaultData>PatientRegDefaultData</DefaultData>
<IdLocation>^resultVer.PatientRegD</IdLocation>
<IndexLocation>^resultVer.PatientRegI</IndexLocation>
<StreamLocation>^resultVer.PatientRegS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
