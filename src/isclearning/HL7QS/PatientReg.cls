/// Patient Registration
/// Persistent PatientReg data class for HL7QS Production
/// Stores PatientID and RegDateTime for incoming ADT messages.
Class isclearning.HL7QS.PatientReg Extends %Persistent
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
<DataLocation>^isclearning.HL7QS.PatientRegD</DataLocation>
<DefaultData>PatientRegDefaultData</DefaultData>
<IdLocation>^isclearning.HL7QS.PatientRegD</IdLocation>
<IndexLocation>^isclearning.HL7QS.PatientRegI</IndexLocation>
<StreamLocation>^isclearning.HL7QS.PatientRegS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
