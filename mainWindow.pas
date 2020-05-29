unit mainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ImgList,
  Vcl.ToolWin, Generics.Collections, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, zplUtils, SynEdit, SynEditHighlighter, SynHighlighterZPL,
  PdfiumCtrl, MruUnit, NumberEdit, Vcl.StdActns, zplCommands,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ActnCtrls;

type
  TmainW = class(TForm)
    sb: TStatusBar;
    headerPanel: TPanel;
    commandsPanel: TPanel;
    Splitter1: TSplitter;
    midPanel: TPanel;
    previewPanel: TPanel;
    Splitter2: TSplitter;
    wkPanel: TPanel;
    helpPanel: TPanel;
    cmdPanel: TPanel;
    codePanel: TPanel;
    viewActions: TActionList;
    viewZPLCommandsAction: TAction;
    viewZPLHelpAction: TAction;
    viewPreviewAction: TAction;
    MainMenu1: TMainMenu;
    FileMenu: TMenuItem;
    QuitMenu: TMenuItem;
    EditMenu: TMenuItem;
    ViewMenu: TMenuItem;
    ZPLcommandsMenu: TMenuItem;
    ZPLHelpMenu: TMenuItem;
    PreviewMenu: TMenuItem;
    CommandsToolbar: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolbarEnabledImages: TImageList;
    toolbarDisabledImages: TImageList;
    GUIActions: TActionList;
    groupZPLCommandsAction: TAction;
    HelpToolbar: TToolBar;
    ToolButton3: TToolButton;
    previewToolbar: TToolBar;
    ToolButton4: TToolButton;
    QuitAction: TAction;
    mainToolbar: TToolBar;
    openFileAction: TAction;
    saveFileAction: TAction;
    N1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    lv: TListView;
    cmdSearch: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    helpZPLCode: TEdit;
    helpZPLDescription: TMemo;
    helpZPLUsage: TEdit;
    helpZPLParameters: TMemo;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    saveLabelAction: TAction;
    Label14: TLabel;
    xTextPos: TSpinEdit;
    yTextPos: TSpinEdit;
    Label5: TLabel;
    TextEdit: TEdit;
    commentsFieldOriginBox: TCheckBox;
    Label9: TLabel;
    Label13: TLabel;
    textJustifyBox: TComboBox;
    Label12: TLabel;
    textFontSizeBox: TComboBox;
    Label10: TLabel;
    SaveLabel1: TMenuItem;
    GroupCommands1: TMenuItem;
    Startlabel1: TMenuItem;
    zplSource: TSynEdit;
    exportZPLKeywordsAction: TAction;
    ExportZPLKeywords1: TMenuItem;
    closeFileAction: TAction;
    ToolButton11: TToolButton;
    N2: TMenuItem;
    Closelabel1: TMenuItem;
    FontWidthEdit: TEdit;
    FontHeightEdit: TEdit;
    ZPLActions: TActionList;
    StartLabelAction: TAction;
    EndLabelAction: TAction;
    LabelDatabaseFieldAction: TAction;
    CommentBlocAction: TAction;
    GraphicAction: TAction;
    CommandAction: TAction;
    CommentLineAction: TAction;
    EndLineAction: TAction;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    AddAZPLCommandButton: TButton;
    DatabaseFieldAction: TAction;
    GraphicsBox: TComboBox;
    GetGraphicsAction: TAction;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    FieldOrientationBox: TComboBox;
    SynZPLSyn1: TSynZPLSyn;
    BarCodeFromTextAction: TAction;
    Button11: TButton;
    SaveAsFileAction: TAction;
    ToolButton16: TToolButton;
    SaveAs1: TMenuItem;
    PreviewLabelAction: TAction;
    ToolButton17: TToolButton;
    pdfPanel: TPanel;
    rotateAction: TAction;
    ToolButton18: TToolButton;
    mru: TMostRecentFiles;
    N3: TMenuItem;
    N4: TMenuItem;
    Previewlabel1: TMenuItem;
    Actions1: TMenuItem;
    Startanewlabel1: TMenuItem;
    Endthelabel1: TMenuItem;
    Commentline1: TMenuItem;
    CommentblocCtrlM1: TMenuItem;
    Endtheline1: TMenuItem;
    AddaZPLcommand1: TMenuItem;
    LabeldatabasefieldCtrlL1: TMenuItem;
    DatabasefieldCtrlD1: TMenuItem;
    N5: TMenuItem;
    Addagraphicallogo1: TMenuItem;
    BarcodefromTextCtrlB1: TMenuItem;
    GetGraphics1: TMenuItem;
    MRUMenuItem: TMenuItem;
    UpdateFieldOriginAction: TAction;
    Button12: TButton;
    HorizontalLineAction: TAction;
    LineLength: TNumberEdit;
    LineThick: TNumberEdit;
    Label6: TLabel;
    Button1: TButton;
    VerticalLineAction: TAction;
    Button2: TButton;
    RectHeight: TNumberEdit;
    BoxAction: TAction;
    Button5: TButton;
    EditSelectAll1: TEditSelectAll;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    N6: TMenuItem;
    SelectAll1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    EditLabelSettingsAction: TAction;
    N7: TMenuItem;
    Editlabelsettings1: TMenuItem;
    EditPrinterSettingsAction: TAction;
    Editprintersettings1: TMenuItem;
    ToolButton9: TToolButton;
    LabelSettingsButton: TToolButton;
    ToolButton13: TToolButton;
    LabelSettingsDisplay: TEdit;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    PrinterSettingsDisplay: TEdit;
    ToolButton19: TToolButton;
    Label7: TLabel;
    Label8: TLabel;
    EditUndo1: TEditUndo;
    LoadLabelSettingsAction: TAction;
    LabelSettingsMenu: TPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure viewZPLCommandsActionExecute(Sender: TObject);
    procedure viewZPLHelpActionExecute(Sender: TObject);
    procedure viewPreviewActionExecute(Sender: TObject);
    procedure groupZPLCommandsActionExecute(Sender: TObject);
    procedure QuitActionExecute(Sender: TObject);
    procedure cmdSearchChange(Sender: TObject);
    procedure lvChange(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure cmdSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure saveLabelActionExecute(Sender: TObject);
    procedure viewActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure GUIActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure zplSourceChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure openFileActionExecute(Sender: TObject);
    procedure saveFileActionExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure exportZPLKeywordsActionExecute(Sender: TObject);
    procedure closeFileActionExecute(Sender: TObject);
    procedure zplSourceKeyPress(Sender: TObject; var Key: Char);
    procedure textFontSizeBoxChange(Sender: TObject);
    procedure ZPLActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure labelWidthEditChange(Sender: TObject);
    procedure StartLabelActionExecute(Sender: TObject);
    procedure EndLabelActionExecute(Sender: TObject);
    procedure CommentBlocActionExecute(Sender: TObject);
    procedure CommentLineActionExecute(Sender: TObject);
    procedure EndLineActionExecute(Sender: TObject);
    procedure LabelDatabaseFieldActionExecute(Sender: TObject);
    procedure zplSourceClick(Sender: TObject);
    procedure CommandActionExecute(Sender: TObject);
    procedure GetGraphicsActionExecute(Sender: TObject);
    procedure DatabaseFieldActionExecute(Sender: TObject);
    procedure GraphicActionExecute(Sender: TObject);
    procedure lvDblClick(Sender: TObject);
    procedure BarCodeFromTextActionExecute(Sender: TObject);
    procedure xTextPosChange(Sender: TObject);
    procedure SaveAsFileActionExecute(Sender: TObject);
    procedure PreviewLabelActionExecute(Sender: TObject);
    procedure rotateActionExecute(Sender: TObject);
    procedure mruMenuClick(Sender: TObject; const Filename: string);
    procedure UpdateFieldOriginActionExecute(Sender: TObject);
    procedure HorizontalLineActionExecute(Sender: TObject);
    procedure LineLengthKeyPress(Sender: TObject; var Key: Char);
    procedure VerticalLineActionExecute(Sender: TObject);
    procedure BoxActionExecute(Sender: TObject);
    procedure EditLabelSettingsActionExecute(Sender: TObject);
    procedure EditPrinterSettingsActionExecute(Sender: TObject);
    procedure AddAZPLCommandButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AddAZPLCommandButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Déclarations privées }
    pvZPLCommandsGroup: Boolean;
    pvZPLCommands: TObjectList<TZPLCommand>;

    pvZPLLabels: TObjectList<TZPLLabelSettings>;

    pvChanged: Boolean;
    pvCtrlIsDown: Boolean;

    pvLabelSettings: TZPLLabelSettings;
    pvLabelSettingsChanged: boolean;

    pvPrinterSettings: TPrinterSettings;
    pvPrinterSettingsChanged: boolean;

    pvDpMM: integer;
    pvFilename: string;
    pvPdf: TPdfControl;

    pvLoading: boolean;
    pvLabel: TZPLLabel;
    pvEngine: TZPLCommandEngine;

    procedure loadMainToolbar;
    procedure loadSettings;
    procedure saveSettings;
    procedure loadZPLCommands;
    procedure displayCommands;
    procedure saveLabel;
    procedure OnHint(Sender: TObject);
    procedure displayHelp(cmd: TZPLCommand);
    function  processChar(var k: Char): Boolean;
    procedure computesDotsPerMM;
    procedure openLabel(const filename: string);
    procedure LabelSettingsChanged;
    procedure LabelFileChanged;
    procedure SaveCurrentLabelSettings;
    procedure LoadLabelSettings(const Name: string);
    procedure PrinterSettingsChanged;

    procedure getGraphicsFromDisk;
    function getKeywordFromSource(line: string; xPos: integer): string;
    function GetZPLCmdListItemFromString(cmd: string): TListItem;
    procedure setXandYTextPosFromSource(Line: string; const dpmm: integer);
    procedure ComputeXandYFieldOrigin(const ALine, xPos, yPos, dpmm: integer);
    procedure RecomputeXandYFieldOrigin(currentDpMM,newDpMM: integer);
    function getSourceLine(zmd: array of TZPLCommand): string;
    function addSourceCodeLine(ALine: string): integer;
    function InsertSourceCodeLine(ALine: string): integer;
    function AppendTextToSourceCodeLine(AText: string): integer;
    procedure DatabaseFieldOrLabel(AText: string);
    procedure extractZPLFromXML(const filename: string);
    procedure BarCodeFromText(const Text: string);
    procedure PreviewLabel;
    procedure loadBlankPDF;
    procedure DrawALine(lineOrientation: TLineOrientation);
    procedure DrawABox;
    procedure SetFieldOriginLabelSize(var zo: TZPLOrigin);
    procedure GetXMLPath(var xml: string);
    procedure ResetFile;
    procedure LabelSettingsMenuClick(Sender: TObject);
  public
    { Déclarations publiques }
  end;

