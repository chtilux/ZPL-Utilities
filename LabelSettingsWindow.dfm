object LabelSettingsW: TLabelSettingsW
  Left = 0
  Top = 0
  Caption = 'Label settings'
  ClientHeight = 198
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 157
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 41
      Top = 24
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label name :'
    end
    object Label2: TLabel
      Left = 11
      Top = 54
      Width = 91
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label width in mm :'
    end
    object LabelHeightEdit: TLabel
      Left = 7
      Top = 84
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label heigth in mm :'
    end
    object Label3: TLabel
      Left = 18
      Top = 114
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Print orientation :'
    end
    object NameEdit: TEdit
      Left = 108
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
      TextHint = 'Enter the label name'
    end
    object WidthEdit: TNumberEdit
      Left = 108
      Top = 51
      Width = 121
      Height = 21
      CurrencyString = #8364
      Decimal = False
      Alignment = taRightJustify
      TabOrder = 1
      TextHint = 'Numbers only...'
    end
    object HeightEdit: TNumberEdit
      Left = 108
      Top = 81
      Width = 121
      Height = 21
      CurrencyString = #8364
      Decimal = False
      Alignment = taRightJustify
      TabOrder = 2
      TextHint = 'Numbers only...'
    end
    object OrientationBox: TComboBox
      Left = 108
      Top = 111
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 157
    Width = 249
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 73
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 154
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
