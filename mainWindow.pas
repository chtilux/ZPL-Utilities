unit mainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Generics.Collections, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, zplUtils, SynEdit, SynEditHighlighter, SynHighlighterZPL,
  VCLPatches;

type
  TZPLCmd = (zmdStartLabel, zmdEndlabel, zmdTextData, zmdLineComment,
             zmdBlocComment, zmdLogo, zmdBarCode, zmdCode, zmdEOL, {zmdAlign,}
             zmdFont, zmdOrigin, zmdPrintOrientation, zmdFieldOrientation);


  // TZPLCommandCmd = class;

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
    Splitter3: TSplitter;
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
    LogoAction: TAction;
    GraphicAction: TAction;
    CommandAction: TAction;
    CommentLineAction: TAction;
    EndLineAction: TAction;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
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

  private
    { Déclarations privées }
    pvZPLCommandsGroup: Boolean;
    pvZPLCommands: TObjectList<TZPLCommand>;
    pvZPLLabels: TObjectList<TZPLLabelSettings>;
    pvChanged: Boolean;
    pvDpMM: integer;
    pvFilename: string;

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
    procedure labelChanged;
    procedure GetGraphics;

    function getSourceLine(zmd: array of TZPLCommand): string;
    function addSourceCodeLine(ALine: string): integer;
    function InsertSourceCodeLine(ALine: string): integer;
    function AppendTextToSourceCodeLine(AText: string): integer;
    procedure DatabaseFieldOrLabel(AText: string);
    procedure extractZPLFromXML(const filename: string);
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

var
  mainW: TmainW;

implementation

uses
  Inifiles, unitXML, UITypes, Clipbrd;

{$R *.dfm}

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
  exportZPLKeywordsAction.Enabled := not pvChanged;
  saveLabelAction.Enabled := pvLabelChanged;
  Handled := True;
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

procedure TmainW.GraphicActionExecute(Sender: TObject);
var
  zmd: TZPLBarCode;
  zo: TZPLOrigin;
  za: TZPLFieldOrientation;
begin
  zmd := nil; za := nil;
  zo := TZPLOrigin(pvEngine.getZPLCommandValueObject(zmdOrigin));
  try
    zo.X := xTextPos.Value;
    zo.Y := yTextPos.Value;
    zo.dpi := ZPLPrintDensity[pvLabel.Density];
    zo.Comment := commentsFieldOriginBox.Checked;

    zmd := TZPLBarCode(pvEngine.getZPLCommandValueObject(zmdBarCode));
    zmd.Text := GraphicsBox.Text;

    za := TZPLFieldOrientation(pvEngine.getZPLCommandValueObject(zmdFieldOrientation));
    za.Fieldorientation := FieldOrientationBox.FieldOrientationValue;
    za.Justify := textJustifyBox.TextJustifyValue;

    zplSource.CaretY := Succ(InsertSourceCodeLine(getSourceLine([zo,za,zmd])));
    zplSourceChange(Self);
  finally
    zo.Free;
    za.Free;
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
end;

procedure TmainW.cmdSearchChange(Sender: TObject);
var
  li: TListItem;
  i: integer;
  found: Boolean;
begin
  if Trim(cmdSearch.Text) = '' then
    Exit;
  li := lv.FindCaption(0, Format('^%s', [Trim(cmdSearch.Text).ToUpper]), True,
    True, False);
  if li = nil then
  begin
    for i := 0 to lv.Items.Count - 1 do
    begin
      found := Pos(Trim(cmdSearch.Text).ToUpper,
        lv.Items[i].SubItems[0].ToUpper) > 0;
      if found then
        li := lv.Items[i];
    end;
  end;
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
      zplSource.CaretY := Pred(InsertSourceCodeLine(getSourceLine([zmd])));
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

procedure TmainW.displayCommands;
var
  i: integer;
  c: TZPLCommand;
  categ: string;
  id: integer;
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
  DatabaseFieldOrLabel('<<'+TextEdit.Text+'>>');
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
    sb.Panels[1].Text := 'ZPL Keywords list copied to clipboard';
  end
  else
    sb.Panels[1].Text := 'Save the current file or close it';
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
    zplSource.Lines.Assign(zpl.Lines);
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
        ;
      mrCancel:
        Abort;
    end;
  end;
