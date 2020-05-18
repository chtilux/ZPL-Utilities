unit zplUtils;

interface

uses
  System.Classes, Graphics, Vcl.StdCtrls, Generics.Collections, Contnrs;

type
  TZPLCommandParameterValue = class(TObject)
  public
    description,
    value: string;
    constructor Create(const desc, value: string);
  end;

  TZPLCommandParameter = class(TObject)
  public
    name,
    code,
    description,
    default,
    acceptedValue,
    size,
    min,
    max: string;
    values: TObjectList<TZPLCommandParameterValue>;
    constructor Create;
    destructor Destroy; override;
    function addValue(const valueName, valueDescription: string): integer;
    function ToString: string; override;
  end;

  TZPLCommand = class(TObject)
  private
    FText: string;
    procedure SetText(const Value: string);
  public
    name,
    category,
    shortDesc,
    longDesc,
    usage,
    assistant,
    command: string;
    params: TObjectList<TZPLCommandParameter>;
    constructor Create; virtual;
    destructor Destroy; override;
    procedure clean;
    function getStrCmd: string; virtual;
    property Text: string read FText write SetText;
  end;

  TPrintOrientation = (poNormal,poInverse);

  TZPLLabelSettings = class(TObject)
  private
    function getCaption: string;
  public
    name: string;
    width,
    height: integer;
    orientation: TPrintOrientation;
    density: integer;
    property Caption: string read getCaption;
  end;

  TZPLLabelValues = class(TObject)
  public
    ALabel: TZPLLabelSettings;
    Lines: TStrings;
    constructor Create;
    destructor Destroy; override;
  end;

  TFontSizeValue = record
    Width,
    Height: integer;
  end;

  TFontSize = (fsSmall,fsMedium,fsLarge,fsXLarge,fsUser);
  TPrintDensity = (pi152,pi203,pi300,pi600);
  TFieldOrientation = (foNormal,foRotated90,foInverted180,foBottomUp270);
  TTextJustify = (tjLeft,tjRight);
  TLineOrientation = (loHorz, loVert);

  TComboBoxHelper = class helper for TComboBox
  public
    function AsString: string;
    function printDensityValue: TPrintDensity;
    function printOrientationValue: TPrintOrientation;
    function AlignmentValue: TAlignment;
    function FontSize: TFontSize;
    function FontSizeValue: TFontSizeValue;
    function FieldOrientationValue: TFieldOrientation;
    function TextJustifyValue: TTextJustify;
  end;

  TZPLLine = class(TObject)
  private
    FCommands: TObjectList<TZPLCommand>;
  public
    constructor Create;
    destructor Destroy; override;
    property Commands: TObjectList<TZPLCommand> read FCommands;
  end;

  TZPLLabel = class(TObject)
  private
    FDensity: TPrintDensity;
    FPrintOrientation: TPrintOrientation;
    FDefFontSize: TFontSize;
    FDefAlignment: TAlignment;
    FLines: TStrings;
    FLabelName: string;
    FWidth: integer;
    FHeight: integer;
    FVersion: string;
    procedure SetDensity(const Value: TPrintDensity);
    procedure SetPrintOrientation(const Value: TPrintOrientation);
    procedure SetDefFontSize(const Value: TFontSize);
    procedure SetLabelName(const Value: string);
    procedure SetHeight(const Value: integer);
    procedure SetWidth(const Value: integer);
    procedure SetLines(const Value: TStrings);
  public
    constructor Create;
    destructor Destroy; override;
//    procedure LoadFromFile(const filename: string);
    procedure SaveToFile(const filename: string);
    property LabelName: string read FLabelName write SetLabelName;
    property Density: TPrintDensity read FDensity write SetDensity default pi300;
    property PrintOrientation: TPrintOrientation read FPrintOrientation write SetPrintOrientation default poNormal;
    property Width: integer read FWidth write SetWidth;
    property Height: integer read FHeight write SetHeight;
    property DefFontSize: TFontSize read FDefFontSize write SetDefFontSize default fsMedium;
    property Lines: TStrings read FLines write SetLines;
    property Version: string read FVersion;
  end;

const
  ZPLPrintDensityDesc: array[TPrintDensity] of string = (' 6 dpmm (152 dpi)',
                                                         ' 8 dpmm (203 dpi)',
                                                         '12 dpmm (300 dpi)',
                                                         '24 dpmm (600 dpi)');
  ZPLPrintDensity: array[TPrintDensity] of integer = (6,8,12,24);
  ZPLPrintOrientation: array[TPrintOrientation] of string = ('Normal','Inverted');
  ZPLFontSize: array[TFontSize] of string = ('Small','Medium','Large','X-Large','User defined');
  ZPLTextJustify: array[TTextJustify] of string = ('Left Justify','Right Justify');
  ZPLFieldOrientation: array[TFieldOrientation] of string = ('Normal','Rotated 90°','Inverted 180°','Bottom-Up 270°');

  function GetFontSizeValue(Size: TFontSize): TFontSizeValue;
  function getPrintDensity(Value: integer): TPrintDensity;

implementation

uses
  SysUtils, u_pro_strings, unitXML;

const
  ZPLFontSizeValues: array[TFontSize] of  TFontSizeValue = ((Width:10;Height:10),
                                                            (Width:20;Height:20),
                                                            (Width:40;Height:40),
                                                            (Width:60;Height:60),
                                                            (Width:0;Height:0));

function GetFontSizeValue(Size: TFontSize): TFontSizeValue;
begin
  Result := ZPLFontSizeValues[Size];
