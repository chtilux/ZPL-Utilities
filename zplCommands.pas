unit zplCommands;

interface

uses
  zplUtils, System.Types;

type
  TZPLCmd = (zmdStartLabel, zmdEndlabel, zmdTextData, zmdLineComment,
             zmdBlocComment, zmdLogo, zmdBarCode, zmdCode, zmdEOL,
             zmdFont, zmdOrigin, zmdPrintOrientation, zmdFieldOrientation,
             zmdGraphic, zmdHorzLine, zmdVertLine, zmdBox, zmdLineOrigin);

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

  TZPLOrigin = class;

  TZPLTextDataCmd = class(TZPLCommand)
  private
    FFieldOrigin: TZPLOrigin;
    procedure SetFieldOrigin(const Value: TZPLOrigin);
  public
    function getStrCmd: string; override;
    property FieldOrigin: TZPLOrigin read FFieldOrigin write SetFieldOrigin;
  end;

  TZPLLineCommentCmd = class(TZPLCommand)
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

  TZPLEOLCmd = class(TZPLCommand)
  public
    function getStrCmd: string; override;
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
    FFieldOrientation: TFieldOrientation;
    FJustify: TTextJustify;
    FLabelWidth: double;
    FLabelheight: double;
    FPrinterSettings: TPrinterSettings;
    FlabelSettings: TZPLLabelSettings;
    procedure SetX(const Value: integer);
    procedure SetY(const Value: integer);
    procedure SetComment(const Value: boolean);
    procedure Setdpi(const Value: integer);
    procedure SetFieldOrientation(const Value: TFieldOrientation);
    procedure SetJustify(const Value: TTextJustify);
    procedure SetLabelWidth(const Value: double);
    procedure SetLabelheight(const Value: double);
    function  GetCoord: TPoint;
    procedure SetlabelSettings(const Value: TZPLLabelSettings);
    procedure SetPrinterSettings(const Value: TPrinterSettings);
  public
    function getStrCmd: string; override;
    property X: integer read FX write SetX;
    property Y: integer read FY write SetY;
    property Comment: boolean read FComment write SetComment;
//    property DPI: integer read Fdpi write Setdpi;
    property FieldOrientation: TFieldOrientation read FFieldOrientation write SetFieldOrientation;
    property Justify: TTextJustify read FJustify write SetJustify;
//    property LabelWidth: double read FLabelWidth write SetLabelWidth;
//    property Labelheight: double read FLabelheight write SetLabelheight;
    property labelSettings: TZPLLabelSettings read FlabelSettings write SetlabelSettings;
    property PrinterSettings: TPrinterSettings read FPrinterSettings write SetPrinterSettings;
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
    property FieldOrientation: TFieldOrientation read FFieldOrientation write SetFieldOrientation default foNormal;
    property Justify: TTextJustify read FJustify write SetJustify default tjLeft;
  end;

  TZPLBarCode = class(TZPLCommand)
  public
    function getStrCmd: string; override;
  end;

  TZPLGraphic = class(TZPLCommand)
  public
    function getStrCmd: string; override;
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

implementation

uses
  SysUtils;

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
var
  s: string;
begin
  s := Text;
  if Length(s) = 0 then
    s := Format('x=%d,y=%d,%d,%d',[FFieldOrigin.FX, FFieldOrigin.FY, Ord(FFieldOrigin.FieldOrientation),Ord(FFieldOrigin.FJustify)]);
  Result := Format('^FD%s^FS',[s]);
end;

procedure TZPLTextDataCmd.SetFieldOrigin(const Value: TZPLOrigin);
begin
  FFieldOrigin := Value;
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

function TZPLOrigin.GetCoord: TPoint;
var
  cx,cy,dpi: integer;
begin
  Result.X := 0; Result.Y := 0; dpi := PrinterSettings.DPI;
  cx := Trunc(labelSettings.width * dpi);
  cy := Trunc(labelSettings.height * dpi);

  case FieldOrientation of
    foNormal,foRotated90,foBottomUp270:begin
      case Justify of
        tjLeft,tjRight: begin
          Result.X := FX*dpi;
          Result.Y := (FY+PrinterSettings.NonPrintableTopMargin) * dpi;
        end;
      end;
    end;

    foInverted180: begin
      case Justify of
        tjLeft: begin
          Result.X := cx - FX*dpi;
          Result.Y := cy - (FY+PrinterSettings.NonPrintableTopMargin)*dpi;
        end;
        tjRight: begin
          Result.X := cx - FX*dpi;
          Result.Y := cy - (FY+PrinterSettings.NonPrintableTopMargin)*dpi;
        end;
      end;
    end;
  end;
end;

function TZPLOrigin.getStrCmd: string;
var
  p: TPoint;
begin
  if Comment then
    Result := Format('^FX x=%d, y=%d ^FS',[X, Y])+#13#10;
  p := GetCoord;
  Result := Format('%s^FO%.4d,%.4d',[Result,p.X,p.Y]);
end;

procedure TZPLOrigin.SetComment(const Value: boolean);
begin
  FComment := Value;
end;

procedure TZPLOrigin.Setdpi(const Value: integer);
begin
  Fdpi := Value;
end;

procedure TZPLOrigin.SetFieldOrientation(const Value: TFieldOrientation);
begin
  FFieldOrientation := Value;
end;

procedure TZPLOrigin.SetJustify(const Value: TTextJustify);
begin
  FJustify := Value;
end;

procedure TZPLOrigin.SetLabelheight(const Value: double);
begin
  FLabelheight := Value;
end;

procedure TZPLOrigin.SetlabelSettings(const Value: TZPLLabelSettings);
begin
  FlabelSettings := Value;
end;

procedure TZPLOrigin.SetLabelWidth(const Value: double);
begin
  FLabelWidth := Value;
end;

procedure TZPLOrigin.SetPrinterSettings(const Value: TPrinterSettings);
begin
  FPrinterSettings := Value;
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
  Result := Format('%s^FO%.4d,%.4d',[Result,FX*PrinterSettings.DPI,FY*PrinterSettings.DPI]);
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
      Result := TZPLPrintOrientation;
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
    if Assigned(z) then
       Result := Format('%s%s ', [Result, z.getStrCmd]);
end;

function TZPLCommandEngine.getZPLCommandValueObject(zmd: TZPLCmd): TZPLCommand;
begin
  Result := pvFactory.getZPLCommandValueObject(zmd);
end;

end.
