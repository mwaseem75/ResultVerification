Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

ClassMethod GetReferenceRange(TestCode As %String) As %String
{
   Return $g(TestCode)
   $$$TRACE(TestCode) 
   //set testCode = $NUMBER(TestCode)
   IF TestCode = 1113 {
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   set minRange = $DECIMAL(minRange,2)
   set maxRange = $DECIMAL(maxRange,2)  
    
   Set refRange = minRange _"-"_ maxRange
   //Set refRange = "Test"
   Return refRange
   }
   Return "Test"
}

}
