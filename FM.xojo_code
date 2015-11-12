#tag Module
Protected Module FM
	#tag Method, Flags = &h1
		Protected Function Average(ParamArray values As Double) As Double
		  Dim sum As Double
		  For Each v As Integer In values
		    sum = sum + v
		  Next
		  
		  Return sum / (values.UBound + 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Base64Decode(value As Text) As Text
		  Return DecodeBase64(value).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Base64Encode(value As Text) As Text
		  Return EncodeBase64(value).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Ceiling(value As Double) As Double
		  Return Xojo.Math.Ceil(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Char(codepoint As Integer) As Text
		  Return Text.FromUnicodeCodepoint(codepoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Code(t As Text) As UInt32()
		  Dim codepoints() As UInt32
		  
		  For Each codepoint As UInt32 In t.Codepoints
		    codepoints.Append(codepoint)
		  Next
		  
		  Return codepoints
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Date(month As Integer, day As Integer, year As Integer) As Xojo.Core.Date
		  Dim d As New Xojo.Core.Date(year, month, day, Xojo.Core.TimeZone.Current)
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Day(d As xojo.Core.Date) As Integer
		  If d Is Nil Then Return -1
		  
		  Return d.Day
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DayName(d As xojo.Core.Date) As Text
		  If d Is Nil Then Return "n/a"
		  
		  Select Case d.DayOfWeek
		  Case 1
		    Return "Sunday"
		  Case 2
		    Return "Monday"
		  Case 3
		    Return "Tuesday"
		  Case 4
		    Return "Wednesday"
		  Case 5
		    Return "Thursday"
		  Case 6
		    Return "Friday"
		  Case 7
		    Return "Saturday"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DayOfWeek(d As Xojo.Core.Date) As Integer
		  If d Is Nil Then Return -1
		  
		  Return d.DayOfWeek
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DayOfYear(d As xojo.Core.Date) As Integer
		  If d Is Nil Then Return -1
		  
		  Return d.DayOfYear
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Degrees(radians As Double) As Double
		  Dim d As Double
		  d = (180 * radians) / Pi
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Exact(original As Text, comparison As Text) As Integer
		  Return 1 - Xojo.Math.Abs(original.Compare(comparison, Text.CompareCaseSensitive))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Filter(original As Text, filter As Text) As Text
		  // Filter(“(408)555-1212”;“0123456789”) returns 4085551212.
		  // Filter(“AaBb”;“AB”) returns AB.
		  
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FilterValues(original As Text, filter As Text) As Text
		  // FilterValues("Plaid¶Canvas¶Suitcase";"Plaid¶Canvas") returns
		  // Plaid
		  
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FV(payment As Currency, interestRate As Currency, periods As Integer) As Currency
		  #Pragma Warning "Not Implemented"
		  
		  // fv = payment * ((1 + interestRate)^periods - 1) / interestRate
		  
		  // also see NPV, PMT, PV
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetApplicationArchitecture() As Text
		  If TargetARM Then
		    Return "arm7"
		  ElseIf Target64Bit Then
		    Return "x86_64"
		  ElseIf Target32Bit Then
		    Return "i386"
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetAsDate(dateValue As Text) As Xojo.Core.Date
		  Try
		    Dim myDate As Xojo.Core.Date = Xojo.Core.Date.FromText(dateValue)
		    Return myDate
		  Catch e As Xojo.Core.BadDataException
		    Return Nil
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetAsNumber(t As Text)
		  #Pragma Warning "Not Implemented"
		  
		  // GetAsNumber("FY98") returns 98.
		  // GetAsNumber("$1,254.50") returns 1254.5.
		  // GetAsNumber("2 + 2") returns 22.
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetAsText(data As Auto)
		  #Pragma Warning "Not Implemented"
		  
		  // Check its type and convert to text usign appropriate method
		  // Date, Numbers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetAsURLEncoded(url As Text) As Text
		  Return EncodeURLComponent(url).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Int(value As Double) As Integer
		  Return CType(value, Integer)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Left(t As Text, numChars As Integer) As Text
		  Try
		    Return t.Left(numChars)
		  Catch e As OutOfBoundsException
		    Return t
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LeftValues(values() As Text, numValues As Integer) As Text()
		  #Pragma Warning "Change to use space-delimited text rather than array"
		  
		  Dim newValues() As Text
		  
		  For i As Integer = 0 To numValues
		    If i <= values.Ubound Then
		      newValues.Append(values(i))
		    End If
		  Next
		  
		  Return newValues
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LeftWords(words As Text, numWords As Integer) As Text
		  Dim wordArray() As Text = words.Split(" ")
		  
		  ReDim wordArray(numWords - 1)
		  
		  Return Text.Join(wordArray, " ")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Length(t As Text) As Integer
		  Return t.Length
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Ln(value As Double) As Double
		  Return Xojo.Math.Log(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Lower(t As Text) As Text
		  Return t.Lowercase
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Max(ParamArray values As Double) As Double
		  values.Sort
		  
		  Return values(values.UBound)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Max(ParamArray values As Text) As Text
		  values.Sort
		  
		  Return values(values.UBound)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Max(ParamArray values As Xojo.Core.Date) As Xojo.Core.Date
		  Dim seconds() As Double
		  
		  For Each d As Xojo.Core.Date In values
		    seconds.Append(d.SecondsFrom1970)
		  Next
		  
		  seconds.Sort
		  
		  Dim maxDate As New Xojo.Core.Date(seconds(seconds.UBound), Xojo.Core.TimeZone.Current)
		  
		  Return maxDate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Middle(t As Text, start As Integer, numChars As Integer) As Text
		  Try
		    Return t.Mid(start, numChars)
		  Catch e As OutOfBoundsException
		    Return ""
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MiddleValues(original As Text, start As Integer, numValues As Integer) As Text
		  #Pragma Warning "Not Implemented"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MiddleWords(words As Text, start As Integer, numWords As Integer) As Text
		  Dim wordArray() As Text = words.Split(" ")
		  
		  Dim wordText As Text
		  For i As Integer = start - 1 To start + numWords - 2
		    wordText = wordText + " " + wordArray(i)
		  Next
		  
		  Return wordText.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Min(ParamArray values As Double) As Double
		  values.Sort
		  
		  Return values(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Min(ParamArray values As Text) As Text
		  values.Sort
		  
		  Return values(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Min(ParamArray values As Xojo.Core.Date) As Xojo.Core.Date
		  Dim seconds() As Double
		  
		  For Each d As Xojo.Core.Date In values
		    seconds.Append(d.SecondsFrom1970)
		  Next
		  
		  seconds.Sort
		  
		  Dim minDate As New Xojo.Core.Date(seconds(0), Xojo.Core.TimeZone.Current)
		  
		  Return minDate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Month(d As xojo.Core.Date) As Integer
		  If d Is Nil Then Return -1
		  
		  Return d.Month
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MonthName(d As xojo.Core.Date) As Text
		  If d Is Nil Then Return "n/a"
		  
		  Select Case d.Month
		  Case 1
		    Return "January"
		  Case 2
		    Return "February"
		  Case 3
		    Return "March"
		  Case 4
		    Return "April"
		  Case 5
		    Return "May"
		  Case 6
		    Return "June"
		  Case 7
		    Return "July"
		  Case 8
		    Return "August"
		  Case 9
		    Return "September"
		  Case 10
		    Return "October"
		  Case 11
		    Return "November"
		  Case 12
		    Return "December"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PatternCount(t As Text, searchText As Text) As Integer
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Position(original As Text, search As Text, start As Integer = 1, occurance As Integer = 1) As Integer
		  If occurance = 1 Then
		    Return original.IndexOf(start - 1, search) + 1
		  Else
		    // Repeat to find the specified occurance
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Proper(t As Text) As Text
		  Return t.TitleCase
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Quote(original As Text) As Text
		  Return """" + original + """"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Radians(degrees As Double) As Double
		  Dim r As Double
		  r = (Pi * degrees) / 180
		  Return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function Random() As Double
		  Return Rnd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Replace(original As Text, start As Integer, numChars As Integer, replacement As Text) As Text
		  #Pragma Warning "Not Implemented"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Right(t As Text, numChars As Integer) As Text
		  Try
		    Return t.Right(numChars)
		  Catch e As OutOfBoundsException
		    Return t
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RightValues(original As Text, numValues As Integer) As Text
		  #Pragma Warning "Not Implemented"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RightWords(words As Text, numWords As Integer) As Text
		  Dim wordArray() As Text = words.Split(" ")
		  
		  Dim wordText As Text
		  For i As Integer = wordArray.Ubound - (numWords - 1) To wordArray.Ubound
		    wordText = wordText + " " + wordArray(i)
		  Next
		  
		  Return wordText.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Substitute(t As Text, searchText As Text, replaceText As Text) As Text
		  Return t.ReplaceAll(searchText, replaceText)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Sum(ParamArray values As Double) As Double
		  Dim sum As Double
		  
		  For Each d As Double In values
		    sum = sum + d
		  Next
		  
		  Return sum
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Sub TextColor(ctrl As RectControl, c As Color)
		  If ctrl IsA Label Then
		    Label(ctrl).TextColor = c
		  ElseIf ctrl IsA TextField Then
		    TextField(ctrl).TextColor = c
		  ElseIf ctrl IsA TextArea Then
		    TextArea(ctrl).TextColor = c
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Trim(t As Text) As Text
		  Return t.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TrimAll(original As Text, trimSpaces As Boolean, trimType As Integer) As Text
		  #Pragma Warning "Not Implemented"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Truncate(value As Double, precision As Integer) As Double
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Upper(t As Text) As Text
		  Return t.Uppercase
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ValueCount(original As Text) As Integer
		  #Pragma Warning "Not Implemented"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WeekOfYear(d As Xojo.Core.Date) As Integer
		  If d Is Nil Then Return -1
		  Dim isoDayOfWeek As Integer = d.DayOfWeek - 1
		  If isoDayOfWeek < 1 Then isoDayOfWeek = 7
		  
		  // https://en.wikipedia.org/wiki/ISO_week_date#Calculation
		  Dim week As Integer
		  week = (d.DayOfYear - isoDayOfWeek + 10) / 7
		  
		  Return week
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WeekOfYearFiscal(d As Xojo.Core.Date, startingDay As Integer)
		  #Pragma Warning "Not Implemented"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WordCount(t As Text) As Integer
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod


	#tag Constant, Name = Pi, Type = Double, Dynamic = False, Default = \"3.1415926535897932", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
