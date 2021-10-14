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


    &sql(SELECT MinRange INTO :name FROM TestRanges where TestCode = 1234)

       
    //set ref=##class(resultVer.TestRanges).%OpenId(1)
    //set abc = ##class(resultVer.TestRanges).where 
   &sql(select MinRange into :id from resultVer.TestRanges where TestCode = 1234)

    set refernceRage = ##class(%ResultSet).%New("resultVer.Utility.ReferenceRange")
    set rsStatus = refernceRage.Execute(TestCode)
    if rsStatus=$$$OK{
        while refernceRage.Next() {
            set minRange = refernceRage.Get("MinRange")
            set maxRange = refernceRage.Get("MaxRange")

        }
    }
    do refernceRage.Close()

    Set sc =minRange _'-'_maxRange
   
    Return sc
}

}
