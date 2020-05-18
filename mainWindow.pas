unit mainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ImgList,
  Vcl.ToolWin, Generics.Collections, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, zplUtils, SynEdit, SynEditHighlighter, SynHighlighterZPL,
  PdfiumCtrl, MruUnit, NumberEdit;

type
  TZPLCmd = (zmdStartLabel, zmdEndlabel, zmdTextData, zmdLineComment,
             zmdBlocComment, zmdLogo, zmdBarCode, zmdCode, zmdEOL,
             zmdFont, zmdOrigin, zmdPrintOrientation, zmdFieldOrientation,
             zmdGraphic, zmdHorzLine, zmdVertLine, zmdBox, zmdLineOrigin);


  TZPLCommandEngine = class;

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
    printDensityBox: TComboBox;
    ToolButton9: TToolButton;
    labelSettingsBox: TComboBox;
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
    labelWidthEdit: TEdit;
    ToolButton12: TToolButton;
    labelHeightEdit: TEdit;
    ToolButton13: TToolButton;
    labelDescEdit: TEdit;
    ToolButton14: TToolButton;
    labelPrintOrientationBox: TComboBox;
    ToolButton15: TToolButton;
    SaveLabelFormatButton: TButton;
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
    Button7: TButton;
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
    procedure labelSettingsBoxChange(Sender: TObject);
    procedure saveLabelActionExecute(Sender: TObject);
    procedure viewActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure GUIActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure zplSourceChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure printDensityBoxChange(Sender: TObject);
    procedure openFileActionExecute(Sender: TObject);
    procedure saveFileActionExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure exportZPLKeywordsActionExecute(Sender: TObject);
    procedure closeFileActionExecute(Sender: TObject);
    procedure zplSourceKeyPress(Sender: TObject; var Key: Char);
    procedure textFontSizeBoxChange(Sender: TObject);
    procedure ZPLActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure labelWidthEditChange(Sender: TObject);
    procedure labelPrintOrientationBoxChange(Sender: TObject);
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

  private
    { Déclarations privées }
    pvZPLCommandsGroup: Boolean;
    pvZPLCommands: TObjectList<TZPLCommand>;
    pvZPLLabels: TObjectList<TZPLLabelSettings>;
    pvChanged: Boolean;
    pvDpMM: integer;
    pvFilename: string;
    pvPdf: TPdfControl;

    pvLoading: boolean;
    pvLabel: TZPLLabel;
    pvEngine: TZPLCommandEngine;
    pvLabelChanged: Boolean;

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
    procedure labelFormatChanged;
    procedure labelFileChanged;

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
  public
    { Déclarations publiques }
  end;

  TZPLCommandValueClass = class of TZPLCommand;

  TZPLCommandValueFactory = class(TObject)
    function getZPLCommandValueObject(zmd: TZPLCmd): TZPLCommand;
    function getZPLCommandValueClass(zmd: TZPLCmd): TZPLCommandValueClass;
  end;

  TZPLCommandEngine = class(TObject)
  private
    pvLabel: TZPLLabel;
    pvFactory: TZPLCommandValueFactory;

  public
    constructor Create(ALabel: TZPLLabel);
    destructor Destroy; override;
    function getZPLCommandValueObject(zmd: TZPLCmd): TZPLCommand;
    function get(Values: array of TZPLCommand): string;
  end;

  TZPLPrintOrientation = class(TZPLCommand)
  private
    FPrintOrientation: TPrintOrientation;
    procedure SetPrintOrientation(const Value: TPrintOrientation);
  public
    constructor Create; override;
    function getStrCmd: string; override;
    property PrintOrientation: TPrintOrientation read FPrintOrientation write SetPrintOrientation default poNormal;
  end;

  TZPLStartLabelCmd = class(TZPLCommand)
  private
    FPrintOrientation: TZPLPrintOrientation;
    pvFreePO: boolean;
    procedure SetPrintOrientation(const Value: TZPLPrintOrientation);
  public
    constructor Create; override;
    destructor Destroy; override;
    function getStrCmd: string; override;
    property PrintOrientation: TZPLPrintOrientation read FPrintOrientation write SetPrintOrientation;
  end;

  TZPLEndLabelCmd = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLBlocCommentCmd = class(TZPLCommand)
  private
    FFirstSelectedLine: integer;
    FLastSelectedLine: integer;
    procedure SetFirstSelectedLine(const Value: integer);
    procedure SetLastSelectedLine(const Value: integer);
  public
    constructor Create; override;
    function getStrCmd: string; override;
    property FirstSelectedLine: integer read FFirstSelectedLine write SetFirstSelectedLine default 0;
    property LastSelectedLine: integer read FLastSelectedLine write SetLastSelectedLine default 0;
  end;

  TZPLLineCommentCmd = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLTextDataCmd = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLEOLCmd = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLGraphic = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLBarCode = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLFieldOrientation = class(TZPLCommand)
  private
    FFieldOrientation: TFieldOrientation;
    FJustify: TTextJustify;
    procedure SetFieldOrientation(const Value: TFieldOrientation);
    procedure SetJustify(const Value: TTextJustify);
  public
    constructor Create; override;
    function getStrCmd: string; override;
    property Fieldorientation: TFieldOrientation read FFieldOrientation write SetFieldOrientation default foNormal;
    property Justify: TTextJustify read FJustify write SetJustify default tjLeft;
  end;

  TZPLFont = class(TZPLCommand)
  private
    FWidth: integer;
    FHeight: integer;
    procedure SetHeight(const Value: integer);
    procedure SetWidth(const Value: integer);
  public
    function getStrCmd: string; override;
    property Width: integer read FWidth write SetWidth;
    property Height: integer read FHeight write SetHeight;
  end;

  TZPLOrigin = class(TZPLCommand)
  private
    FY: integer;
    FX: integer;
    FComment: boolean;
    Fdpi: integer;
    procedure SetX(const Value: integer);
    procedure SetY(const Value: integer);
    procedure SetComment(const Value: boolean);
    procedure Setdpi(const Value: integer);
  public
    function getStrCmd: string; override;
    property X: integer read FX write SetX;
    property Y: integer read FY write SetY;
    property Comment: boolean read FComment write SetComment;
    property dpi: integer read Fdpi write Setdpi;
  end;

  TZPLLine = class;

  TZPLLineOrigin = class(TZPLOrigin)
  private
    FLine: TZPLLine;
    procedure SetLine(const Value: TZPLLine);
  public
    function getStrCmd: string; override;
    property Line: TZPLLine read FLine write SetLine;
  end;

  TZPLLine = class(TZPLCommand)
  private
    FLineOrientation: TLineOrientation;
    FLength: double;
    FThick: double;
    FDotPerMM: integer;
    FHeight: double;
    procedure SetLength(const Value: double);
    procedure SetThick(const Value: double);
    procedure SetDotPerMM(const Value: integer);
    procedure SetLineOrientation(const Value: TLineOrientation);
    procedure SetHeight(const Value: double);
  public
    function getStrCmd: string; override;
    property LineOrientation: TLineOrientation read FLineOrientation write SetLineOrientation;
    property LengthMM: double read FLength write SetLength;
    property ThickMM: double read FThick write SetThick;
    property DotPerMM: integer read FDotPerMM write SetDotPerMM;
    property HeightMM: double read FHeight write SetHeight;
  end;

  TZPLHorzLine = class(TZPLLine)
  public
    constructor Create; override;
  end;

  TZPLVertLine = class(TZPLLine)
  public
    constructor Create; override;
  end;

  TZPLBox = class(TZPLLine)
  public
    constructor Create; override;
  end;