end;

procedure TmainW.FormCreate(Sender: TObject);
begin
  pvLoading := True;
  Application.OnHint := OnHint;
  pvChanged := False;
  pvLabel := TZPLLabel.Create;
  pvEngine := TZPLCommandEngine.Create(pvLabel);
  pvLabelChanged := False;
end;

procedure TmainW.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to pvZPLCommands.Count - 1 do
  begin
    if Assigned(pvZPLCommands[i]) then
      TZPLCommand(pvZPLCommands[i]).Free;
  end;
  pvZPLCommands.Free;

  for i := 0 to pvZPLLabels.Count - 1 do
  begin
    if Assigned(pvZPLLabels[i]) then
      TZPLLabelSettings(pvZPLLabels[i]).Free;
  end;
  pvZPLLabels.Free;

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
    (ActiveControl <> TextEdit) and (ActiveControl <> labelDescEdit) then
  begin
    k := UpCase(Key);
    if processChar(k) then
      Key := #0;
  end;
end;

procedure TmainW.printDensityBoxChange(Sender: TObject);
begin
  computesDotsPerMM;
  labelChanged;
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
end;

procedure TmainW.GetGraphics;
var
  i,j,k: integer;
  line: string;
begin
  GraphicsBox.Items.BeginUpdate;
  try
    GraphicsBox.Items.Clear;
    for i := 0 to zplSource.Lines.Count-1 do
    begin
      line := zplSource.Lines[i].ToUpper;
      j := Pos('~DG',line);
      if j > 0 then
      begin
        k := Pos('.GRF',line);
        if k > 0 then
          GraphicsBox.Items.Add(Copy(line,j+3,k-j+1));
      end;
    end;
  finally
    GraphicsBox.Items.EndUpdate;
  end;
end;

procedure TmainW.GetGraphicsActionExecute(Sender: TObject);
begin
  GetGraphics;
end;

procedure TmainW.groupZPLCommandsActionExecute(Sender: TObject);
begin
  pvZPLCommandsGroup := not pvZPLCommandsGroup;
  lv.GroupView := pvZPLCommandsGroup;
end;

procedure TmainW.labelChanged;
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
  labelChanged;
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
    labelChanged;
  end;
end;

procedure TmainW.labelWidthEditChange(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    labelChanged;
end;

procedure TmainW.loadMainToolbar;
var
  i: integer;
begin
  for i := Ord(Low(ZPLPrintDensityDesc)) to Ord(High(ZPLPrintDensityDesc)) do
    printDensityBox.Items.Add(ZPLPrintDensityDesc[TPrintDensity(i)]);
  for i := Ord(Low(ZPLPrintOrientation)) to Ord(High(ZPLPrintOrientation)) do
    labelPrintOrientationBox.Items.Add
      (ZPLPrintOrientation[TPrintOrientation(i)]);

  with TXMLToView.Create do
  begin
    try
      pvZPLLabels := xmlZPLLabelsToObjectList
        (Format('%s\%s',
        [ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)),
        'zpAELabels.xml']));
    finally
      Free;
    end;
  end;

  for i := 0 to pvZPLLabels.Count - 1 do
  begin
    labelSettingsBox.Items.AddObject(Format('%s', [pvZPLLabels[i].Caption]),
      pvZPLLabels[i]);
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
begin
  with TInifile.Create(ChangeFileExt(Application.ExeName, '.ini')) do
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
begin
  with TXMLToView.Create do
  begin
    try
      pvZPLCommands := xmlZPLCommandsToObjectList
        (Format('%s\%s',
        [ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)),
        'zpHelp.xml']));
    finally
      Free;
    end;
  end;
end;

procedure TmainW.lvChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(Item.Data) then
  begin
    displayHelp(TZPLCommand(Item.Data));
    // TextEdit.Text := TZPLCommand(Item.Data).usage;
  end;
end;

procedure TmainW.lvDblClick(Sender: TObject);
begin
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

