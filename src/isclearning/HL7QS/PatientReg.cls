/// Patient Registration

/// Persistent PatientReg data class for HL7QS Production

/// Stores PatientID and RegDateTime for incoming ADT messages.

Class isclearning.HL7QS.PatientReg Extends %Persistent
{

Property PatientID As %Numeric;

Property RegDateTime As %DateTime;

}