var
  mainW: TmainW;

implementation

uses
  Inifiles, unitXML, UITypes, Clipbrd, previewLabelUnit, ShellAPI, PDFiumCore;

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
  pvLabel := TZPLLabel.Create;
  pvEngine := TZPLCommandEngine.Create(pvLabel);
  pvLabelChanged := False;

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
    (ActiveControl <> TextEdit) and (ActiveControl <> labelDescEdit) and
    (ActiveControl <> LineLength) and (ActiveControl <> LineThick) then
  begin
    k := UpCase(Key);
    if processChar(k) then
      Key := #0;
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
  saveFileAction.Enabled := pvChanged;
  SaveAsFileAction.Enabled := (pvFilename.Trim <> '') and FileExists(pvFilename) and (zplSource.Lines.Count > 0);
  exportZPLKeywordsAction.Enabled := not pvChanged;
  saveLabelAction.Enabled := pvLabelChanged;
  PreviewLabelAction.Enabled := zplSource.Lines.Count > 0;
  rotateAction.Enabled := Assigned(pvPdf);
  openFileAction.Enabled := not pvChanged;
  MRUMenuItem.Enabled := openFileAction.Enabled;
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
  labelFileChanged;
  Result := Succ(iLine);
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
  labelFileChanged;
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
    zo.dpi := ZPLPrintDensity[pvLabel.Density];
    zo.Comment := commentsFieldOriginBox.Checked;

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
//  za: TZPLFieldOrientation;
begin
  zmd := nil; {za := nil;}
  zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.dpi := ZPLPrintDensity[pvLabel.Density];
    zo.Comment := commentsFieldOriginBox.Checked;

    zmd := TZPLGraphic(pvEngine.getZPLCommandValueObject(zmdGraphic));
    zmd.Text := GraphicsBox.Text;

