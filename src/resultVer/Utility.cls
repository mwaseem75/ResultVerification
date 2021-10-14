Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

/// Description
Query ReferenceRange(TestCode As %String) As %SQLQuery
{
SELECT MinRange,MaxRange FROM TestRanges
 WHERE (TestCode = :TestCode)
}

ClassMethod GetReferenceRange(TestCode As %String) As %String
{

    &sql(SELECT round(MinRange,2), round(MaxRange,2) into :minRange,:maxRange 
    FROM resultVer.TestRanges where TestCode = :TestCode)
    set minRange = $DECIMAL(minRange,2)
    set maxRange = $DECIMAL(maxRange,2)  
    
    Set refRange = minRange _"-"_ maxRange
   
    Return refRange
}

}
