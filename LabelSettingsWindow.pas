unit LabelSettingsWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NumberEdit, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, zplUtils;

type
  TLabelSettingsW = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    NameEdit: TEdit;
    Label2: TLabel;
    WidthEdit: TNumberEdit;
    LabelHeightEdit: TLabel;
    HeightEdit: TNumberEdit;
    Label3: TLabel;
    OrientationBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLabel: TZPLLabelSettings;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ALabel: TZPLLabelSettings); reintroduce; overload;
  end;

implementation

{$R *.dfm}

constructor TLabelSettingsW.Create(AOwner: TComponent;
  ALabel: TZPLLabelSettings);
begin
  inherited Create(AOwner);
  FLabel := ALabel;
end;

procedure TLabelSettingsW.FormCreate(Sender: TObject);
begin
  GetPrintOrientationObjects(OrientationBox.Items);
end;

procedure TLabelSettingsW.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Pred(OrientationBox.Items.Count) do
    TPrintOrientationObject(OrientationBox.Items.Objects[i]).Free;
end;

procedure TLabelSettingsW.FormShow(Sender: TObject);
begin
  if Assigned(FLabel) then
  begin
    NameEdit.Text := FLabel.Name;
    WidthEdit.Value := FLabel.width;
    HeightEdit.Value := FLabel.height;
    OrientationBox.ItemIndex := Ord(FLabel.orientation);
  end;
end;

end.