var
  mainW: TmainW;

implementation

uses
  Inifiles, unitXML, UITypes, Clipbrd, previewLabelUnit, ShellAPI, PDFiumCore,
  TypInfo, LabelSettingsWindow, PrinterSettingsWindow, Math;

{$R *.dfm}

const
  WEB_SERVICE_FILE: string = 'labelary';

procedure TmainW.FormCreate(Sender: TObject);
var
  bin,ini: string;
begin
  pvLoading := True;
  Application.OnHint := OnHint;
  pvChanged := False;
  pvLabelSettings := TZPLLabelSettings.Create;
  pvLabelSettingsChanged := False;
  pvLabel := TZPLLabel.Create;
  pvEngine := TZPLCommandEngine.Create(pvLabel);
  pvPrinterSettings := TPrinterSettings.Create;
  pvPrinterSettingsChanged := False;

  {$ifdef cpux64}
  PDFiumDllDir := ExtractFilePath(ParamStr(0)) + 'x64';
  {$else}
  PDFiumDllDir := ExtractFilePath(ParamStr(0)) + 'x86';
  {$endif cpux32}

  pvPdf := nil;

  mru.OwnerMenuItem := MRUMenuItem;
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  ini := Format('%s\ini\%s',[bin,ChangeFileExt(ExtractFileName(Application.ExeName),'.ini')]);
  mru.IniFile := ini;
end;

procedure TmainW.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  if Assigned(pvZPLCommands) then
  begin
    for i := 0 to pvZPLCommands.Count - 1 do
    begin
      if Assigned(pvZPLCommands[i]) then
        TZPLCommand(pvZPLCommands[i]).Free;
    end;
    pvZPLCommands.Free;
  end;

  if Assigned(pvZPLLabels) then
  begin
    for i := 0 to pvZPLLabels.Count - 1 do
    begin
      if Assigned(pvZPLLabels[i]) then
        TZPLLabelSettings(pvZPLLabels[i]).Free;
    end;
    pvZPLLabels.Free;
  end;

  pvLabelSettings.Free;
  pvPrinterSettings.Free;
  pvEngine.Free;
  pvLabel.Free;
end;

procedure TmainW.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  k: Char;
begin
  if ssCtrl in Shift then
  begin
    k := UpCase(Chr(Key));
    if processChar(k) then
      Key := 0;
  end;
end;

procedure TmainW.FormKeyPress(Sender: TObject; var Key: Char);
var
  k: Char;
begin
  if (ActiveControl <> cmdSearch) and (ActiveControl <> zplSource) and
    (ActiveControl <> TextEdit) and
    (ActiveControl <> LineLength) and (ActiveControl <> LineThick) then
  begin
    k := UpCase(Key);
    if processChar(k) then
      Key := #0;
  end;
end;

function TmainW.processChar(var k: Char): Boolean;
begin
  Result := True;
  case k of
//    'A' : begin
//      zplSource.SelectAll;
//      Clipboard.AsText := zplSource.SelText;
//      zplSource.SetFocus;
//    end;
    'E' : TextEdit.SetFocus;
    'F' : textFontSizeBox.SetFocus;
    'J' : textJustifyBox.SetFocus;
    'G' : GraphicsBox.SetFocus;
    'M','.' : cmdSearch.SetFocus;
    'O' : FieldOrientationBox.SetFocus;
    'N' : commentsFieldOriginBox.SetFocus;
    'L' : xTextPos.SetFocus;
    'T' : yTextPos.SetFocus;
  else
    Result := False;
  end;
end;

procedure TmainW.GUIActionsUpdate(Action: TBasicAction; var Handled: Boolean);
const
  cg: array [Boolean] of integer = (1, 5);
  cs: array [Boolean] of string = ('Groups ZPL commands',
    'Ungroups ZPL commands');
begin
  groupZPLCommandsAction.ImageIndex := cg[pvZPLCommandsGroup];
  groupZPLCommandsAction.Hint := cs[pvZPLCommandsGroup];
  groupZPLCommandsAction.Caption := cs[pvZPLCommandsGroup];
  closeFileAction.Enabled := ((pvFilename <> '') and FileExists(pvFilename)) or pvChanged;
  saveFileAction.Enabled := pvChanged;
  SaveAsFileAction.Enabled := (pvFilename.Trim <> '') and FileExists(pvFilename) and (zplSource.Lines.Count > 0);
  exportZPLKeywordsAction.Enabled := not pvChanged;
  PreviewLabelAction.Enabled := zplSource.Lines.Count > 0;
  rotateAction.Enabled := Assigned(pvPdf);
  openFileAction.Enabled := not pvChanged;
  MRUMenuItem.Enabled := openFileAction.Enabled;
  EditLabelSettingsAction.Enabled := Assigned(pvLabelSettings);
  saveLabelAction.Enabled := pvLabelSettingsChanged;
  EditPrinterSettingsAction.Enabled := Assigned(pvPrinterSettings);

  if pvChanged then
  begin
    LabelSettingsButton.Style := tbsButton;
    LabelSettingsButton.DropdownMenu := nil;
  end
  else
  begin
    LabelSettingsButton.Style := tbsDropDown;
    LabelSettingsButton.DropdownMenu := LabelSettingsMenu;
  end;
  Handled := True;
