unit PrinterSettingsWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, NumberEdit,
  Vcl.ExtCtrls, ZplUtils;

type
  TPrinterSettingsW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LabelHeightEdit: TLabel;
    Label3: TLabel;
    NameEdit: TEdit;
    BottomMarginEdit: TNumberEdit;
    PrintDensityBox: TComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TopMarginEdit: TNumberEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FPrinter: TPrinterSettings;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; APrinter: TPrinterSettings); reintroduce; overload;
  end;

implementation

{$R *.dfm}

constructor TPrinterSettingsW.Create(AOwner: TComponent;
  APrinter: TPrinterSettings);
begin
  inherited Create(AOwner);
  FPrinter := APrinter;
end;

procedure TPrinterSettingsW.FormCreate(Sender: TObject);
begin
  GetPrintDensityObjects(PrintDensityBox.Items);
end;

procedure TPrinterSettingsW.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Pred(PrintDensityBox.Items.Count) do
    TPrintDensityObject(PrintDensityBox.Items.Objects[i]).Free;
end;

procedure TPrinterSettingsW.FormShow(Sender: TObject);
begin
  if Assigned(FPrinter) then
  begin
    NameEdit.Text := FPrinter.Name;
    TopMarginEdit.Value := FPrinter.NonPrintableTopMargin;
    BottomMarginEdit.Value := FPrinter.NonPrintableBottomMargin;
    PrintDensityBox.ItemIndex := Ord(FPrinter.PrintDensity);
  end;
end;

end.
