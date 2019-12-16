; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CP Editor"
#define MyAppVersion "3.1.1"
#define MyAppPublisher "Ashar Khan <coder3101>"
#define MyAppURL "https://github.com/coder3101/cp-editor2"
#define MyAppExeName "CPEditor.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{01D77782-3A40-44F0-BD36-59626998F4EE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\CPEditor
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
LicenseFile=C:\Users\Ashar\Projects\cp-editor2\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\Ashar\Projects\cp-editor2
OutputBaseFilename=cpeditor-setup
SetupIconFile=C:\Users\Ashar\Projects\cp-editor2\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: "C:\Users\Ashar\Projects\release\CPEditor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\bearer\*"; DestDir: "{app}\bearer\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Ashar\Projects\release\iconengines\*"; DestDir: "{app}\iconengines\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Ashar\Projects\release\imageformats\*"; DestDir: "{app}\imageformats\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Ashar\Projects\release\platforms\*"; DestDir: "{app}\platforms\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Ashar\Projects\release\styles\*"; DestDir: "{app}\styles\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Ashar\Projects\release\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Ashar\Projects\release\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