end;

procedure TmainW.HorizontalLineActionExecute(Sender: TObject);
begin
  DrawALine(loHorz);
end;

function TmainW.InsertSourceCodeLine(ALine: string): integer;
var
  s: string;
  i: integer;
  iLine: integer;
begin
  iLine := Pred(zplSource.CaretY);
  if iLine < 0 then
    iLine := 0;
  while (Length(ALine) > 0) do
  begin
    i := Pos(#13#10, ALine);
    if i > 0 then
    begin
      s := Copy(ALine, 1, Pred(i));
      zplSource.Lines.Insert(iLine, s);
      Inc(iLine);
      Delete(ALine, 1, Succ(i));
    end
    else
    begin
      zplSource.Lines.Insert(iLine, ALine);
      Delete(ALine, 1, Length(ALine));
    end;
  end;
  pvChanged := True;
  LabelFileChanged;
  Result := Succ(iLine);
end;

procedure TmainW.AddAZPLCommandButtonMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pvCtrlIsDown := False;
end;

function TmainW.addSourceCodeLine(ALine: string): integer;
var
  s: string;
  i: integer;
begin
  Result := -1;
  while (Length(ALine) > 0) do
  begin
    i := Pos(#13#10, ALine);
    if i > 0 then
    begin
      s := Copy(ALine, 1, Pred(i));
      Result := zplSource.Lines.Add(s);
      Delete(ALine, 1, Succ(i));
    end
    else
    begin
      Result := zplSource.Lines.Add(ALine);
      Delete(ALine, 1, Length(ALine));
    end;
  end;
  pvChanged := True;
  LabelFileChanged;
end;

function TmainW.AppendTextToSourceCodeLine(AText: string): integer;
var
  s: string;
  iLine: integer;
begin
  iLine := Pred(zplSource.CaretY);
  s := zplSource.Lines[iLine] + AText;
  zplSource.Lines[iLine] := s;
  Result := iLine;
end;

procedure TmainW.BarCodeFromText(const Text: string);
var
  zmd: TZPLBarCode;
  zo: TZPLOrigin;
begin
  zmd := nil;
  zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.PrinterSettings := pvPrinterSettings;
    zo.labelSettings := pvLabelSettings;
//    zo.dpi := ZPLPrintDensity[pvLabel.PrinterSettings.PrintDensity];
    zo.Comment := commentsFieldOriginBox.Checked;
    SetFieldOriginLabelSize(zo);

    zmd := TZPLBarCode(pvEngine.getZPLCommandValueObject(zmdBarCode));
    zmd.Text := Text;

    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo,zmd])));
    zplSourceChange(Self);
  finally
    zo.Free;
    zmd.Free;
  end;
end;

procedure TmainW.BarCodeFromTextActionExecute(Sender: TObject);
begin
  BarCodeFromText(TextEdit.Text);
end;

procedure TmainW.GraphicActionExecute(Sender: TObject);
var
  zmd: TZPLGraphic;
  zo: TZPLOrigin;
  lines,source: string;
  i: integer;
  found: Boolean;
  bin,
  graphics: string;
  stream: TStreamReader;
begin
  zmd := nil;
  zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.PrinterSettings := pvPrinterSettings;
    zo.labelSettings := pvLabelSettings;
    zo.Comment := commentsFieldOriginBox.Checked;
    SetFieldOriginLabelSize(zo);

    zmd := TZPLGraphic(pvEngine.getZPLCommandValueObject(zmdGraphic));
    zmd.Text := GraphicsBox.Text;

    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo,zmd])));

    { insert file.grf into source if necessary }
    lines := zplSource.Lines.Text.ToUpper;
    source := Format('~DGR:%s',[zmd.Text]);
    if Pos(source,lines) = 0 then
    begin
      found := False;
      { recherche du premier ~DGR: dans le code source }
      for i := 0 to zplSource.Lines.Count-1 do
      begin
        source := zplSource.Lines[i].Trim.ToUpper;
        if Pos('~DGR:',source) > 0 then
        begin
          found := True;
          Break;
        end;
      end;

      bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
      graphics := ExcludeTrailingPathDelimiter(Format('%s\%s',[bin,'graphics']));
      if not found then
      begin
        { recherche de la première ligne précédent le premier ^FO }
        found := False;
        for i := 0 to zplSource.Lines.Count-1 do
        begin
          source := zplSource.Lines[i].Trim.ToUpper;
          if (Pos('^FX X=', source) > 0) or (Pos('^FO', source) > 0) then
          begin
            found := True;
            Break;
          end;
        end;
      end;

      { insertion à la ligne i }
      Assert(Found);
      source := Format('%s\%s',[graphics,zmd.Text]);
      if FileExists(source) then
      begin
        stream := TStreamReader.Create(source,TEncoding.UTF8,True);
        try
          source := Format('~DGR:%s%s',[zmd.Text,stream.ReadLine]);
        finally
          stream.Free;
        end;
        zplSource.Lines.Insert(i,source);
      end;
    end;

    zplSourceChange(Self);
  finally
    zo.Free;
    zmd.Free;
  end;
end;

procedure TmainW.closeFileActionExecute(Sender: TObject);
var
  response: integer;
begin
  if pvChanged then
  begin
    response := MessageDlg('Save changes ?', mtConfirmation,
      [mbYes, mbNo, mbCancel], 0);
    case response of
      mrYes:
        saveFileAction.Execute;
      mrNo:
        ;
      mrCancel:
        Abort;
    end;
  end;
  ResetFile;
end;

procedure TmainW.cmdSearchChange(Sender: TObject);
var
  li: TListItem;
begin
  if Trim(cmdSearch.Text) = '' then
    Exit;
  li := GetZPLCmdListItemFromString(Trim(cmdSearch.Text).ToUpper);
  if li <> nil then
  begin
    lv.Selected := li;
    li.MakeVisible(True);
  end;
end;

procedure TmainW.cmdSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  li: TListItem;
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
  begin
    Key := 0;
    li := lv.Selected;
    if li <> nil then
    begin
      lv.ItemIndex := li.Index;
      li.MakeVisible(True);
      lv.SetFocus;
    end;
  end;
end;

procedure TmainW.CommandActionExecute(Sender: TObject);
var
  zo: TZPLOrigin;
begin
  zo := nil;
  try
    { if Ctrl key is down, add Field Origin }
    if pvCtrlIsDown then
    begin
      zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
      zo.X := xTextPos.Value;
      zo.Y := yTextPos.Value;
      zo.PrinterSettings := pvPrinterSettings;
      zo.labelSettings := pvLabelSettings;
      zo.Comment := commentsFieldOriginBox.Checked;
      SetFieldOriginLabelSize(zo);
    end;
    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo,TZPLCommand(lv.Selected.Data)])));
  finally
    zo.Free;
  end;
  zplSourceChange(Sender);
end;

procedure TmainW.CommentBlocActionExecute(Sender: TObject);
var
  zmd: TZPLBlocCommentCmd;
  bc: TBufferCoord;
begin
  zmd := TZPLBlocCommentCmd(pvEngine.getZPLCommandValueObject(zmdBlocComment));
  try
    bc := zplSource.CharIndexToRowCol(zplSource.SelStart);
    zmd.FirstSelectedLine := bc.Line;
    bc := zplSource.CharIndexToRowCol(zplSource.SelEnd);
    zmd.LastSelectedLine := bc.Line;
    if zmd.FirstSelectedLine < zmd.LastSelectedLine then
    begin
      zplSource.Lines.Insert(Pred(zmd.FirstSelectedLine),'// _START');
      zplSource.Lines.Insert(zmd.LastSelectedLine,'// _END');
    end
    else
      zplSource.CaretY := InsertSourceCodeLine(getSourceLine([zmd]));
  finally
    zmd.Free;
  end;
  zplSourceChange(Sender);
