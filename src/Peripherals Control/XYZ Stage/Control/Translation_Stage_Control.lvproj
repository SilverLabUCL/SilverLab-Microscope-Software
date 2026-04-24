<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Generic Comms" Type="Folder" URL="../../../Generic Comms">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Scientifica XYZ Gen1" Type="Folder" URL="../Scientifica XYZ Gen1">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Serial Comms" Type="Folder" URL="../../../Serial Comms">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Supporting VIs" Type="Folder" URL="../Supporting VIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="XYZ Stage Control" Type="Folder" URL="../XYZ Stage Control">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Tester_oop.vi" Type="VI" URL="../Tester_oop.vi"/>
		<Item Name="TranslationStageClassStructure.lvlib" Type="Library" URL="../TranslationStageClassStructure.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="Boolean Trigger__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/boolean/boolean.llb/Boolean Trigger__ogtk.vi"/>
				<Item Name="Convert DBL to string-decimal precision.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/Conversion/Convert DBL to string-decimal precision.vi"/>
				<Item Name="Convert string to DBL or DBL to string (simple).vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/Conversion/Convert string to DBL or DBL to string (simple).vi"/>
				<Item Name="Current VI&apos;s Path__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Current VI&apos;s Path__ogtk.vi"/>
				<Item Name="Current VIs Reference__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Reference__ogtk.vi"/>
				<Item Name="Detect_Application_Kind.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/Application/Detect_Application_Kind.vi"/>
				<Item Name="Make Necessary Directories.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/Files &amp; paths/Make Necessary Directories.vi"/>
				<Item Name="Remove zeros from the end of fractional string number.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/String/Remove zeros from the end of fractional string number.vi"/>
				<Item Name="Search or Split String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Search or Split String__ogtk.vi"/>
				<Item Name="Set pane to its origin.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/UI/Set pane to its origin.vi"/>
				<Item Name="String-Remove trailing zeroes.vi" Type="VI" URL="/&lt;userlib&gt;/My Palettes.lib/String/String-Remove trailing zeroes.vi"/>
				<Item Name="Trim Whitespace (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String Array)__ogtk.vi"/>
				<Item Name="Trim Whitespace (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String)__ogtk.vi"/>
				<Item Name="Trim Whitespace__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Acquire Input Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Acquire Input Data.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Input Device.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Close Input Device.vi"/>
				<Item Name="closeJoystick.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeJoystick.vi"/>
				<Item Name="closeKeyboard.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeKeyboard.vi"/>
				<Item Name="closeMouse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeMouse.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrorDescriptions.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/ErrorDescriptions.vi"/>
				<Item Name="errorList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/errorList.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Initialize Mouse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Initialize Mouse.vi"/>
				<Item Name="joystickAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/joystickAcquire.vi"/>
				<Item Name="keyboardAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/keyboardAcquire.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="mouseAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/mouseAcquire.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="AOL Z cal process refs.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/AOL Z cal process refs.ctl"/>
			<Item Name="Cal channel.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/Cal channel.ctl"/>
			<Item Name="Cal mode.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/Cal mode.ctl"/>
			<Item Name="Cal points.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/Cal points.ctl"/>
			<Item Name="Calculate window size.vi" Type="VI" URL="../../../../User Interface/Window position management/Calculate window size.vi"/>
			<Item Name="Config files dialogue Window.vi" Type="VI" URL="../../../../Configuration code/Config files dialogue Window.vi"/>
			<Item Name="Config Folder Path-Switch.vi" Type="VI" URL="../../../../User Interface/Initialisation/Config Folder Path-Switch.vi"/>
			<Item Name="Current Calibration Parameters.ctl" Type="VI" URL="../../../../Configuration code/Calibration/ToolBox/TypeDefs/Current Calibration Parameters.ctl"/>
			<Item Name="Dynamic call-Error message window.vi" Type="VI" URL="../../../../User Interface/Dynamic calls/Dynamic call-Error message window.vi"/>
			<Item Name="Error window pos FGV states.ctl" Type="VI" URL="../../../../miscelaneous/Error window positioning/Error window pos FGV states.ctl"/>
			<Item Name="fgv_Count error windows.vi" Type="VI" URL="../../../../miscelaneous/fgv_Count error windows.vi"/>
			<Item Name="Fixed strings.ctl" Type="VI" URL="../../../../User Interface/Visualisation/Functional Imaging Viewer/Typedefs/Fixed strings.ctl"/>
			<Item Name="General Globals.vi" Type="VI" URL="../../../../Global Variables/General Globals.vi"/>
			<Item Name="General Scan Parameters.ctl" Type="VI" URL="../../../../Configuration code/Calibration/ToolBox/TypeDefs/General Scan Parameters.ctl"/>
			<Item Name="Generate dynamically called windows folder path.vi" Type="VI" URL="../../../../User Interface/Dynamic calls/Generate dynamically called windows folder path.vi"/>
			<Item Name="Get Config File or Folder Path.vi" Type="VI" URL="../../../../Configuration code/Get Config File or Folder Path.vi"/>
			<Item Name="Get mouse coordinates.vi" Type="VI" URL="../../../../miscelaneous/Get mouse coordinates.vi"/>
			<Item Name="gl_Calibration globals.vi" Type="VI" URL="../../../../Configuration code/Calibration/Globals/gl_Calibration globals.vi"/>
			<Item Name="gl_UsrProfiles globals.vi" Type="VI" URL="../../../../User Interface/User profiles code/Globals/gl_UsrProfiles globals.vi"/>
			<Item Name="Initialise Config Folder Path.vi" Type="VI" URL="../../../../User Interface/Initialisation/Initialise Config Folder Path.vi"/>
			<Item Name="Load_Window_Bounds.vi" Type="VI" URL="../../../../User Interface/Window position management/Load_Window_Bounds.vi"/>
			<Item Name="lvinput.dll" Type="Document" URL="/&lt;resource&gt;/lvinput.dll"/>
			<Item Name="Parameter Sweep Steps.ctl" Type="VI" URL="../../../../Typedefs/Parameter Sweep Steps.ctl"/>
			<Item Name="Pockels cal process refs.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/Pockels cal process refs.ctl"/>
			<Item Name="Position error window.vi" Type="VI" URL="../../../../miscelaneous/Error window positioning/Position error window.vi"/>
			<Item Name="Pre-AOL Z wizard refs.ctl" Type="VI" URL="../../../../Configuration code/Calibration/AOL Z/Typedefs/Pre-AOL Z wizard refs.ctl"/>
			<Item Name="Save_Windows_Bounds.vi" Type="VI" URL="../../../../User Interface/Window position management/Save_Windows_Bounds.vi"/>
			<Item Name="Set to mouse position.vi" Type="VI" URL="../../../../User Interface/Window position management/Set to mouse position.vi"/>
			<Item Name="Shutter state.ctl" Type="VI" URL="../../../Shutter/Typedefs/Shutter state.ctl"/>
			<Item Name="Source_File and folder names.vi" Type="VI" URL="../../../../User Interface/Visualisation/Functional Imaging Viewer/SubVIs/Source_File and folder names.vi"/>
			<Item Name="Top level VI states.ctl" Type="VI" URL="../../../../Typedefs/Top level VI states.ctl"/>
			<Item Name="TranslationStageControlInfo.ctl" Type="VI" URL="../typedefs/TranslationStageControlInfo.ctl"/>
			<Item Name="User login window refs.ctl" Type="VI" URL="../../../../User Interface/User profiles code/Typedefs/User login window refs.ctl"/>
			<Item Name="User message window-positioning management FG.vi" Type="VI" URL="../../../../User Interface/Window position management/User message window-positioning management FG.vi"/>
			<Item Name="UsrProfiles-Obtain default profile.vi" Type="VI" URL="../../../../User Interface/User profiles code/UsrProfiles-Obtain default profile.vi"/>
			<Item Name="UsrProfiles-Source-Default user profile name.vi" Type="VI" URL="../../../../User Interface/User profiles code/UsrProfiles-Source-Default user profile name.vi"/>
			<Item Name="UsrProfiles-Source-Internal user prof name.vi" Type="VI" URL="../../../../User Interface/User profiles code/UsrProfiles-Source-Internal user prof name.vi"/>
			<Item Name="Which path.ctl" Type="VI" URL="../../../../Typedefs/Which path.ctl"/>
			<Item Name="Window position FG states.ctl" Type="VI" URL="../../../../User Interface/Window position management/Typedefs/Window position FG states.ctl"/>
			<Item Name="Window-Error message.vi" Type="VI" URL="../../../../Dynamically Called VIs/Window-Error message.vi"/>
			<Item Name="Window-User dialogue.vi" Type="VI" URL="../../../../User Interface/Windows/Window-User dialogue.vi"/>
			<Item Name="Write window position to ini file &amp; close.vi" Type="VI" URL="../../../../User Interface/Window position management/Write window position to ini file &amp; close.vi"/>
			<Item Name="XY Stage config cluster.ctl" Type="VI" URL="../../../../Typedefs/XY Stage config cluster.ctl"/>
			<Item Name="XYZ channel ring.ctl" Type="VI" URL="../../Typedefs/XYZ channel ring.ctl"/>
			<Item Name="XYZ Stage-Response parser for coordinates.vi" Type="VI" URL="../../XYZ Stage-Response parser for coordinates.vi"/>
			<Item Name="XYZ Stage-Response validator.vi" Type="VI" URL="../../XYZ Stage-Response validator.vi"/>
			<Item Name="XYZ_coordinates.ctl" Type="VI" URL="../../Typedefs/XYZ_coordinates.ctl"/>
			<Item Name="XYZControlConfig.ctl" Type="VI" URL="../typedefs/XYZControlConfig.ctl"/>
			<Item Name="Z intelock check type.ctl" Type="VI" URL="../../Typedefs/Z intelock check type.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="sciXYZstage oop" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{97F61E84-8831-4E2E-9290-E8D9318B4493}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C13975F8-312B-4E60-902B-458178E2282B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{57B8DBBD-763D-4A23-934A-5A6032A2AE60}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">sciXYZstage oop</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Microscope software/OOP_test/sciXYZstage</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E7A85086-1CF7-470D-B64C-B7CCCC03C1DC}</Property>
				<Property Name="Bld_version.build" Type="Int">4</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">sciXYZstage_oop.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Microscope software/OOP_test/sciXYZstage/sciXYZstage_oop.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Microscope software/OOP_test/sciXYZstage/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D1C1DCD0-B302-470D-B9BB-F3674510A4C4}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Tester_oop.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Scientifica XYZ Gen1</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Serial Comms</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/XYZ Stage Control</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_companyName" Type="Str">University College London</Property>
				<Property Name="TgtF_fileDescription" Type="Str">sciXYZstage oop</Property>
				<Property Name="TgtF_internalName" Type="Str">sciXYZstage oop</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 University College London</Property>
				<Property Name="TgtF_productName" Type="Str">sciXYZstage oop</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{438F92EC-6941-4EC1-9514-F27246E1DAA1}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">sciXYZstage_oop.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Translation_stage_oop" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{BF7C9EE8-A506-488C-81F1-37CCBDB6B016}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Translation_stage_oop</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">/C/ProgramData/National Instruments/InstCache/20.0</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">/C/Users/SilverLab/Documents/LabVIEW Data/2020(64-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Users/SilverLab/Documents/LVCode/source_builds/Translation_stage_oop</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{AF1502B1-959B-4E93-A6A5-1BAB66B06E6E}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Users/SilverLab/Documents/LVCode/source_builds/Translation_stage_oop</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Users/SilverLab/Documents/LVCode/source_builds/Translation_stage_oop/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{497126FE-46A8-4AEB-BBF9-76AE87F20CEA}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/TranslationStageClassStructure.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Generic Comms/Generic_Comms.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
		</Item>
	</Item>
</Project>
