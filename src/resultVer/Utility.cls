Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

ClassMethod GetReferenceRange(TestCode As %String) As %String
{
   //return TestCode
   //Set tt = $NUMBER(TestCode)
   
   //Set person = ##class(resultVer.TestRanges).%OpenId(TestCode)
   //Set mr = person.MinRange
   //Set mrr = person.MaxRange
   //set minRange = $DECIMAL(mr,2)
   //set maxRange = $DECIMAL(mrr,2)  
   
   //Return $g(TestCode)
   //$$$TRACE(TestCode) 
   //set testCode = $NUMBER(TestCode)
   
   &sql(SELECT MinRange, MaxRange into :minRange,:maxRange 
   FROM resultVer.TestRanges where TestCode = :TestCode)
   set minRange = $DECIMAL(minRange,3)
   set maxRange = $DECIMAL(maxRange,3)  
    
   Set refRange = minRange _"-"_ maxRange
   //Set refRange = "Test"
   Return refRange
}

}