end;

procedure TmainW.CommentLineActionExecute(Sender: TObject);
var
  zmd: TZPLCommand;
begin
  zmd := pvEngine.getZPLCommandValueObject(zmdLineComment);
  try
    zmd.Text := TextEdit.Text;
    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zmd])));
  finally
    zmd.Free;
  end;
  zplSourceChange(Sender);
end;

procedure TmainW.computesDotsPerMM;
begin
  pvDpMM := ZPLPrintDensity[pvPrinterSettings.PrintDensity];
  sb.Panels[1].Text := Format('%d dops per mm', [pvDpMM]);
end;

procedure TmainW.ComputeXandYFieldOrigin(const ALine, xPos, yPos, dpmm: integer);
var
  i: integer;
  subs,org: TStrings;
  line, subLine, newLine: string;
  lcUpdate: boolean;
begin
  if (xPos = 0) or (yPos = 0) then
    Exit;

  lcUpdate := False;
  newLine := '';
  line := zplSource.Lines[ALine-1];
  subs := TStringList.Create;
  try
    while Length(line) > 0 do
    begin
      i := Length(line);
      while (i >= 1) do
      begin
        if not (line[i] = '^') then
          Dec(i)
        else
        begin
          subs.Insert(0, Copy(line,i,Length(line)-i+1));
          Delete(line,i,Length(line)-1+1);
          i := Length(line);
        end;
      end;
      if Length(line) > 0 then
      begin
        subs.Insert(0,line);
        line := '';
      end;
    end;

    for i := 0 to subs.Count-1 do
    begin
      subLine := subs[i];
      if Copy(subLine.ToUpper,1,3) = '^FO' then
      begin
        Delete(subLine,1,3);
        org := TStringList.Create;
        try
          org.CommaText := subLine;
          if org.Count = 2 then
          begin
            subLine := Format('^FO%.4d,%.4d',[xPos * dpmm,yPos * dpmm]);
            lcUpdate := true;
          end;
        finally
          org.Free;
        end;
      end;
      newLine := Format('%s%s',[newLine,subLine]);
    end;
  finally
    subs.Free;
  end;
  if lcUpdate then
  begin
    zplSource.Lines[ALine-1] := newLine;
    pvChanged := True;
    LabelFileChanged;
    if zplSource.CaretY > 1 then
    begin
      line := zplSource.Lines[ALine-2].ToUpper;
      if Pos('^FX X=',line) = 1 then
        zplSource.Lines[ALine-2] := Format('^FX x=%d y=%d ^FS',[xPos,yPos]);
    end;
  end;
end;

procedure TmainW.displayCommands;
var
  i: integer;
  c: TZPLCommand;
  categ: string;
  id: integer;
begin
  if Assigned(pvZPLCommands) then
  begin
    lv.Items.BeginUpdate;
    try
      categ := '';
      id := 0;
      for i := 0 to pvZPLCommands.Count - 1 do
      begin
        c := pvZPLCommands[i];
        { : adds a list group }
        if c.category <> categ then
        begin
          Inc(id);
          categ := c.category;
          with lv.Groups.Add do
          begin
            Header := c.category;
            GroupID := id;
          end;
        end;

        with lv.Items.Add do
        begin
          Caption := c.name;
          SubItems.Add(c.shortDesc);
          GroupID := id;
          Data := Pointer(c);
        end;
      end;
    finally
      lv.Items.EndUpdate;
    end;
  end;
end;

procedure TmainW.displayHelp(cmd: TZPLCommand);
var
  p: TZPLCommandParameter;
  pv: TZPLCommandParameterValue;
  i, j: integer;
  s: string;
begin
  helpZPLCode.Text := cmd.name;
  helpZPLDescription.Lines.Clear;
  helpZPLDescription.Lines.Add(cmd.longDesc);
  helpZPLUsage.Text := cmd.usage;
  helpZPLParameters.Lines.BeginUpdate;
  try
    helpZPLParameters.Lines.Clear;
    s := Format('%-5s%-40s%-35s', ['par.', 'Description', 'Accepted Values']);
    helpZPLParameters.Lines.Add(s);
    helpZPLParameters.Lines.Add(StringOfChar('-', 80));
    for i := 0 to cmd.params.Count - 1 do
    begin
      p := cmd.params[i];
      if p.Values.Count = 0 then
      begin
        s := Format('%-5s%-40s%-35s', [p.name, p.description, p.acceptedValue]);
        helpZPLParameters.Lines.Add(s);
      end
      else
      begin
        for j := 0 to p.Values.Count - 1 do
        begin
          pv := p.Values[j];
          if j = 0 then
            s := Format('%-5s%-40s%-35s', [p.name, p.description,
              Format('- %s = %s', [pv.value, pv.description])])
          else
            s := Format('%-5s%-40s%-35s',
              ['', '', Format('- %s = %s', [pv.value, pv.description])]);
          helpZPLParameters.Lines.Add(s);
        end;
      end;
      helpZPLParameters.Lines.Add(StringOfChar('-', 80));
    end;
  finally
    helpZPLParameters.Lines.EndUpdate;
  end;
end;

procedure TmainW.EditLabelSettingsActionExecute(Sender: TObject);
begin
  with TLabelSettingsW.Create(Self,pvLabelSettings) do
  begin
    try
      if ShowModal = mrOk then
      begin
        pvLabelSettings.Name := Trim(NameEdit.Text);
        pvLabelSettings.width := Trunc(WidthEdit.Value);
        pvLabelSettings.height := Trunc(HeightEdit.Value);
        pvLabelSettings.orientation := OrientationBox.printOrientationValue;
        LabelSettingsChanged;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TmainW.EditPrinterSettingsActionExecute(Sender: TObject);
begin
  with TPrinterSettingsW.Create(Self, pvPrinterSettings) do
  begin
    try
      if ShowModal = mrOk then
      begin
        pvPrinterSettings.Name := NameEdit.Text;
        pvPrinterSettings.NonPrintableTopMargin := Trunc(TopMarginEdit.Value);
        pvPrinterSettings.NonPrintableBottomMargin := Trunc(BottomMarginEdit.Value);
        pvPrinterSettings.PrintDensity := printDensityBox.printDensityValue;
        PrinterSettingsChanged;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TmainW.EndLabelActionExecute(Sender: TObject);
var
  zmd: TZPLCommand;
begin
  zmd := pvEngine.getZPLCommandValueObject(zmdEndlabel);
  try
    zplSource.CaretY := Succ(addSourceCodeLine(getSourceLine([zmd])));
  finally
    zmd.Free;
  end;
  zplSourceChange(Sender);
end;

procedure TmainW.EndLineActionExecute(Sender: TObject);
var
  zmd: TZPLCommand;
begin
  zmd := pvEngine.getZPLCommandValueObject(zmdEOL);
  try
    AppendTextToSourceCodeLine(getSourceLine([zmd]));
  finally
    zmd.Free;
  end;
  zplSourceChange(Sender);
end;

procedure TmainW.LabelDatabaseFieldActionExecute(Sender: TObject);
begin
  DatabaseFieldOrLabel(TextEdit.Text);
end;

procedure TmainW.DatabaseFieldActionExecute(Sender: TObject);
begin
  DatabaseFieldOrLabel('<<'+string(TextEdit.Text).ToUpper+'>>');
end;

procedure TmainW.DatabaseFieldOrLabel(AText: string);
var
  zmd: TZPLTextDataCmd;
  zo: TZPLOrigin;
  zf: TZPLFont;
  za: TZPLFieldOrientation;
