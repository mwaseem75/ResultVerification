Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

// Get reference ranges from TestRanges table against test code

ClassMethod GetReferenceRange(TestCode As %String) As %String
{
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   IF SQLCODE > 0
   { 
   set minRange = $DECIMAL(minRange,3)
   set maxRange = $DECIMAL(maxRange,3)  
   Set refRange = minRange _"-"_ maxRange
   }
   else
   {
      Set refRange = ""
   }
   //Set refRange = "Test"
   Return refRange
}

// Get Abnormal flag based on Test Code and Resutl

ClassMethod SetAbnormalFlag(TestCode As %String, Result As %Decimal) As %String
{
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   IF SQLCODE > 0
   {
   //Set Flag to L in case of Low Range
   if Result < minRange 
   {
      Return "L"
   }
   //Set Flag to H in case of High Range
   elseif Result > maxRange 
   {
      Return "H"
   }
   }
   //Return empty strign in case of normal result
   Return ""
}

}
