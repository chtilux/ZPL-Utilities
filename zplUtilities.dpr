program zplUtilities;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  mainWindow in 'mainWindow.pas' {mainW},
  unitXml in 'unitXml.pas',
  Vcl.Themes,
  Vcl.Styles,
  zplUtils in 'zplUtils.pas',
  previewLabelUnit in 'previewLabelUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainW, mainW);
  Application.Run;

end.
