object PrinterSettingsW: TPrinterSettingsW
  Left = 0
  Top = 0
  Caption = 'Printer settings'
  ClientHeight = 191
  ClientWidth = 324
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
    Width = 324
    Height = 150
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 110
      Top = 24
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Printer model :'
    end
    object Label2: TLabel
      Left = 25
      Top = 54
      Width = 155
      Height = 13
      Alignment = taRightJustify
      Caption = 'Non printable top margin in mm :'
    end
    object LabelHeightEdit: TLabel
      Left = 7
      Top = 84
      Width = 173
      Height = 13
      Alignment = taRightJustify
      Caption = 'Non printable bottom margin in mm :'
    end
    object Label3: TLabel
      Left = 113
      Top = 114
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Print density :'
    end
    object NameEdit: TEdit
      Left = 186
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BottomMarginEdit: TNumberEdit
      Left = 186
      Top = 81
      Width = 121
      Height = 21
      CurrencyString = #8364
      Decimal = False
      Alignment = taRightJustify
      TabOrder = 1
      TextHint = 'Numbers only...'
    end
    object PrintDensityBox: TComboBox
      Left = 186
      Top = 111
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'PrintDensityBox'
    end
    object TopMarginEdit: TNumberEdit
      Left = 186
      Top = 51
      Width = 121
      Height = 21
      CurrencyString = #8364
      Decimal = False
      Alignment = taRightJustify
      TabOrder = 3
      TextHint = 'Numbers only...'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 150
    Width = 324
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 151
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
