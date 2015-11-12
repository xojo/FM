#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  TestAggregateFunctions
		  
		  TestTextFunctions
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub TestAggregateFunctions()
		  // Aggregate Functions
		  Print "Aggregate Functions:"
		  Print "FM.Average: " + Str(FM.Average(5, 10, 20))
		  
		  Print "FM.Min: " + Str(FM.Min(5, 10, 20))
		  Print "FM.Min: " + Str(FM.Min("hello", "first", "last"))
		  
		  Dim d1 As New Xojo.Core.Date(2010, 09, 15, Xojo.Core.TimeZone.Current)
		  Dim d2 As New Xojo.Core.Date(2008, 04, 1, Xojo.Core.TimeZone.Current)
		  Print "FM.Min: " + FM.Min(d1, d2, Xojo.Core.Date.Now).ToText
		  Print ""
		  
		  Print "FM.Max: " + Str(FM.Max(5, 10, 20))
		  Print "FM.Max: " + Str(FM.Max("hello", "first", "last"))
		  Print "FM.Max: " + FM.Max(d1, d2, Xojo.Core.Date.Now).ToText
		  Print ""
		  
		  Print "FM.Sum: " + Str(FM.Sum(5, 10, 20))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestDateFunctions()
		  // Date Functions
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestGetFunctions()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestTextFunctions()
		  Print "Length: " + FM.Length("Hello, world.").ToText
		  Print "Left: " + FM.Left("Hello, world.", 5)
		  Print "LeftWords: " + FM.LeftWords("First Middle Last Suffix", 3)
		  Print "Lower: " + FM.Lower("Hello, world.")
		  Print "Middle: " + FM.Middle("Hello, world.", 1, 4)
		  Print "MiddleWords: " + FM.MiddleWords("First Middle Last Suffix", 3, 2)
		  Print "Proper: " + FM.Proper("john doe")
		  Print "Right: " + FM.Right("Hello, world.", 5)
		  Print "RightWords: " + FM.RightWords("First Middle Last Suffix", 2)
		  Print "Substitute: " + FM.Substitute("Hello, world.", "Hello", "Goodbye")
		  Print "Trim: " + FM.Trim("  This is a test.    ")
		  Print "Upper: " + FM.Upper("john doe")
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
