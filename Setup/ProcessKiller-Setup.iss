; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ProcessKiller"
#define MyAppVersion "1.0.1.0"
#define MyAppPublisher "H�mmer Electronics"
#define MyAppURL "http://softwareload24.de.tl/"
#define MyAppExeName "ProcessKiller.exe"
#define MyPath "C:\Users\Tim\Documents\Git\C# und VB\ProcessKiller"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BDC62B21-C24A-4368-A2EE-80E4C0237763}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppCopyright="Copyright (�) 2015 H�mmer Electronics"
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile={#MyPath}\ProcessKiller\bin\Release\License.txt
InfoAfterFile={#MyPath}\ProcessKiller\bin\Release\Readme.txt
OutputDir={#MyPath}\Setup
OutputBaseFilename=ProcessKiller-Setup
SetupIconFile={#MyPath}\ProcessKiller\bin\Release\ProcessKiller.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#MyPath}\ProcessKiller\bin\Release\ProcessKiller.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\ProcessKiller\bin\Release\Config.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\ProcessKiller\bin\Release\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\ProcessKiller\bin\Release\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

