#tag ModuleProtected Module ZipConfig	#tag Note, Name = Documentation				In this module you find a few configuration constants that are used for conditional		compiling, as well as a few global variables.				HaveEinhugurPlugin		------------------				  Default: false				  Set this to "true" if you want to use the Einhugur e-CryptIt plugin for		  compression and extraction (it's a bit faster and does not require the		  zlib1.dll under Windows).				  If you set this to "true", remember to remove the items in the folder		  "RemoveWhenUsingEinhugurPlugin" from this project.				DefaultToUnicode		----------------				  Default: true				  Originally, names in a Zip archive were encoded with the old DOS character set,		  or in special double byte codes in non-roman environments. If you want to		  create or read Zip archives always in that naming convention, set this to "false".				  Nowadays, however, Unicode (UTF-8) is used on OS X to store file names in a		  Zip archive. Windows (XP) still prefers not to use Unicode, though - so you might		  want to set this to false if you primarily work with Windows files in archives.				  This defines only the default, however. You may still pass a specific encoding		  when opening a Zip archive.				EnableZipIt2_2_2_UnicodeSupport		-----------------------------				  Default: true				  When enabled, the lowest bit of the "external permissions" field in the central directory		  is set to 1 upon creating a new entry with a UTF-8 encoded file name. This allows		  ZipIt 2.2.2 to detect the unicode encoding.				  Set this option to false if you do not want the "external permissions" field be		  messed with this way. (It does not seem to have an effect on Apple's Zip tool in		  OS X 10.4, but maybe other tools you might want to support do not like this.)				EmulateOSXRenaming		-------------------				  Default: false				  Defines how to replace illegal file name characters such as "/", "\" and ":".				  When set to false, the default DOS and ZipIt rules are applied:		    When adding an item to an archive, any "/" and "\" in a file name is replaced with "-";		    When reading from an archive, any ":" is replaced by "-".				  When set to true, the OS X (10.4) Zip tool rules are applied:		    When adding an item to an archive, any "/" in a file name is replaced with ":";		    When reading from an archive and running on Mac OS, any ":" is replaced by "/".		    When reading from an archive and running not on Mac OS, any ":" is replaced by "-".				AvoidFSSpecCalls		---------------				  This is meant to avoid the old-style (somewhat deprecated) FSSpec-based File Manager		  calls under Mac OS X, and instead use the more modern FSRef-based calls. The code for		  this is not implemented yet, though, which means you must not set this option to true.			#tag EndNote	#tag Property, Flags = &h0		EmulateOSXRenaming As Boolean = false	#tag EndProperty	#tag Property, Flags = &h0		EnableZipIt2_2_2_UnicodeSupport As Boolean = true	#tag EndProperty	#tag Constant, Name = AvoidFSSpecCalls, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public	#tag EndConstant	#tag Constant, Name = CarbonLibName, Type = String, Dynamic = False, Default = \"Carbon", Scope = Public	#tag EndConstant	#tag Constant, Name = DefaultToUnicode, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public	#tag EndConstant	#tag Constant, Name = ForDebugging_StoreWithoutCompression, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public	#tag EndConstant	#tag Constant, Name = HaveEinhugurPlugin, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public	#tag EndConstant	#tag Constant, Name = PATH_MAX, Type = Double, Dynamic = False, Default = \"2048", Scope = Public	#tag EndConstant	#tag Constant, Name = SystemLib, Type = String, Dynamic = False, Default = \"", Scope = Public		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"System"		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"libc.so"		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"kernel32"	#tag EndConstant	#tag Constant, Name = UseTTsOldPlugins, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public	#tag EndConstant	#tag Structure, Name = LongFileHeader, Flags = &h0		sig as UInt32		  versMadeBy as UInt16		  versForExtract as UInt16		  flags as UInt16		  compressionMode as UInt16		  modTime as UInt16		  modDate as UInt16		  crc as UInt32		  comprSize as UInt32		  origSize as UInt32		  nameLen as UInt16		  extraLen as UInt16		  commentLen as UInt16		  diskNumStart as UInt16		  intFileAttr as UInt16		  extFileAttr as UInt32		relOfsOfHdr as UInt32	#tag EndStructure	#tag Structure, Name = ShortFileHeader, Flags = &h0		sig as UInt32		  versForExtract as UInt16		  flags as UInt16		  compressionMode as UInt16		  modTime as UInt16		  modDate as UInt16		  crc as UInt32		  comprSize as UInt32		  origSize as UInt32		  nameLen as UInt16		extraLen as UInt16	#tag EndStructure	#tag ViewBehavior		#tag ViewProperty			Name="EmulateOSXRenaming"			Group="Behavior"			InitialValue="false"			Type="Boolean"		#tag EndViewProperty		#tag ViewProperty			Name="EnableZipIt2_2_2_UnicodeSupport"			Group="Behavior"			InitialValue="true"			Type="Boolean"		#tag EndViewProperty		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			InitialValue="-2147483648"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty	#tag EndViewBehaviorEnd Module#tag EndModule