//    za := TZPLFieldOrientation(pvEngine.getZPLCommandValueObject(zmdFieldOrientation));
//    za.Fieldorientation := FieldOrientationBox.FieldOrientationValue;
//    za.Justify := textJustifyBox.TextJustifyValue;

    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo{,za},zmd])));
    zplSourceChange(Self);
  finally
    zo.Free;
//    za.Free;
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
  zplSource.Lines.Clear;
  pvChanged := False;
  pvFilename := '';
  labelFileChanged;
  loadBlankPDF;
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
begin
  zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([TZPLCommand(lv.Selected.Data)])));
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
  pvDpMM := ZPLPrintDensity[printDensityBox.printDensityValue];
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
    labelFileChanged;
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
    zo.dpi := ZPLPrintDensity[pvLabel.Density];
    zo.Comment := commentsFieldOriginBox.Checked;

    zf := TZPLFont(pvEngine.getZPLCommandValueObject(zmdFont));
    zf.Width := StrToIntDef(FontWidthEdit.Text,20);
    zf.Height := StrToIntDef(FontHeightEdit.Text,20);

    za := TZPLFieldOrientation(pvEngine.getZPLCommandValueObject(zmdFieldOrientation));
    za.Fieldorientation := FieldOrientationBox.FieldOrientationValue;
    za.Justify := textJustifyBox.TextJustifyValue;

    zmd := TZPLTextDataCmd(pvEngine.getZPLCommandValueObject(zmdTextData));
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
    labelWidthEdit.Text := IntToStr(zpl.ALabel.width);
    labelHeightEdit.Text := IntToStr(zpl.ALabel.height);
    labelDescEdit.Text := zpl.ALabel.name;
    labelPrintOrientationBox.ItemIndex := Ord(zpl.ALabel.orientation);
    printDensityBox.ItemIndex := printDensityBox.Items.IndexOf(ZPLPrintDensityDesc[getPrintDensity(zpl.ALabel.density)]);
    zplSource.Lines.Assign(zpl.Lines);
    computesDotsPerMM;
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
    response := MessageDlg('Save changes ?', mtConfirmation,
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
end;

procedure TmainW.printDensityBoxChange(Sender: TObject);
begin
  if (zplSource.Lines.Count > 0) and (MessageDlg('Faut-il recalculer tous les Field Origin ^FO ?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    RecomputeXandYFieldOrigin(pvDpMM,ZPLPrintDensity[printDensityBox.printDensityValue]);
  computesDotsPerMM;
  labelFormatChanged;
end;

function TmainW.processChar(var k: Char): Boolean;
begin
  Result := True;
  case k of
    'A' : begin
      zplSource.SelectAll;
      Clipboard.AsText := zplSource.SelText;
      zplSource.SetFocus;
    end;
    'E' : TextEdit.SetFocus;
    'F' : textFontSizeBox.SetFocus;
    'J' : textJustifyBox.SetFocus;
    'G' : GraphicsBox.SetFocus;
    'M','.' : cmdSearch.SetFocus;
    'O' : FieldOrientationBox.SetFocus;
    'N' : commentsFieldOriginBox.SetFocus;
    'L' : xTextPos.SetFocus;
    'T' : yTextPos.SetFocus
  else
    Result := False;
  end;
end;

procedure TmainW.FormShow(Sender: TObject);
begin
  loadMainToolbar;
  loadZPLCommands;
  displayCommands;
  loadSettings;
  if labelSettingsBox.ItemIndex > -1 then
    labelSettingsBoxChange(Self);
  pvLoading := False;
  GetGraphicsAction.Execute;
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

procedure TmainW.labelFileChanged;
const
  cs: array[Boolean] of string = ('','(*)');
begin
  sb.Panels[4].Text := Format('%s %s',[pvFilename,cs[pvChanged]]);
end;

procedure TmainW.labelFormatChanged;
begin
  if not pvLoading then
  begin
    pvLabel.LabelName := labelDescEdit.Text;
    pvLabel.Density := printDensityBox.printDensityValue;
    pvLabel.PrintOrientation :=
      labelPrintOrientationBox.printOrientationValue;
    pvLabel.Width := StrToIntDef(labelWidthEdit.Text, 0);
    pvLabel.Height := StrToIntDef(labelHeightEdit.Text, 0);
    pvLabelChanged := True;
  end;
end;

procedure TmainW.labelPrintOrientationBoxChange(Sender: TObject);
begin
  labelFormatChanged;
end;

procedure TmainW.labelSettingsBoxChange(Sender: TObject);
var
  lbl: TZPLLabelSettings;
begin
  lbl := TZPLLabelSettings(labelSettingsBox.Items.Objects
    [labelSettingsBox.ItemIndex]);
  if Assigned(lbl) then
  begin
    labelWidthEdit.Text := lbl.Width.ToString;
    labelWidthEdit.Modified := False;
    labelHeightEdit.Text := lbl.Height.ToString;
    labelHeightEdit.Modified := False;
    labelDescEdit.Text := lbl.name;
    labelDescEdit.Modified := False;
    labelPrintOrientationBox.ItemIndex := Ord(lbl.orientation);
    labelFormatChanged;
  end;
end;

procedure TmainW.labelWidthEditChange(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    labelFormatChanged;
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

procedure TmainW.DrawABox;
begin
  DrawALine(loBox);
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
    zo.dpi := ZPLPrintDensity[pvLabel.Density];
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
    zmd.DotPerMM := zo.dpi;
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
begin
  for i := Ord(Low(ZPLPrintDensityDesc)) to Ord(High(ZPLPrintDensityDesc)) do
    printDensityBox.Items.Add(ZPLPrintDensityDesc[TPrintDensity(i)]);
  for i := Ord(Low(ZPLPrintOrientation)) to Ord(High(ZPLPrintOrientation)) do
    labelPrintOrientationBox.Items.Add
      (ZPLPrintOrientation[TPrintOrientation(i)]);

  bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  xml := Format('%s\xml\zpAELabels.xml', [bin]);
  if FileExists(xml) then
    pvZPLLabels := TXMLToView.xmlZPLLabelsToObjectList(xml);
  if Assigned(pvZPLLabels) then
  begin
    for i := 0 to pvZPLLabels.Count - 1 do
    begin
      labelSettingsBox.Items.AddObject(Format('%s', [pvZPLLabels[i].Caption]),
        pvZPLLabels[i]);
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
      printDensityBox.ItemIndex := ReadInteger('toolbar',
        printDensityBox.name, -1);
      computesDotsPerMM;
      labelSettingsBox.ItemIndex := ReadInteger('toolbar',
        labelSettingsBox.name, -1);
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
  labelFileChanged;
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

procedure TmainW.rotateActionExecute(Sender: TObject);
begin
  if pvPdf.Rotation < High(TPdfPageRotation) then
    pvPdf.Rotation := Succ(pvPdf.Rotation)
  else
    pvPdf.Rotation := prNormal;
end;

procedure TmainW.SaveAsFileActionExecute(Sender: TObject);
begin
  pvFilename := '';
  saveLabel;
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
      z.LabelName := Self.labelDescEdit.Text;
      z.Density := Self.printDensityBox.printDensityValue;
      z.PrintOrientation := Self.labelPrintOrientationBox.
        printOrientationValue;
      z.Width := string(Self.labelWidthEdit.Text).toInteger;
      z.Height := string(Self.labelHeightEdit.Text).toInteger;
      z.Lines := Self.zplSource.Lines;
      z.SaveToFile(ChangeFileExt(pvFilename, '.zplx'));
    finally
      z.Free;
    end;
    pvChanged := False;
    labelFileChanged;
  end;
end;

procedure TmainW.saveLabelActionExecute(Sender: TObject);
var
  lbl: TZPLLabelSettings;
  bin,
  xml: string;
begin
  lbl := TZPLLabelSettings.Create;
  try
    lbl.name := labelDescEdit.Text;
    lbl.Width := string(labelWidthEdit.Text).toInteger;
    lbl.Height := string(labelHeightEdit.Text).toInteger;
    lbl.orientation := labelPrintOrientationBox.printOrientationValue;
    bin := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
    xml := Format('%s\xml\zpAELabels.xml', [bin]);
    TXMLToView.xmlSaveLabelSettings(lbl, xml);
    labelSettingsBox.Items.AddObject(lbl.Caption, lbl);
    pvLabelChanged := False;
  finally
    lbl.Free;
  end;
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
      WriteInteger('toolbar', printDensityBox.name, printDensityBox.ItemIndex);
      WriteInteger('toolbar', labelSettingsBox.name,
        labelSettingsBox.ItemIndex);
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
  labelFileChanged;
  pvLabel.LabelName := labelDescEdit.Text;
  pvLabel.Density := printDensityBox.printDensityValue;
  pvLabel.PrintOrientation := labelPrintOrientationBox.printOrientationValue;
  pvLabel.Width := string(labelWidthEdit.Text).toInteger;
  pvLabel.Height := string(labelHeightEdit.Text).toInteger;
  zpo := nil;
  zmd := TZPLStartLabelCmd(pvEngine.getZPLCommandValueObject(zmdStartLabel));
  try
    zpo := TZPLPrintOrientation(pvEngine.getZPLCommandValueObject(zmdPrintOrientation));
    zpo.PrintOrientation := labelPrintOrientationBox.printOrientationValue;
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
  LabelDatabaseFieldAction.Enabled := TextEdit.Text <> '';
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
  labelFileChanged;
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

      if TZPLCommand(li.Data).name = '^FO' then
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

  labelWidth := StrToInt(labelWidthEdit.Text) / 25.4;
  labelHeight := StrToInt(labelHeightEdit.Text) / 25.4;
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
//    ShellExecute(Application.Handle,'open',PChar(output),nil,nil,sw_normal);
  end;
end;

{ TZPLCommandEngine }

constructor TZPLCommandEngine.Create(ALabel: TZPLLabel);
begin
  pvLabel := ALabel;
  pvFactory := TZPLCommandValueFactory.Create;
end;

destructor TZPLCommandEngine.Destroy;
begin
  pvFactory.Free;
  inherited;
end;

function TZPLCommandEngine.get(Values: array of TZPLCommand): string;
var
  z: TZPLCommand;
begin
  for z in Values do
    Result := Format('%s%s ', [Result, z.getStrCmd]);
end;

function TZPLCommandEngine.getZPLCommandValueObject(zmd: TZPLCmd): TZPLCommand;
begin
  Result := pvFactory.getZPLCommandValueObject(zmd);
end;

{ TZPLStartLabelCmd }
constructor TZPLStartLabelCmd.Create;
begin
  inherited;
  FPrintOrientation := nil;
  pvFreePO := True;
end;

destructor TZPLStartLabelCmd.Destroy;
begin
  if pvFreePO then
    FPrintOrientation.Free;
  inherited;
end;

function TZPLStartLabelCmd.getStrCmd: string;
begin
  if not Assigned(FPrintOrientation) then
    FPrintOrientation := TZPLPrintOrientation.Create;

  Result := '^XA'
           +#13#10
           +#13#10
           +PrintOrientation.getStrCmd
           +#13#10#13#10
           +'^XZ';
end;

{ TZPLCommentBlocCmd }

function TZPLEndLabelCmd.getStrCmd: string;
begin
  Result := '^XZ';
end;

procedure TZPLStartLabelCmd.SetPrintOrientation(
  const Value: TZPLPrintOrientation);
begin
  FPrintOrientation := Value;
  pvFreePO := False;
end;

{ TZPLTextDataCmd }

function TZPLTextDataCmd.getStrCmd: string;
begin
  Result := Format('^FD%s^FS',[Text]);
end;

{ TZPLCommandValueFactory }

function TZPLCommandValueFactory.getZPLCommandValueClass(zmd: TZPLCmd)
  : TZPLCommandValueClass;
begin
  case zmd of
    zmdStartLabel:
      Result := TZPLStartLabelCmd;
    zmdEndlabel:
      Result := TZPLEndLabelCmd;
    zmdTextData:
      Result := TZPLTextDataCmd;
    zmdLineComment:
      Result := TZPLLineCommentCmd;
    zmdBlocComment:
      Result := TZPLBlocCommentCmd;
    zmdEOL:
      Result := TZPLEOLCmd;
    zmdFont:
      Result := TZPLFont;
    zmdOrigin:
      Result := TZPLOrigin;
    zmdPrintOrientation:
      Result := TZPLPrintorientation;
    zmdBarCode:
      Result := TZPLBarCode;
    zmdGraphic:
      Result := TZPLGraphic;
    zmdFieldOrientation:
      Result := TZPLFieldOrientation;
    zmdHorzLine:
      Result := TZPLHorzLine;
    zmdVertLine:
      Result := TZPLVertLine;
    zmdBox:
      Result := TZPLBox;
    zmdLineOrigin:
      Result := TZPLLineOrigin;
  else
    Result := TZPLCommand;
  end
end;

function TZPLCommandValueFactory.getZPLCommandValueObject(zmd: TZPLCmd)
  : TZPLCommand;
begin
  Result := getZPLCommandValueClass(zmd).Create;
end;

{ TZPLBlocCommentCmd }

constructor TZPLBlocCommentCmd.Create;
begin
  inherited;
  FFirstSelectedLine := 0;
  FLastSelectedLine := 0;
end;

function TZPLBlocCommentCmd.getStrCmd: string;
begin
  Result := '// _START' + #13#10 + '// _END';
end;

function TZPLLineCommentCmd.getStrCmd: string;
begin
  Result := Format('^FX %s ^FS',[Text]);
end;

procedure TZPLBlocCommentCmd.SetFirstSelectedLine(const Value: integer);
begin
  FFirstSelectedLine := Value;
end;

procedure TZPLBlocCommentCmd.SetLastSelectedLine(const Value: integer);
begin
  FLastSelectedLine := Value;
end;

{ TZPLEOLCmd }

function TZPLEOLCmd.getStrCmd: string;
begin
  Result := '^FS';
end;

{ TZPLFont }

function TZPLFont.getStrCmd: string;
begin
  Result := Format('^CF0,%d,%d',[Width,Height]);
end;

procedure TZPLFont.SetHeight(const Value: integer);
begin
  FHeight := Value;
end;

procedure TZPLFont.SetWidth(const Value: integer);
begin
  FWidth := Value;
end;

{ TZPLOrigin }

function TZPLOrigin.getStrCmd: string;
begin
  if Comment then
  begin
    Result := Format('^FX x=%d, y=%d ^FS',[X, Y])+#13#10;
  end;
  Result := Format('%s^FO%.4d,%.4d',[Result,FX*dpi,FY*dpi]);
end;

procedure TZPLOrigin.SetComment(const Value: boolean);
begin
  FComment := Value;
end;

procedure TZPLOrigin.Setdpi(const Value: integer);
begin
  Fdpi := Value;
end;

procedure TZPLOrigin.SetX(const Value: integer);
begin
  FX:= Value;
end;

procedure TZPLOrigin.SetY(const Value: integer);
begin
  FY := Value;
end;

{ TZPLPrintOrientation }

constructor TZPLPrintOrientation.Create;
begin
  inherited;
  FPrintOrientation := poNormal;
end;

function TZPLPrintOrientation.getStrCmd: string;
const
  po: array[TPrintOrientation] of string = ('N','I');
begin
  Result := '';
  if PrintOrientation > poNormal then
    Result := Format('^PO%s',[po[PrintOrientation]]);
end;

procedure TZPLPrintOrientation.SetPrintOrientation(
  const Value: TPrintOrientation);
begin
  FPrintOrientation := Value;
end;

{ TZPLBarCode }

function TZPLGraphic.getStrCmd: string;
begin
  Result := Format('^XGR:%s,1,1^FS',[Text]);
end;

{ TZPLBarCode }

function TZPLBarCode.getStrCmd: string;
begin
  Result := Text;
end;

{ TZPLFieldOrientation }

constructor TZPLFieldOrientation.Create;
begin
  inherited;
  FFieldOrientation := foNormal;
  FJustify := tjLeft;
end;

function TZPLFieldOrientation.getStrCmd: string;
const
  al: array[TFieldOrientation] of string = ('N','R','I','B');
begin
  Result := '';
  if (FFieldOrientation > foNormal) or (FJustify > tjLeft) then
    Result := Format('^FW%s,%s',[al[FFieldOrientation], Ord(FJustify).ToString]);
end;

procedure TZPLFieldOrientation.SetFieldOrientation(
  const Value: TFieldOrientation);
begin
  FFieldOrientation := Value;
end;

procedure TZPLFieldOrientation.SetJustify(const Value: TTextJustify);
begin
  FJustify := Value;
end;

{ TZPLLine }

function TZPLLine.getStrCmd: string;
var
  t: integer;
begin
  t := Trunc(FThick * FDotPerMM);
  case FLineOrientation of
    loHorz:
      Result := Format('^GB%d,%d,%d,B',[Trunc(FLength*FDotPerMM),t,t]);
    loVert:
      Result := Format('^GB%d,%d,%d,B',[t,Trunc(FLength*FDotPerMM),t]);
    loBox:
      Result := Format('^GB%d,%d,%d,B',[Trunc(FLength*FDotPerMM),Trunc(FHeight*FDotPerMM),t]);
  end;
end;

procedure TZPLLine.SetDotPerMM(const Value: integer);
begin
  FDotPerMM := Value;
end;

procedure TZPLLine.SetHeight(const Value: double);
begin
  FHeight := Value;
end;

procedure TZPLLine.SetLength(const Value: double);
begin
  FLength := Value;
end;

procedure TZPLLine.SetLineOrientation(const Value: TLineOrientation);
begin
  FLineOrientation := Value;
end;

procedure TZPLLine.SetThick(const Value: double);
begin
  FThick := Value;
end;

{ TZPLHorzLine }

constructor TZPLHorzLine.Create;
begin
  inherited;
  FLineOrientation := loHorz;
end;

{ TZPLVertLine }

constructor TZPLVertLine.Create;
begin
  inherited;
  FLineOrientation := loVert;
end;

{ TZPLLineOrigin }

function TZPLLineOrigin.getStrCmd: string;
begin
  if Comment then
  begin
    case FLine.LineOrientation of
      loHorz, loVert:
        Result := Format('^FX x=%d, y=%d, w=%f, t=%f ^FS',[X, Y, FLine.LengthMM, FLine.ThickMM])+#13#10;
      loBox:
        Result := Format('^FX x=%d, y=%d, w=%f, h=%f, t=%f ^FS',[X, Y, FLine.LengthMM, FLine.HeightMM, FLine.ThickMM])+#13#10;
    end;
  end;
  Result := Format('%s^FO%.4d,%.4d',[Result,FX*dpi,FY*dpi]);
end;

procedure TZPLLineOrigin.SetLine(const Value: TZPLLine);
begin
  FLine := Value;
end;

{ TZPLBox }

constructor TZPLBox.Create;
begin
  inherited;
  FLineOrientation := loBox;
end;

end.
