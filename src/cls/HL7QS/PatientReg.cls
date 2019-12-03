/// Persistent PatientReg class stores the PatientID and RegDateTime for all incoming ADT messages.
Class HL7QS.PatientReg Extends %Persistent
{

Property PatientID As %Numeric;

Property RegDateTime As %DateTime;

}