procedure TmainW.OnHint(Sender: TObject);
begin
  sb.Panels[1].Text := Application.Hint;
end;

procedure TmainW.openFileActionExecute(Sender: TObject);
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
  with TOpenDialog.Create(Self) do
  begin
    try
      Filter := 'ZPL File (*.zpl,*.zplx)|*.zpl;*.zplx|All files (*.*)|*.*';
      FilterIndex := 1;
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
end;

procedure TmainW.QuitActionExecute(Sender: TObject);
begin
  Close;
end;

procedure TmainW.saveFileActionExecute(Sender: TObject);
var
  z: TZPLLabel;
begin
  with TSaveDialog.Create(Self) do
  begin
    try
      if FileExists(pvFilename) then
        filename := pvFilename;
      Filter := 'ZPL File (*.zplx)|*.zplx|All files (*.*)|*.*';
      FilterIndex := 1;
      Options := [ofHideReadOnly];
      if Execute then
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
          z.SaveToFile(ChangeFileExt(filename, '.zplx'));
        finally
          z.Free;
        end;
      end;
    finally
      Free;
    end;
  end;
  pvChanged := False;
end;

procedure TmainW.saveLabel;
begin
end;

procedure TmainW.saveLabelActionExecute(Sender: TObject);
var
  lbl: TZPLLabelSettings;
begin
  lbl := nil;
  with TXMLToView.Create do
  begin
    try
      lbl := TZPLLabelSettings.Create;
      lbl.name := labelDescEdit.Text;
      lbl.Width := string(labelWidthEdit.Text).toInteger;
      lbl.Height := string(labelHeightEdit.Text).toInteger;
      lbl.orientation := labelPrintOrientationBox.printOrientationValue;
      xmlSaveLabelSettings(lbl, Format('%s\%s',
        [ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)),
        'zpAELabels.xml']));
      labelSettingsBox.Items.AddObject(lbl.Caption, lbl);
      pvLabelChanged := False;
    finally
      lbl.Free;
      Free;
    end;
  end;
end;

procedure TmainW.saveSettings;
begin
  with TInifile.Create(ChangeFileExt(Application.ExeName, '.ini')) do
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

procedure TmainW.ZPLActionsUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  StartLabelAction.Enabled := not pvChanged;
  CommandAction.Enabled := (lv.Selected <> nil) and (lv.Selected.Data <> nil);
  LabelDatabaseFieldAction.Enabled := TextEdit.Text <> '';
  DatabaseFieldAction.Enabled := LabelDatabaseFieldAction.Enabled;
  GetGraphicsAction.Enabled := zplSource.Lines.Count > 0;
  GraphicAction.Enabled := GraphicsBox.Text <> '';
  Handled := True;
end;

procedure TmainW.zplSourceChange(Sender: TObject);
begin
  pvChanged := True;
  sb.Panels[2].Text := Format('%d/%d',[zplSource.CaretY,zplSource.CaretX]);
end;

procedure TmainW.zplSourceClick(Sender: TObject);
begin
  sb.Panels[2].Text := Format('%d/%d',[zplSource.CaretY,zplSource.CaretX]);
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
    zmdBarCode :
      Result := TZPLBarCode;
    zmdFieldOrientation:
      Result := TZPLFieldOrientation;
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
  Result := '// _START' + #13#10 + #13#10 + '// _END';
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

//{ TZPLAlignment }
//
//function TZPLAlignment.getStrCmd: string;
//const
//  al: array[TAlignment] of string = ('0','1');
//begin
//  Result := Format('^FW R,%s',[al[FAlignment]]);
//end;
//
//procedure TZPLAlignment.SetAlignment(const Value: TAlignment);
//begin
//  FAlignment := Value;
//end;

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
  Result := Format('^PO%s',[po[PrintOrientation]]);
end;

procedure TZPLPrintOrientation.SetPrintOrientation(
  const Value: TPrintOrientation);
begin
  FPrintOrientation := Value;
end;

{ TZPLBarCode }

function TZPLBarCode.getStrCmd: string;
begin
  Result := Format('^XG%s,1,1^FS',[Text]);
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

end.
