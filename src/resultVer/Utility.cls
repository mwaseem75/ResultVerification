Class resultVer.Utility Extends Ens.Rule.FunctionSet
{

/// Description
ClassMethod GetReferenceRange(TestCode As %String) As %String
{

    set ref=##class(resultVer.TestRanges).%OpenId(1)
    set minRange = ref.MinRange
    set maxRange = ref.MaxRange
    Set sc =TestCode
    // do something




    Set sc = sc_"W"
    Return sc
}

}