begin
  zmd := nil; zf := nil; za := nil;
  zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.PrinterSettings := pvPrinterSettings;
    zo.labelSettings := pvLabelSettings;
    zo.Comment := commentsFieldOriginBox.Checked;
    zo.FieldOrientation := FieldOrientationBox.FieldOrientationValue;
    zo.Justify := textJustifyBox.TextJustifyValue;
    SetFieldoriginLabelSize(zo);

    zf := TZPLFont(pvEngine.getZPLCommandValueObject(zmdFont));
    zf.Width := StrToIntDef(FontWidthEdit.Text,20);
    zf.Height := StrToIntDef(FontHeightEdit.Text,20);

    za := TZPLFieldOrientation(pvEngine.getZPLCommandValueObject(zmdFieldOrientation));
    za.FieldOrientation := FieldOrientationBox.FieldOrientationValue;
    za.Justify := textJustifyBox.TextJustifyValue;

    zmd := TZPLTextDataCmd(pvEngine.getZPLCommandValueObject(zmdTextData));
    zmd.FieldOrigin := zo;
    zmd.Text := AText;

    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo,zf,za,zmd])));
    zplSourceChange(Self);
  finally
    zo.Free;
    zf.Free;
    za.Free;
    zmd.Free;
  end;
end;

procedure TmainW.exportZPLKeywordsActionExecute(Sender: TObject);
var
  i: integer;
begin
  if not pvChanged then
  begin
    zplSource.Lines.BeginUpdate;
    try
      zplSource.Lines.Clear;
      for i := 0 to lv.Items.Count - 1 do
        zplSource.Lines.Add(TZPLCommand(lv.Items[i].Data).name);
    finally
      zplSource.Lines.EndUpdate;
    end;
    Clipboard.AsText := zplSource.Lines.Text;
  end;
end;

procedure TmainW.extractZPLFromXML(const filename: string);
var
  zpl: TZPLLabelValues;
begin
  zpl := TXMLToView.xmlExtractZPL(filename);
  try
    zplSource.Lines.Assign(zpl.Lines);
    pvPrinterSettings.Name := zpl.APrinter.Name;
    pvPrinterSettings.NonPrintableTopMargin := zpl.APrinter.NonPrintableTopMargin;
    pvPrinterSettings.NonPrintableBottomMargin := zpl.APrinter.NonPrintableBottomMargin;
    pvPrinterSettings.PrintDensity := zpl.APrinter.PrintDensity;
    PrinterSettingsChanged;
  finally
    zpl.Free;
  end;
end;

procedure TmainW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  saveLabel;
  saveSettings;
end;

procedure TmainW.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  response: integer;
begin
  if pvChanged then
  begin
    CanClose := True;
    response := MessageDlg('Save label file changes ?', mtConfirmation,
      [mbYes, mbNo, mbCancel], 0);
    case response of
      mrYes:
        saveFileAction.Execute;
      mrNo:
        pvChanged := False;
      mrCancel:
        Abort;
    end;
  end;

  if pvLabelSettingsChanged then
  begin
    CanClose := True;
    response := MessageDlg('Save label settings changes ?', mtConfirmation,
      [mbYes, mbNo, mbCancel], 0);
    case response of
      mrYes:
        saveLabelAction.Execute;
      mrNo:
        pvLabelSettingsChanged := False;
      mrCancel:
        Abort;
    end;
  end;
end;

procedure TmainW.PrinterSettingsChanged;
begin
  if not pvLoading then
  begin
    pvPrinterSettingsChanged := True;
    pvChanged := True;
  end;
  if Assigned(pvPrinterSettings) then
  begin
    computesDotsPerMM;
    PrinterSettingsDisplay.Text := pvPrinterSettings.Caption;
  end;
end;

procedure TmainW.FormShow(Sender: TObject);
begin
  loadMainToolbar;
  loadZPLCommands;
  displayCommands;
  loadSettings;
  pvLoading := False;
  GetGraphicsAction.Execute;
  if FileExists(pvFilename) then
    openLabel(pvFilename)
  else
  begin
    { il n'y a pas de fichier étiquette ouvert, il faut donc pouvoir changer de format d'étiquette }
//    LabelSettingsButton.DropdownMenu := LabelSettingsMenu;
//    LabelSettingsButton.Style := tbsDropDown;
  end;
end;

procedure TmainW.getGraphicsFromDisk;
var
  bin,
  graphics: string;
  sr: TSearchRec;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  graphics := IncludeTrailingPathDelimiter(Format('%s\%s',[bin,'graphics']));
  if FindFirst(graphics+'*.grf',faNormal,sr) = 0 then
  begin
    try
      repeat
        GraphicsBox.Items.Add(sr.Name);
      until FindNext(sr) > 0;
    finally
      FindClose(sr);
    end;
  end;
end;

function TmainW.getKeywordFromSource(line: string; xPos: integer): string;
var
  x: integer;
  found: boolean;
begin
  Result := '';
  { on retourne la commande (^ ou ~) la plus proche à gauche du point xPos }
  line := line.Trim;
  if xPos > Length(line) then
    xPos := Length(line);
  x := xPos;
  found := False;
  while (x >= 1) and not Found do
  begin
    Found := CharInSet(line[x],['^','~']);
    if found then
      Break;
    Dec(x);
  end;
  if found then
    Result := Copy(line,x,3);
end;

function TmainW.GetZPLCmdListItemFromString(cmd: string): TListItem;
var
  i: Integer;
  found: boolean;
begin
  cmd := cmd.Trim.ToUpper;
  if CharInSet(cmd[1],['^','~']) then
    Delete(cmd,1,1);

  Result := lv.FindCaption(0, Format('^%s', [cmd.ToUpper]), True, True, False);
  if not Assigned(Result) then
  begin
    for i := 0 to lv.Items.Count - 1 do
    begin
      found := Pos(Trim(cmdSearch.Text).ToUpper, lv.Items[i].SubItems[0].ToUpper) > 0;
      if found then
        Result := lv.Items[i];
    end;
  end;
end;

procedure TmainW.GetGraphicsActionExecute(Sender: TObject);
begin
  GraphicsBox.Items.BeginUpdate;
  try
    GraphicsBox.Items.Clear;
    getGraphicsFromDisk;
  finally
    GraphicsBox.Items.EndUpdate;
  end;
end;

procedure TmainW.groupZPLCommandsActionExecute(Sender: TObject);
begin
  pvZPLCommandsGroup := not pvZPLCommandsGroup;
  lv.GroupView := pvZPLCommandsGroup;
end;

procedure TmainW.LabelFileChanged;
const
  cs: array[Boolean] of string = ('','(*)');
begin
  sb.Panels[4].Text := Format('%s %s',[pvFilename,cs[pvChanged]]);
end;

procedure TmainW.LabelSettingsChanged;
begin
  if not pvLoading then
    pvLabelSettingsChanged := (pvLabelSettings.Name <> '') and
                              (pvLabelSettings.width > 0) and
                              (pvLabelSettings.height > 0);
  if pvLabelSettingsChanged then
    pvChanged := True;
  if Assigned(pvLabelSettings) then
    LabelSettingsDisplay.Text := pvLabelSettings.Caption;
end;

procedure TmainW.LabelSettingsMenuClick(Sender: TObject);
begin
  pvLabelSettings.Assign(TZPLLabelSettings(TMenuItem(Sender).Tag));
  LabelSettingsDisplay.Text := pvLabelSettings.Caption;
end;

