program zplUtilities;

uses
  Vcl.Forms,
  mainWindow in 'mainWindow.pas' {mainW},
  unitXml in 'unitXml.pas',
  Vcl.Themes,
  Vcl.Styles,
  zplUtils in 'zplUtils.pas',
  VCLPatches in '..\..\..\..\vcl\src\lib\VCLPatches.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainW, mainW);
  Application.Run;

end.
