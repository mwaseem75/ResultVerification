Class resultVer.TestRanges Extends %Library.Persistent [ Not Abstract, DdlAllowed, Not LegacyInstanceContext, ProcedureBlock ]
{

Property TestCode As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 2 ];

Property MinRange As %Library.Double [ SqlColumnNumber = 3 ];

Property MaxRange As %Library.Double [ SqlColumnNumber = 4 ];

ClassMethod Import(pSelectMode As %Library.Integer = {$zu(115,5)}, pFileName As %Library.String(MAXLEN=""), pDelimiter As %String = ",", pQuote As %String = """", pHeaders As %Integer = 0, ByRef pRecordCount As %Integer) As %Library.Integer [ SqlProc ]
{
	set tStatementId = $SYSTEM.Util.CreateGUID(), tCounter = 0, pRecordCount = 0
	set tPreparedStatement = ##class(%SQL.DynamicStatement).Prepare(tStatementId,..#ROWTYPE,pDelimiter,pQuote,,,0,"CSV")
	if $Isobject(tPreparedStatement) {
		set tImporter = tPreparedStatement.%New(tPreparedStatement,,pFileName,pDelimiter,pQuote)
		if $Isobject(tImporter) {
			do ..%DeleteExtent(,.tDeleted,.tInstances,1)
				// burn the column headers
			for tPtr = 1:1:pHeaders { do tImporter.%Next() }
			while tImporter.%Next() {
				set tMe = ..%New()
				if 'pSelectMode {
					set tMe.TestCode = tImporter.%GetData(1)
					set tMe.MinRange = tImporter.%GetData(2)
					set tMe.MaxRange = tImporter.%GetData(3)
				}
				elseif pSelectMode = 1 {
					set tMe.TestCode = $s('$system.CLS.IsMthd("TestCodeOdbcToLogical"):tImporter.%GetData(1),1:tMe.TestCodeOdbcToLogical(tImporter.%GetData(1)))
					set tMe.MinRange = $s('$system.CLS.IsMthd("MinRangeOdbcToLogical"):tImporter.%GetData(2),1:tMe.MinRangeOdbcToLogical(tImporter.%GetData(2)))
					set tMe.MaxRange = $s('$system.CLS.IsMthd("MaxRangeOdbcToLogical"):tImporter.%GetData(3),1:tMe.MaxRangeOdbcToLogical(tImporter.%GetData(3)))
				}
				elseif pSelectMode = 2 {
					set tMe.TestCode = $s('$system.CLS.IsMthd("TestCodeDisplayToLogical"):tImporter.%GetData(1),1:tMe.TestCodeDisplayToLogical(tImporter.%GetData(1)))
					set tMe.MinRange = $s('$system.CLS.IsMthd("MinRangeDisplayToLogical"):tImporter.%GetData(2),1:tMe.MinRangeDisplayToLogical(tImporter.%GetData(2)))
					set tMe.MaxRange = $s('$system.CLS.IsMthd("MaxRangeDisplayToLogical"):tImporter.%GetData(3),1:tMe.MaxRangeDisplayToLogical(tImporter.%GetData(3)))
				}
				set tStatus = tMe.%Save()
				if $$$ISOK(tStatus) { set tCounter = tCounter + 1 }
			}
		}
	}
	set %sqlcontext.%SQLCODE = 0
	set %sqlcontext.%ROWCOUNT = tCounter
	set pRecordCount = tCounter
	quit tCounter
}

Parameter ROWTYPE = "TestCode INTEGER,MinRange DOUBLE,MaxRange DOUBLE";

Storage Default
{
<Data name="TestRangesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TestCode</Value>
</Value>
<Value name="3">
<Value>MinRange</Value>
</Value>
<Value name="4">
<Value>MaxRange</Value>
</Value>
</Data>
<DataLocation>^resultVer.TestRangesD</DataLocation>
<DefaultData>TestRangesDefaultData</DefaultData>
<IdLocation>^resultVer.TestRangesD</IdLocation>
<IndexLocation>^resultVer.TestRangesI</IndexLocation>
<StreamLocation>^resultVer.TestRangesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
