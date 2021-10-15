Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

// get reference ranges from TestRanges table

ClassMethod GetReferenceRange(TestCode As %String) As %String
{
    
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   set minRange = $DECIMAL(minRange,3)
   set maxRange = $DECIMAL(maxRange,3)  
    
   Set refRange = minRange _"-"_ maxRange
   //Set refRange = "Test"
   Return refRange
}

// set abnormal flag based on reference ranges

ClassMethod SetAbnormalFlag(TestCode As %String, Result As %Decimal) As %String
{
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   if Result < minRange 
   {
      Return "L"
   }
   if Result > maxRange 
   {
      Return "H"
   }
   Return ""
}

}