end;

function getPrintDensity(Value: integer): TPrintDensity;
begin
  case Value of
     6: Result := pi152;
     8: Result := pi203;
    12: Result := pi300;
    24: Result := pi600;
    else
      Result := pi300;
  end;
end;
{ TComboBoxHelper }

function TComboBoxHelper.AlignmentValue: TAlignment;
begin
  Result := TAlignment(Self.ItemIndex);
end;

function TComboBoxHelper.AsString: string;
begin
  Result := Self.Items[Self.ItemIndex];
end;

function TComboBoxHelper.FieldOrientationValue: TFieldOrientation;
begin
  Result := TFieldOrientation(Self.ItemIndex);
end;

function TComboBoxHelper.FontSize: TFontSize;
begin
  Result := TFontSize(Self.ItemIndex);
end;

function TComboBoxHelper.FontSizeValue: TFontSizeValue;
begin
  Result := ZPLFontSizeValues[TFontSize(Self.ItemIndex)];
end;

function TComboBoxHelper.printDensityValue: TPrintDensity;
begin
  Result := TPrintDensity(Self.ItemIndex);
end;

function TComboBoxHelper.printOrientationValue: TPrintOrientation;
begin
  Result := TPrintOrientation(Self.ItemIndex);
end;

function TComboBoxHelper.TextJustifyValue: TTextJustify;
begin
  Result := TTextJustify(Self.ItemIndex);
end;

{ TZPLCommandParameterValue }

constructor TZPLCommandParameterValue.Create(const desc, value: string);
begin
  Self.description := desc;
  Self.value := value;
end;

{ TZPLCommandParameter }

function TZPLCommandParameter.addValue(const valueName,
  valueDescription: string): integer;
begin
  Result := values.Add(TZPLCommandParameterValue.Create(valueDescription,valueName));
end;

constructor TZPLCommandParameter.Create;
begin
  values := TObjectList<TZPLCommandParameterValue>.Create(False);
end;

destructor TZPLCommandParameter.Destroy;
var
  i: integer;
begin
  for i := 0 to values.Count-1 do
    TZPLCommandParameterValue(values[i]).Free;
  values.Free;
  inherited;
end;

function TZPLCommandParameter.ToString: string;
var
  i: integer;
begin
  Result := Format('Name=%s, Code=%s, Description=%s, AcceptedValue=%s, Default=%s, Min=%s, Max=%s, Size=%s',[name,code,description,acceptedValue,default,min,max,size]);
  for i := 0 to values.Count-1 do
    Result := Format('%s, [%s.%s]',[Result, TZPLCommandParameterValue(values[i]).description,TZPLCommandParameterValue(values[i]).value]);
end;

{ TZPLCommand }

procedure TZPLCommand.clean;
begin
  longDesc := FindAndReplaceAll(longDesc,'\r\n',#13#10);
end;

constructor TZPLCommand.Create;
begin
  params := TObjectList<TZPLCommandParameter>.Create(False);
end;

destructor TZPLCommand.Destroy;
var
  i: integer;
begin
  for i := 0 to params.Count-1 do
    TZPLCommandParameter(params[i]).Free;
  params.Free;
  inherited;
end;

function TZPLCommand.getStrCmd: string;
begin
  Result := Usage;
end;

procedure TZPLCommand.SetText(const Value: string);
begin
  FText := Value;
end;

{ TZPLLabel }

function TZPLLabelSettings.getCaption: string;
begin
  Result := Format('%s - [%d x %d mm]',[name, width, height]);
end;

{ TZPLLabel }

constructor TZPLLabel.Create;
begin
  FVersion := '0.2';
  FDensity := pi300;
  FPrintOrientation := poNormal;
  FDefFontSize := fsMedium;
  FLines := TStringList.Create;
end;

destructor TZPLLabel.Destroy;
begin
  FLines.Free;
  inherited;
end;

//procedure TZPLLabel.LoadFromFile(const filename: string);
//begin
//
//end;
//
procedure TZPLLabel.SaveToFile(const filename: string);
begin
  with TXMLToView.Create do
  begin
    try
      xmlSaveLabel(Self, filename);
    finally
      Free;
    end;
  end;
end;

procedure TZPLLabel.SetDefFontSize(const Value: TFontSize);
begin
  FDefFontSize := Value;
end;

procedure TZPLLabel.SetDensity(const Value: TPrintDensity);
begin
  FDensity := Value;
end;

procedure TZPLLabel.SetHeight(const Value: integer);
begin
  FHeight := Value;
end;

procedure TZPLLabel.SetLabelName(const Value: string);
begin
  FLabelName := Value;
end;

procedure TZPLLabel.SetLines(const Value: TStrings);
begin
  FLines.Clear;
  FLines.Assign(Value);
end;

procedure TZPLLabel.SetPrintOrientation(const Value: TPrintOrientation);
begin
  FPrintOrientation := Value;
end;

procedure TZPLLabel.SetWidth(const Value: integer);
begin
  FWidth := Value;
end;

{ TZPLLine }

constructor TZPLLine.Create;
begin
  FCommands := TObjectList<TZPLCommand>.Create(True);
end;

destructor TZPLLine.Destroy;
begin
  FCommands.Free;
  inherited;
end;

{ TZPLLabelValues }

constructor TZPLLabelValues.Create;
begin
  ALabel := TZPLLabelSettings.Create;
  Lines := TStringList.Create;
end;

destructor TZPLLabelValues.Destroy;
begin
  Lines.Free;
  ALabel.Free;
  inherited;
end;

end.