procedure TmainW.labelWidthEditChange(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    LabelSettingsChanged;
end;
procedure TmainW.LineLengthKeyPress(Sender: TObject; var Key: Char);
begin
  if not (CharInSet(Key,['0'..'9',FormatSettings.DecimalSeparator,#8,#13])) then
    Key := #0;
end;

procedure TmainW.loadBlankPDF;
var
  bin,
  labelary: string;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  labelary := Format('%s\%s',[bin,WEB_SERVICE_FILE]);
  if Assigned(pvPdf) then
    pvPdf.LoadFromFile(Format('%s\blank.pdf',[labelary]));
end;

procedure TmainW.LoadLabelSettings(const Name: string);
var
  i: Integer;
begin
//  LabelSettingsButton.Style := tbsDropDown;
//  LabelSettingsButton.DropdownMenu := LabelSettingsMenu;
  for i := 0 to Pred(pvZPLLabels.Count) do
  begin
    if pvZPLLabels[i].Name = Name then
    begin
      pvLabelSettings.Assign(pvZPLLabels[i]);
//      LabelSettingsButton.Style := tbsButton;
//      LabelSettingsButton.DropdownMenu := nil;
      Break;
    end;
  end;
end;

procedure TmainW.DrawABox;
begin
  DrawALine(loBox);
end;

procedure TmainW.SetFieldOriginLabelSize(var zo: TZPLOrigin);
begin
end;

procedure TmainW.GetXMLPath(var xml: string);
var
  bin: string;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  xml := Format('%s\xml\zpAELabels.xml', [bin]);
end;

procedure TmainW.ResetFile;
begin
  zplSource.Lines.Clear;
  pvChanged := False;
  pvFilename := '';
  LabelFileChanged;
  loadBlankPDF;
  pvLabelSettings.Clear;
//  LabelSettingsDisplay.Text := pvLabelSettings.Caption;
//  LabelSettingsButton.Style := tbsDropDown;
end;

procedure TmainW.DrawALine(lineOrientation: TLineOrientation);
var
  zo: TZPLLineOrigin;
  zmd: TZPLLine;
begin
  zmd := nil;
  zo := TZPLLineOrigin(pvEngine.getZPLCommandValueObject(zmdLineOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.PrinterSettings := pvPrinterSettings;
    zo.labelSettings := pvLabelSettings;
//    zo.dpi := ZPLPrintDensity[pvLabel.PrinterSettings.PrintDensity];
    zo.Comment := commentsFieldOriginBox.Checked;
    case lineOrientation of
      loHorz: zmd := TZPLHorzLine(pvEngine.getZPLCommandValueObject(zmdHorzLine));
      loVert: zmd := TZPLVertLine(pvEngine.getZPLCommandValueObject(zmdVertLine));
      loBox: begin
        zmd := TZPLBox(pvEngine.getZPLCommandValueObject(zmdBox));
        zmd.HeightMM := RectHeight.Value;
      end;
    end;

    zo.Line := zmd;
    zmd.LineOrientation := lineOrientation;
    zmd.LengthMM := LineLength.Value;
    zmd.ThickMM := LineThick.Value;
    zmd.DotPerMM := ZPLPrintDensity[zo.PrinterSettings.PrintDensity];
    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo, zmd])));
    zplSourceChange(Self);
  finally
    zo.Free;
    zmd.Free;
  end;
end;

procedure TmainW.loadMainToolbar;
var
  i: integer;
  bin,xml: string;
  mi: TMenuItem;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  xml := Format('%s\xml\zpAELabels.xml', [bin]);
  if FileExists(xml) then
    pvZPLLabels := TXMLToView.xmlZPLLabelsToObjectList(xml);
  if Assigned(pvZPLLabels) then
  begin
    for i := 0 to pvZPLLabels.Count-1 do
    begin
      mi := TMenuItem.Create(Self);
      mi.Caption := pvZPLLabels[i].Caption;
      mi.Tag := integer(pvZPLLabels[i]);
      mi.OnClick := LabelSettingsMenuClick;
      LabelSettingsMenu.Items.Add(mi);
    end;
  end;

  for i := Ord(Low(ZPLFontSize)) to Ord(High(ZPLFontSize)) do
    textFontSizeBox.Items.Add(ZPLFontSize[TFontSize(i)]);
  for i := Ord(Low(ZPLFieldOrientation)) to Ord(High(ZPLFieldOrientation)) do
     FieldOrientationBox.Items.Add(ZPLFieldOrientation[TFieldOrientation(i)]);
  for i := Ord(Low(ZPLTextJustify)) to Ord(High(ZPLTextJustify)) do
    textJustifyBox.Items.Add(ZPLTextJustify[TTextJustify(i)]);

  zplSource.Lines.Clear;
end;

procedure TmainW.loadSettings;
var
  bin,
  ini: string;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  ini := Format('%s\ini\%s',[bin,ChangeFileExt(ExtractFileName(Application.ExeName),'.ini')]);
  with TInifile.Create(ini) do
  begin
    try
      Left := ReadInteger(Self.name, 'Left', Self.Left);
      Top := ReadInteger(Self.name, 'Top', Self.Top);
      Width := ReadInteger(Self.name, 'Width', Self.Width);
      Height := ReadInteger(Self.name, 'Height', Self.Height);
      pvZPLCommandsGroup := ReadInteger('actions', groupZPLCommandsAction.name,
        1).ToBoolean;
      lv.GroupView := pvZPLCommandsGroup;
      commandsPanel.Visible := ReadBool(commandsPanel.name, 'Visible',
        commandsPanel.Visible);
      commandsPanel.Width := ReadInteger(commandsPanel.name, 'Width',
        commandsPanel.Width);
      helpPanel.Visible := ReadBool(helpPanel.name, 'Visible',
        helpPanel.Visible);
      helpPanel.Height := ReadInteger(helpPanel.name, 'Height',
        helpPanel.Height);
      previewPanel.Visible := ReadBool(previewPanel.name, 'Visible',
        previewPanel.Visible);
      previewPanel.Width := ReadInteger(previewPanel.name, 'Width',
        previewPanel.Width);
      commentsFieldOriginBox.Checked := ReadBool(commentsFieldOriginBox.name,
        'Checked', commentsFieldOriginBox.Checked);
      xTextPos.value := ReadInteger(xTextPos.name, 'Value', xTextPos.value);
      yTextPos.value := ReadInteger(yTextPos.name, 'Value', yTextPos.value);
      TextEdit.Text := ReadString(TextEdit.name, 'Text', TextEdit.Text);
      TextJustifyBox.ItemIndex := ReadInteger(TextJustifyBox.name,
        'ItemIndex', TextJustifyBox.ItemIndex);
      textFontSizeBox.ItemIndex := ReadInteger(textFontSizeBox.name,
        'ItemIndex', textFontSizeBox.ItemIndex);
      FontWidthEdit.Text := IntToStr(GetFontSizeValue(TFontSize(textFontSizeBox.ItemIndex)).Width);
      FontHeightEdit.Text := IntToStr(GetFontSizeValue(TFontSize(textFontSizeBox.ItemIndex)).Height);
      FieldOrientationBox.ItemIndex := ReadInteger(FieldOrientationBox.Name,
        'ItemIndex', FieldOrientationBox.ItemIndex);
      pvFilename := ReadString('Label','Filename','');
      if not FileExists(pvFilename) then
        pvFilename := '';
      LoadLabelSettings(ReadString('LabelSettings','Name','None'));
      LabelSettingsChanged;
    finally
      Free;
    end;
  end;
end;

procedure TmainW.loadZPLCommands;
var
  bin,xml: string;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  xml := Format('%s\xml\zpHelp.xml', [bin]);
  pvZPLCommands := nil;
  if FileExists(xml) then
    pvZPLCommands := TXMLToView.xmlZPLCommandsToObjectList(xml)
  else
    cmdSearch.Text := Format('Le fichier %s n''existe pas !',[xml]);
end;

procedure TmainW.lvChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(Item) and Assigned(Item.Data) then
    displayHelp(TZPLCommand(Item.Data));
end;

procedure TmainW.lvDblClick(Sender: TObject);
begin
  if Assigned(lv.Selected) and Assigned(lv.Selected.Data) then
    TextEdit.Text := TZPLCommand(lv.Selected.Data).usage;
end;

procedure TmainW.lvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    if lv.Selected <> nil then
    begin
      TextEdit.Text := Format('%s%s',
        [TextEdit.Text, TZPLCommand(lv.Selected.Data).usage]);
    end;
  end;
end;

procedure TmainW.mruMenuClick(Sender: TObject; const Filename: string);
begin
  if openFileAction.Enabled then
    openLabel(Filename);
end;

procedure TmainW.OnHint(Sender: TObject);
begin
  sb.Panels[0].Text := Application.Hint;
end;

procedure TmainW.openFileActionExecute(Sender: TObject);
var
  response: integer;
  bin: string;
begin
  if pvChanged then
  begin
    response := MessageDlg('Save changes ?', mtConfirmation,
      [mbYes, mbNo, mbCancel], 0);
    case response of
      mrYes:
        saveFileAction.Execute;
      mrNo:
        ;
      mrCancel:
        Abort;
    end;
  end;
  with TOpenDialog.Create(Self) do
  begin
    try
      Filter := 'ZPL File (*.zpl,*.zplx)|*.zpl;*.zplx|All files (*.*)|*.*';
      FilterIndex := 1;
      bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
      InitialDir := Format('%s\etik', [bin]);
      if Execute then
        openLabel(filename);
    finally
      Free;
    end;
  end;
end;

procedure TmainW.openLabel(const filename: string);
begin
  zplSource.Lines.Clear;
  if ExtractFileExt(filename).ToLower = '.zpl' then
    zplSource.Lines.LoadFromFile(filename)
  else  if ExtractFileExt(filename).ToLower = '.zplx' then
    extractZPLFromXML(filename)
  else
    zplSource.Lines.LoadFromFile(filename);

  pvChanged := False;
  pvFilename := filename;
  zplSource.Update;
  GetGraphicsAction.Execute;
  LabelFileChanged;
  sb.Panels[2].Text := Format('%d/%d',[zplSource.CaretY,zplSource.CaretX]);
  mru.AddFile(filename);
end;

procedure TmainW.QuitActionExecute(Sender: TObject);
begin
  Close;
end;

procedure TmainW.RecomputeXandYFieldOrigin(currentDpMM,newDpMM: integer);
var
  zcmd: string;
  li: TListItem;
  i: Integer;
begin
  if (currentDpMM > 0) and (newDpMM > 0) and (currentDpMM <> newDpMM) then
  begin
    zplSource.Lines.BeginUpdate;
    try
      Screen.Cursor := crHourglass;
      for i := 1 to zplSource.Lines.Count do
      begin
        zcmd := getKeywordFromSource(zplSource.Lines[i-1],1);
        if zcmd <> '' then
        begin
          li := GetZPLCmdListItemFromString(zcmd);
          if Assigned(li) and (TZPLCommand(li.Data).name = '^FO') then
          begin
            { set xTextPos and yTextPos values according to ^FOxxx,yyy }
            setXandYTextPosFromSource(zplSource.Lines[i-1].ToUpper,currentDpMM);
            ComputeXandYFieldOrigin(i,xTextPos.Value,yTextPos.Value,newDpMM);
          end;
        end;
      end;
    finally
      zplSource.Lines.EndUpdate;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TmainW.BoxActionExecute(Sender: TObject);
begin
  DrawABox;
end;

procedure TmainW.AddAZPLCommandButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pvCtrlIsDown := ssCtrl in Shift;
end;

procedure TmainW.rotateActionExecute(Sender: TObject);
begin
  if pvPdf.Rotation < High(TPdfPageRotation) then
    pvPdf.Rotation := Succ(pvPdf.Rotation)
  else
    pvPdf.Rotation := prNormal;
  sb.Panels[5].Text := GetEnumName(TypeInfo(TPdfPageRotation),Ord(pvPdf.Rotation))
end;

procedure TmainW.SaveAsFileActionExecute(Sender: TObject);
begin
  pvFilename := '';
  saveLabel;
end;

procedure TmainW.SaveCurrentLabelSettings;
var
  xml: string;
begin
  GetXMLPath(xml);
  TXMLToView.xmlSaveLabelSettings(pvLabelSettings, xml);
  pvLabelSettingsChanged := False;
end;

procedure TmainW.saveFileActionExecute(Sender: TObject);
begin
  saveLabel;
end;

procedure TmainW.saveLabel;
var
  z: TZPLLabel;
begin
  if not pvChanged then Exit;

  if pvFilename.Trim = '' then
  begin
    with TSaveDialog.Create(Self) do
    begin
      try
        Filter := 'ZPL File (*.zplx)|*.zplx|All files (*.*)|*.*';
        FilterIndex := 1;
        Options := [ofHideReadOnly];
        if Execute then
          pvFilename := Filename;
      finally
        Free;
      end;
    end;
  end;

  if pvFilename.Trim <> '' then
  begin
    z := TZPLLabel.Create;
    try
      z.Lines := Self.zplSource.Lines;
      z.LabelSettings := pvLabelSettings;
      z.PrinterSettings := pvPrinterSettings;
      z.SaveToFile(ChangeFileExt(pvFilename, '.zplx'));
      mru.AddFile(pvFilename);
    finally
      z.Free;
    end;
    pvChanged := False;
    LabelFileChanged;
  end;
end;

procedure TmainW.saveLabelActionExecute(Sender: TObject);
begin
  SaveCurrentLabelSettings;
end;

procedure TmainW.saveSettings;
var
  bin,
  ini: string;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  ini := Format('%s\ini',[bin]);
  ForceDirectories(ini);
  ini := Format('%s\%s',[ini,ChangeFileExt(ExtractFileName(Application.ExeName),'.ini')]);
  with TInifile.Create(ini) do
  begin
    try
      WriteInteger('actions', groupZPLCommandsAction.name,
        pvZPLCommandsGroup.toInteger);
      WriteBool(commandsPanel.name, 'Visible', commandsPanel.Visible);
      WriteInteger(commandsPanel.name, 'Width', commandsPanel.Width);
      WriteBool(helpPanel.name, 'Visible', helpPanel.Visible);
      WriteInteger(helpPanel.name, 'Height', helpPanel.Height);
      WriteBool(previewPanel.name, 'Visible', previewPanel.Visible);
      WriteInteger(previewPanel.name, 'Width', previewPanel.Width);
      WriteBool(commentsFieldOriginBox.name, 'Checked',
        commentsFieldOriginBox.Checked);
      WriteInteger(xTextPos.name, 'Value', xTextPos.value);
      WriteInteger(yTextPos.name, 'Value', yTextPos.value);
      WriteString(TextEdit.name, 'Text', TextEdit.Text);
      WriteInteger(TextJustifyBox.name, 'ItemIndex',
        TextJustifyBox.ItemIndex);
      WriteInteger(textFontSizeBox.name, 'ItemIndex',
        textFontSizeBox.ItemIndex);
      WriteInteger(FieldOrientationBox.Name,'ItemIndex',FieldOrientationBox.ItemIndex);
      WriteInteger(Self.name, 'Left', Self.Left);
      WriteInteger(Self.name, 'Top', Self.Top);
      WriteInteger(Self.name, 'Width', Self.Width);
      WriteInteger(Self.name, 'Height', Self.Height);
      WriteString('LabelSettings','Name',pvLabelSettings.Name);
      WriteString('Label','Filename',pvFilename);
    finally
      Free;
    end;
  end;
end;

procedure TmainW.StartLabelActionExecute(Sender: TObject);
var
  zmd: TZPLStartLabelCmd;
  zpo: TZPLPrintOrientation;
  s: string;
begin
  zplSource.Lines.Clear;
  pvChanged := False;
  LabelFileChanged;
  zpo := nil;
  zmd := TZPLStartLabelCmd(pvEngine.getZPLCommandValueObject(zmdStartLabel));
  try
    zpo := TZPLPrintOrientation(pvEngine.getZPLCommandValueObject(zmdPrintOrientation));
    zpo.PrintOrientation := pvLabelSettings.orientation;
    zmd.PrintOrientation := zpo;
    s := getSourceLine([zmd]);
    zplSource.CaretY := addSourceCodeLine(s);
    zplSourceChange(Sender);
  finally
    zmd.Free; zpo.Free;
  end;
end;

procedure TmainW.textFontSizeBoxChange(Sender: TObject);
var
  fsv: TFontSizeValue;
begin
  fsv := TComboBox(Sender).FontSizeValue;
  FontWidthEdit.Text := fsv.Width.ToString;
  FontHeightEdit.Text := fsv.Height.ToString;
end;

procedure TmainW.UpdateFieldOriginActionExecute(Sender: TObject);
begin
  ComputeXandYFieldOrigin(zplSource.CaretY,xTextPos.Value,yTextPos.Value,pvDpMM);
end;

procedure TmainW.VerticalLineActionExecute(Sender: TObject);
begin
  DrawALine(loVert);
end;

procedure TmainW.viewActionsUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  viewZPLCommandsAction.Checked := commandsPanel.Visible;
  viewZPLHelpAction.Checked := helpPanel.Visible;
  viewPreviewAction.Checked := previewPanel.Visible;
  Handled := True;
end;

procedure TmainW.viewPreviewActionExecute(Sender: TObject);
begin
  previewPanel.Visible := not previewPanel.Visible;
  if not previewPanel.Visible then
    sb.Panels[5].Text := ''
  else
  begin
    if Assigned(pvPdf) then
      sb.Panels[5].Text := GetEnumName(TypeInfo(TPdfPageRotation),Ord(pvPdf.Rotation))
    else
      sb.Panels[5].Text := '';
  end;
end;

procedure TmainW.viewZPLCommandsActionExecute(Sender: TObject);
begin
  commandsPanel.Visible := not commandsPanel.Visible;
end;

procedure TmainW.viewZPLHelpActionExecute(Sender: TObject);
begin
  helpPanel.Visible := not helpPanel.Visible;
end;

procedure TmainW.xTextPosChange(Sender: TObject);
begin
  sb.Panels[3].Text := Format('x=%d, y=%d',[xTextPos.Value * pvDpMM,yTextPos.Value * pvDpMM]);
end;

procedure TmainW.ZPLActionsUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  StartLabelAction.Enabled := not pvChanged;
  CommandAction.Enabled := (lv.Selected <> nil) and (lv.Selected.Data <> nil);
//  LabelDatabaseFieldAction.Enabled := TextEdit.Text <> '';
  DatabaseFieldAction.Enabled := LabelDatabaseFieldAction.Enabled;
  GetGraphicsAction.Enabled := zplSource.Lines.Count > 0;
  GraphicAction.Enabled := GraphicsBox.Text <> '';
  UpdateFieldOriginAction.Enabled := (zplSource.Lines.Count > 0) and (Pos('^FO',zplSource.Lines[zplSource.CaretY-1].ToUpper) > 0);
  HorizontalLineAction.Enabled := (xTextPos.Value > 0) and (yTextPos.Value > 0) and (LineLength.Value > 0) and (LineThick.Value > 0);
  VerticalLineAction.Enabled := HorizontalLineAction.Enabled;
  BoxAction.Enabled := HorizontalLineAction.Enabled and (RectHeight.Value > 0);
  Handled := True;
end;

procedure TmainW.zplSourceChange(Sender: TObject);
begin
  pvChanged := True;
  sb.Panels[2].Text := Format('%d/%d',[zplSource.CaretY,zplSource.CaretX]);
  LabelFileChanged;
end;

procedure TmainW.zplSourceClick(Sender: TObject);
var
  zcmd: string;
  li: TListItem;
begin
  sb.Panels[2].Text := Format('%d/%d',[zplSource.CaretY,zplSource.CaretX]);
  zcmd := getKeywordFromSource(zplSource.Lines[zplSource.CaretY-1],zplSource.CaretX);
  if zcmd <> '' then
  begin
    li := GetZPLCmdListItemFromString(zcmd);
    if Assigned(li) then
    begin
      displayHelp(TZPLCommand(li.Data));

      if (pvDpMM > 0) and (TZPLCommand(li.Data).name = '^FO') then
      begin
        { set xTextPos and yTextPos values according to ^FOxxx,yyy }
        setXandYTextPosFromSource(zplSource.Lines[zplSource.CaretY-1].ToUpper, pvDpMM);
      end;
    end;
  end;
end;

procedure TmainW.setXandYTextPosFromSource(Line: string; const dpmm: integer);
var
  i,wx,wy: integer;
  isNumber: Boolean;
begin
  wx := 0; wy := 0;
  i := Pos('^FO',Line);
  if i > 0 then
  begin
    { delete from line begin to ^FO included }
    Delete(Line,1,i+2);
    i := Pos(',',Line);
    if i > 0 then
    begin
      wx := StrToIntDef(Trim(Copy(Line,1,Pred(i))),0);
      Delete(Line,1,i);

      IsNumber := False;
      i := 0;
      while i < Length(Line) do
      begin
        Inc(i);
        if CharInSet(Line[i],['0'..'9']) then
          IsNumber := True
        else
          break;
      end;
      if isNumber then
        wy := StrToIntDef(Trim(Copy(Line,1,Pred(i))),0);
    end;

    if wx > 0 then
      xTextPos.Value := wx div dpmm;
    if wy > 0 then
      yTextPos.Value := wy div dpmm;
  end;
end;

procedure TmainW.zplSourceKeyPress(Sender: TObject; var Key: Char);
var
  tmpToken: string;
  tmpAttr: TSynHighlighterAttributes;
begin
  zplSource.GetHighlighterAttriAtRowCol(zplSource.CaretXY, tmpToken, tmpAttr);
  if tmpAttr = zplSource.Highlighter.KeywordAttribute then
    sb.Panels[0].Text := tmpToken
  else if tmpAttr = zplSource.Highlighter.CommentAttribute then
    sb.Panels[0].Text := tmpToken + ' is a comment ';
end;

function TmainW.getSourceLine(zmd: array of TZPLCommand): string;
begin
  Result := pvEngine.get(zmd);
end;

procedure TmainW.PreviewLabelActionExecute(Sender: TObject);
begin
  try PreviewLabel; except end;
end;

procedure TmainW.PreviewLabel;
var
  input,
  output,
  bin,
  labelary: string;
  fs: TStreamWriter;
  labelWidth,
  labelHeight: double;
begin
  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  loadBlankPDF;
  labelary := Format('%s\%s',[bin,WEB_SERVICE_FILE]);
  input := Format('%s\%s.zpl',[labelary,WEB_SERVICE_FILE]);
  output := Format('%s\%s.pdf',[labelary,WEB_SERVICE_FILE]);
  if FileExists(input) then DeleteFile(input);
  if FileExists(output) then DeleteFile(output);
  ForceDirectories(labelary);
  fs := TStreamWriter.Create(input,False,TEncoding.UTF8);
  try
    fs.Write(Trim(zplSource.Lines.Text));
  finally
    fs.Free;
  end;
  labelWidth := pvLabelSettings.width / 25.4;
  labelHeight := pvLabelSettings.height / 25.4;
  previewPanel.Visible := GetLabelFromLabelaryService(input,output,Format('%ddpmm',[pvDpMM]),Format('%.2fx%.2f',[labelWidth,LabelHeight]),olPdf);
  if previewPanel.Visible then
  begin
    if not Assigned(pvPdf) then
    begin
      pvPDF := TPdfControl.Create(Self);
      pvPDF.Parent := pdfpanel;
      pvPDF.Align := alClient;
      pvPDF.SendToBack; // put the control behind the buttons
      pvPDF.Color := clGray;
      pvPDF.ScaleMode := smZoom;
      pvPDF.PageColor := RGB(255, 255, 200);
    end;
    pvPdf.LoadFromFile(output);
    sb.Panels[5].Text := GetEnumName(TypeInfo(TPdfPageRotation),Ord(pvPdf.Rotation))
  end;
end;

end.
