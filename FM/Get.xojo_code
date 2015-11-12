#tag Module
Protected Module Get
	#tag Method, Flags = &h1
		Protected Function ApplicationVersion() As Text
		  Return XojoVersionString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentDate() As Xojo.Core.Date
		  Return Xojo.Core.Date.Now
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentTime() As Xojo.Core.Date
		  Return Xojo.Core.Date.Now
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentTimestamp() As Xojo.Core.Date
		  Return Xojo.Core.Date.Now
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function DesktopPath() As Xojo.IO.FolderItem
		  Dim f As New Xojo.IO.FolderItem(SpecialFolder.Desktop.NativePath.ToText)
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Device() As Integer
		  If TargetMacOS Then
		    Return 1
		  ElseIf TargetWin32 Then
		    Return 2
		  ElseIf TargetiOS Then
		    // Return iPhone by default
		    Return 4
		  Else
		    Return 0
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DocumentsPath() As Xojo.IO.FolderItem
		  Return Xojo.IO.SpecialFolder.Documents
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DocumentsPathListing() As Xojo.IO.FolderItem()
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PreferencesPath() As Xojo.IO.FolderItem
		  Dim f As New Xojo.IO.FolderItem(SpecialFolder.Preferences.NativePath.ToText)
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function ScreenHeight() As Integer
		  #If TargetiOS Then
		  #ElseIf TargetDesktop Then
		    Return Screen(0).Height
		  #ElseIf TargetWeb Then
		    Return Session.PageAtIndex(0).Height
		  #Endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ScreenScaleFactor() As Double
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ScreenWidth() As Integer
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SystemDrive() As Xojo.IO.FolderItem
		  Dim f As New Xojo.IO.FolderItem(Volume(0).NativePath.ToText)
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SystemPlatform() As Integer
		  If TargetiOS Then
		    Return 3
		  ElseIf TargetMacOS Then
		    Return 1
		  ElseIf TargetWin32 Then
		    Return -2
		  ElseIf TargetWeb Then
		    Return 4
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SystemVersion() As Text
		  #Pragma Warning "Not Implemented"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TemporaryPath() As Xojo.IO.FolderItem
		  Dim f As New Xojo.IO.FolderItem(SpecialFolder.Temporary.NativePath.ToText)
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowContentHeight(w As Window) As Integer
		  Return w.Bounds.Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowContentWidth(w As Window) As Integer
		  Return w.Bounds.Width
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowHeight(w As Window) As Integer
		  Return w.Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowLeft(w As Window) As Integer
		  Return w.Left
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowTop(w As Window) As Integer
		  Return w.Top
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Protected Function WindowWidth(w As Window) As Integer
		  Return w.Width
		End Function
	#tag EndMethod


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
