Class HL7QS.PatientReg Extends %Persistent
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
<DataLocation>^HL7QS.PatientRegD</DataLocation>
<DefaultData>PatientRegDefaultData</DefaultData>
<IdLocation>^HL7QS.PatientRegD</IdLocation>
<IndexLocation>^HL7QS.PatientRegI</IndexLocation>
<StreamLocation>^HL7QS.PatientRegS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
