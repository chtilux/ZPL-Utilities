object mainW: TmainW
  Left = 0
  Top = 0
  Caption = 'ZPL Utilities by chtilux'
  ClientHeight = 812
  ClientWidth = 1219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 177
    Top = 27
    Height = 766
    ExplicitLeft = 264
    ExplicitTop = 46
    ExplicitHeight = 696
  end
  object sb: TStatusBar
    Left = 0
    Top = 793
    Width = 1219
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object headerPanel: TPanel
    Left = 0
    Top = 0
    Width = 1219
    Height = 27
    Align = alTop
    TabOrder = 1
    object mainToolbar: TToolBar
      Left = 1
      Top = 1
      Width = 1217
      Height = 26
      ButtonWidth = 93
      Caption = 'Main Toolbar'
      DisabledImages = toolbarDisabledImages
      Images = ToolbarEnabledImages
      List = True
      ShowCaptions = True
      AllowTextButtons = True
      TabOrder = 0
      DesignSize = (
        1217
        26)
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Action = QuitAction
      end
      object ToolButton6: TToolButton
        Left = 24
        Top = 0
        Action = openFileAction
      end
      object ToolButton7: TToolButton
        Left = 48
        Top = 0
        Action = saveFileAction
      end
      object ToolButton11: TToolButton
        Left = 72
        Top = 0
        Action = closeFileAction
      end
      object ToolButton8: TToolButton
        Left = 96
        Top = 0
        Width = 244
        Caption = 'ToolButton8'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object printDensityBox: TComboBox
        Left = 340
        Top = 0
        Width = 145
        Height = 21
        Hint = 'Print density of printer'
        Style = csDropDownList
        TabOrder = 0
        OnChange = printDensityBoxChange
      end
      object ToolButton9: TToolButton
        Left = 485
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object labelSettingsBox: TComboBox
        Left = 493
        Top = 0
        Width = 145
        Height = 21
        Hint = 'User defined label formats'
        Style = csDropDownList
        TabOrder = 1
        OnChange = labelSettingsBoxChange
      end
      object ToolButton10: TToolButton
        Left = 638
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object labelWidthEdit: TEdit
        Left = 646
        Top = 0
        Width = 40
        Height = 22
        Hint = 'Label width in millimeters'
        NumbersOnly = True
        TabOrder = 2
        Text = 'labelWidthEdit'
        OnChange = labelWidthEditChange
      end
      object ToolButton12: TToolButton
        Left = 686
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object labelHeightEdit: TEdit
        Left = 694
        Top = 0
        Width = 40
        Height = 22
        Hint = 'Label height in millimeters'
        NumbersOnly = True
        TabOrder = 3
        Text = 'labelHeightEdit'
        OnChange = labelWidthEditChange
      end
      object ToolButton13: TToolButton
        Left = 734
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object labelDescEdit: TEdit
        Left = 742
        Top = 0
        Width = 155
        Height = 22
        Hint = 'Label description'
        TabOrder = 4
        Text = 'labelDescEdit'
        OnChange = labelWidthEditChange
      end
      object ToolButton14: TToolButton
        Left = 897
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object labelPrintOrientationBox: TComboBox
        Left = 905
        Top = 0
        Width = 125
        Height = 21
        Hint = 'Label print orientation'
        Style = csDropDownList
        Anchors = [akTop, akRight]
        TabOrder = 5
        OnChange = labelPrintOrientationBoxChange
      end
      object ToolButton15: TToolButton
        Left = 1030
        Top = 0
        Width = 8
        Caption = 'ToolButton15'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object SaveLabelFormatButton: TButton
        Left = 1038
        Top = 0
        Width = 107
        Height = 22
        Action = saveLabelAction
        TabOrder = 6
      end
    end
  end
  object commandsPanel: TPanel
    Left = 0
    Top = 27
    Width = 177
    Height = 766
    Align = alLeft
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object CommandsToolbar: TToolBar
      Left = 1
      Top = 1
      Width = 175
      Height = 22
      AutoSize = True
      Caption = 'ZPL Commands'
      Color = clGray
      DisabledImages = toolbarDisabledImages
      DrawingStyle = dsGradient
      GradientEndColor = clGray
      Images = ToolbarEnabledImages
      ParentColor = False
      TabOrder = 0
      Transparent = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = viewZPLCommandsAction
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Action = groupZPLCommandsAction
      end
    end
    object lv: TListView
      Left = 1
      Top = 44
      Width = 175
      Height = 721
      Align = alClient
      Columns = <
        item
          Caption = 'Command'
        end
        item
          AutoSize = True
          Caption = 'Description'
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 2
      ViewStyle = vsReport
      OnChange = lvChange
      OnDblClick = lvDblClick
      OnKeyDown = lvKeyDown
    end
    object cmdSearch: TEdit
      Left = 1
      Top = 23
      Width = 175
      Height = 21
      Hint = 'Shortcut : M'
      Align = alTop
      TabOrder = 1
      TextHint = 'Search command'
      OnChange = cmdSearchChange
      OnKeyDown = cmdSearchKeyDown
    end
  end
  object midPanel: TPanel
    Left = 180
    Top = 27
    Width = 1039
    Height = 766
    Align = alClient
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 928
      Top = 1
      Height = 764
      Align = alRight
      ExplicitLeft = 440
      ExplicitTop = 288
      ExplicitHeight = 100
    end
    object previewPanel: TPanel
      Left = 931
      Top = 1
      Width = 107
      Height = 764
      Align = alRight
      TabOrder = 0
      object previewToolbar: TToolBar
        Left = 1
        Top = 1
        Width = 105
        Height = 22
        AutoSize = True
        Caption = 'ZPL Help'
        DisabledImages = toolbarDisabledImages
        DrawingStyle = dsGradient
        GradientEndColor = clGray
        Images = ToolbarEnabledImages
        TabOrder = 0
        object ToolButton4: TToolButton
          Left = 0
          Top = 0
          Action = viewPreviewAction
        end
      end
    end
    object wkPanel: TPanel
      Left = 1
      Top = 1
      Width = 927
      Height = 764
      Align = alClient
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 1
        Top = 393
        Width = 925
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 137
        ExplicitWidth = 691
      end
      object helpPanel: TPanel
        Left = 1
        Top = 1
        Width = 925
        Height = 272
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          925
          272)
        object Label1: TLabel
          Left = 19
          Top = 31
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'ZPL code :'
        end
        object Label2: TLabel
          Left = 1
          Top = 56
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Description :'
        end
        object Label3: TLabel
          Left = 37
          Top = 113
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usage :'
        end
        object Label4: TLabel
          Left = 7
          Top = 138
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parameters :'
        end
        object HelpToolbar: TToolBar
          Left = 1
          Top = 1
          Width = 923
          Height = 22
          AutoSize = True
          Caption = 'ZPL Help'
          DisabledImages = toolbarDisabledImages
          DrawingStyle = dsGradient
          GradientEndColor = clGray
          Images = ToolbarEnabledImages
          TabOrder = 0
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Action = viewZPLHelpAction
          end
        end
        object helpZPLCode: TEdit
          Left = 80
          Top = 29
          Width = 834
          Height = 19
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object helpZPLDescription: TMemo
          Left = 80
          Top = 54
          Width = 834
          Height = 51
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object helpZPLUsage: TEdit
          Left = 80
          Top = 111
          Width = 834
          Height = 19
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object helpZPLParameters: TMemo
          Left = 80
          Top = 136
          Width = 834
          Height = 130
          TabStop = False
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 4
        end
      end
      object cmdPanel: TPanel
        Left = 1
        Top = 273
        Width = 925
        Height = 120
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object Label14: TLabel
          Left = 22
          Top = 63
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'FieldOrigin :'
        end
        object Label5: TLabel
          Left = 50
          Top = 91
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Text :'
        end
        object Label9: TLabel
          Left = 203
          Top = 61
          Width = 22
          Height = 16
          Caption = 'mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 18
          Top = 9
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Orientation :'
        end
        object Label12: TLabel
          Left = 3
          Top = 36
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Text Font Size :'
        end
        object Label10: TLabel
          Left = 128
          Top = 62
          Width = 22
          Height = 16
          Caption = 'mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object xTextPos: TSpinEdit
          Left = 80
          Top = 60
          Width = 46
          Height = 22
          Hint = 'Shorcut : X,L'
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
          OnChange = xTextPosChange
        end
        object yTextPos: TSpinEdit
          Left = 153
          Top = 60
          Width = 46
          Height = 22
          Hint = 'Shorcut : Y,T'
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = xTextPosChange
        end
        object TextEdit: TEdit
          Left = 80
          Top = 88
          Width = 145
          Height = 21
          Hint = 'Shortcut : E'
          TabOrder = 2
        end
        object commentsFieldOriginBox: TCheckBox
          Left = 232
          Top = 65
          Width = 142
          Height = 17
          Hint = 'Shorcut : (comme)N(t)'
          Caption = 'Comments field origin'
          TabOrder = 3
        end
        object textJustifyBox: TComboBox
          Left = 232
          Top = 6
          Width = 145
          Height = 21
          Hint = 'Shorcut : O(rientation)'
          Style = csDropDownList
          TabOrder = 4
        end
        object textFontSizeBox: TComboBox
          Left = 80
          Top = 33
          Width = 145
          Height = 21
          Hint = 'Shorcut : F'
          Style = csDropDownList
          TabOrder = 5
          OnChange = textFontSizeBoxChange
        end
        object FontWidthEdit: TEdit
          Left = 232
          Top = 32
          Width = 40
          Height = 21
          Hint = 'Font width in dots'
          NumbersOnly = True
          TabOrder = 6
          Text = 'labelWidthEdit'
        end
        object FontHeightEdit: TEdit
          Left = 281
          Top = 32
          Width = 40
          Height = 21
          Hint = 'Font height in dots'
          NumbersOnly = True
          TabOrder = 7
          Text = 'labelHeightEdit'
        end
        object Button1: TButton
          Left = 587
          Top = 3
          Width = 154
          Height = 19
          Action = StartLabelAction
          TabOrder = 8
        end
        object Button2: TButton
          Left = 744
          Top = 3
          Width = 154
          Height = 19
          Action = EndLabelAction
          TabOrder = 9
        end
        object Button3: TButton
          Left = 587
          Top = 22
          Width = 154
          Height = 19
          Action = CommentLineAction
          TabOrder = 10
        end
        object Button4: TButton
          Left = 744
          Top = 22
          Width = 154
          Height = 19
          Action = CommentBlocAction
          TabOrder = 11
        end
        object Button5: TButton
          Left = 587
          Top = 41
          Width = 154
          Height = 19
          Action = EndLineAction
          TabOrder = 12
        end
        object Button6: TButton
          Left = 587
          Top = 60
          Width = 154
          Height = 19
          Action = LabelDatabaseFieldAction
          TabOrder = 13
        end
        object Button7: TButton
          Left = 744
          Top = 41
          Width = 154
          Height = 19
          Action = CommandAction
          TabOrder = 14
        end
        object GraphicsBox: TComboBox
          Left = 232
          Top = 88
          Width = 145
          Height = 21
          Hint = 'Shorcut : G(raphics)'
          Style = csDropDownList
          TabOrder = 15
        end
        object Button8: TButton
          Left = 744
          Top = 60
          Width = 154
          Height = 19
          Action = DatabaseFieldAction
          TabOrder = 16
        end
        object Button9: TButton
          Left = 587
          Top = 79
          Width = 154
          Height = 19
          Action = GetGraphicsAction
          TabOrder = 17
        end
        object Button10: TButton
          Left = 744
          Top = 79
          Width = 154
          Height = 19
          Action = GraphicAction
          TabOrder = 18
        end
        object FieldOrientationBox: TComboBox
          Left = 80
          Top = 6
          Width = 145
          Height = 21
          Hint = 'Shorcut : A(lignment)'
          Style = csDropDownList
          TabOrder = 19
        end
        object Button11: TButton
          Left = 744
          Top = 98
          Width = 154
          Height = 19
          Action = BarCodeFromTextAction
          TabOrder = 20
        end
      end
      object codePanel: TPanel
        Left = 1
        Top = 396
        Width = 925
        Height = 367
        Align = alClient
        BorderWidth = 10
        TabOrder = 2
        DesignSize = (
          925
          367)
        object zplSource: TSynEdit
          Left = 4
          Top = 3
          Width = 916
          Height = 357
          SingleLineMode = False
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          ActiveLineColor = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 0
          OnClick = zplSourceClick
          OnKeyPress = zplSourceKeyPress
          CodeFolding.GutterShapeSize = 11
          CodeFolding.CollapsedLineColor = clGrayText
          CodeFolding.FolderBarLinesColor = clGrayText
          CodeFolding.IndentGuidesColor = clGray
          CodeFolding.IndentGuides = True
          CodeFolding.ShowCollapsedLine = False
          CodeFolding.ShowHintMark = True
          UseCodeFolding = False
          Gutter.AutoSize = True
          Gutter.Color = clSilver
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.LeadingZeros = True
          Gutter.ShowLineNumbers = True
          Highlighter = SynZPLSyn1
          Lines.Strings = (
            '^XA'
            '^FWI'
            '^LL2980'
            '^LS05'
            '^LH1,1'
            '~SD30'
            ''
            
              '~DGR:DECLASSAGE.GRF'#31'2508'#31'19'#31'zqJ02I548gR0J52gQ02BLF5gO02BKFEA4gM0' +
              'AOFD4gK012OFD2gK07IFEIABJF8gJ0JFEIA9JFAgJ07IFEIADJF8gI05HFD4K015' +
              'IFgI05HFD28J04AHFE8gG01HFDO01HFE8g05HF5O02BFEg01HFE4P05HFDg0HFEQ' +
              '01HFCY07FES01HFY03FE8R07HF4X06FBS01HFX01HF8T07FCX0HFAS017FDW03FE' +
              'U01BFW0BFAU01HF2U017E4V03F4V0BF2U017FAU03FCX0FEU01FAW01BA8T05BDX' +
              '0FEU07F4X0BF8T07F8X07F8S017FN0I5N03FAT0HFN04AH8M0BFCS01FCM07JFM0' +
              '1FES01FEM01IFE8L02FES05FCL05KFE8L0FE8R03F5L01KFEM0FES05E8K01MFDL' +
              '09FS03ECL0MFCL05E8R05FL02MFCL0BFS07E8K03NFL05F8R07E8K03NFL0BF8Q0' +
              '17E4K0BNF8K01FAR07E8K0BLF7F4K05F9Q02FEL0OFCK01FAQ017EL0OFCK01F9Q' +
              '0178K02OFDK017CQ02FEK01HF7LFCK017BQ0178K02MFDFEL0F8Q02FEK01OFDK0' +
              '17FQ0178K02OFDK0178Q02FEK01OFEL0HFQ0178K02OFDK0178Q02FEK01OFDK01' +
              '7FQ0178K02OFEL0F9Q02FEK01OFCK017DQ0178L0MFDFEL0FAQ02FEK02HF7LFDK' +
              '017DQ0178L0OFCK017AQ017EK01OFCL0FAQ017EL03NFL01F9R0FCL0BLF7F8K01' +
              'FCQ027E8K03NFL0BF9R0FE4K03HFBFEIFL01FAR07FM0MFCL0BF8R07E8K02MF4L' +
              '05F8R07E8L0DLFDL0BF8R05F4L03KFEM05ES03E8L09KFC8L0BFS05FCM01IFEN0' +
              'FE8R01FDM05IFD8L01DES01FDO0H4N02FES03FDN0I54M01FET07FY03F8S017FY' +
              '0BFCT0HFY03FAT07F4X0BF8T07F8X07F8T01FDW01FEU05BCW02FA8U0BF4V0BF4' +
              'U017FW03F4V03FE8T03HF2V0BFEU01HFW03FE8T05FDX0HF8T0HFCW02HFAT07FD' +
              'X03FE8R05FEY05FA8R05HF4Y0DFE4P05HF9Y02HFEQ01HFCg01HFE4N03HFEgG05' +
              'HFDO04HFE4gG03HFEAK02BHFE8gH05HFD54J094HFE8gH05HFD2K025HFEgJ07JF' +
              '6HABJF8gI017IFEIADJF8gK02OFC4gK015OFD2gM015KFEAgO02BKFEA4gP012HA' +
              '8gS04IA68gR02IA92zkP0'
            ''
            
              '~DGR:DEMETER.GRF'#31'4032'#31'32'#31'oN01FhX01KFhX03KFhU01NFhR01QFhR01QFhR01' +
              'QFhN03UFhN03UFhL07WFhL07WFhL0XFhG03gHFhG03gHFgV01gMFgS0gQFgS0gQF' +
              'gR01gQFgO03gTFgO07gTFgJ03gYFgH07hGFgH07hGFgH07hGFU07hNFU0hOFP03h' +
              'SFP07hSFN07hUFN07hUFN0hVFL0hXFK0hYFK0hYFH01iGFH01iGFH01hOFEDPFH0' +
              '3hOFC1PFH03hOFI03NFH03hOFI03NFH03hOFI03NFH03hOFJ0NFH03hOFJ0NFH03' +
              'hHFH01IF8J07MFH03hHFH01IFH04H037LFH03gTF0HFE07FJ01F801HFH03LFH03' +
              'gOFE1IF0HFE07IFEH07801HFCH0LFH03gOFE1IF0HFE07IFEH07801HFCH0LFH03' +
              'gOFC0IF0HFE07IFCH07801HFCH0LFH03gOF807HF0HFE07IF8H07801IF80LFH03' +
              'gIFBH7IF807FE0HFE07IFI07H01IFC0LFH03gIFI07HF807F80HFE07HFC038180' +
              '1JF01KFH03gF1F8I03HF807F80HFE07HFC3FC1801JF01KFH03TFEJFA1FJ03HF8' +
              '07F80HFE07HF81FC1801JF01KFH03SFH01IF81F8J0HF807F80HFE07HF01FC180' +
              '1IF801KFH03SFH01IF81F8J0HF807F80HFE07HF01FC1801IF803KFH03RFEH01I' +
              'F81FI8H0HF807F80HFE07HF03FC3801IF801KFH03NF81HFCI0IF03JFI0F807F8' +
              '0HFE07FE07FC1801IFH01KFH03NF81HFCI0IF81JFI0F807F80HFE07FE07FC180' +
              '1IFH01KFH03NF80HFE8H0BHF81IFEI0FH07F80HFE07F407FC1801HFEH05KFH03' +
              'NF801IF801HF81IFC840F807F80HFE07FH07FC3801FDCH0LFH03NF801IF801HF' +
              '81IFC160F807F80HFE07D017FC18H0D94H0LFH03NF801IFI03F81IF83F07807F' +
              '80HFE07C07HFC38K0H2LFH03NF801HFEI01F01IF83F03E07F80HFE07CK07L07M' +
              'FH03NF801HFEI01F83HFE87F03E07F806BE078K078K07MFH03NF801HFC0E01F8' +
              '1HFC0HF03E07F8H03E07CK078K07MFH03NF801HFE0E01F81HFC0HF03E07F8H01' +
              'E07CK078K07MFH03NF801HFE1E01F81HF81HF03E07F8H01E07CK078K07MFH03N' +
              'F801HF03F01F81HF03HF03EH0F8K07CJ03F8J03NFH03NF801FC07F01F81HF03H' +
              'F03FO07MF8I0PFH03NF801FC07F03F81HF03HF03FO07MF8I0PFH03NF801FC07F' +
              '01F81HF03HF03FO07MF8I0PFH03NF801FC0HF01F81HF02DA07FK0H1087MFJ0PF' +
              'H03NF801F81HF01F81HFK0HFI07SF8I0PFH03NF801F81HF01F81HFK0HFI07SF8' +
              'I0PFH03NF801F81HF03F81HFK0HF0H17SF8I0PFH03NF801F81HF01F81HFCI0gF' +
              '8I0PFH03NF801F807H01F81gLF8I0PFH03NF801F807H01F81gLFJ0PFH03NF801' +
              'F807H01F81gLF8I0PFH03MFCH01F8J07EI0gKF8I0PFH03MF8H01F8I02FCI0gKF' +
              '8I0PFH03LFEI01FCI0F6J0gKF8I0PFH03LFEH0C1NF81gLF8I0PFH03LFEH0C1NF' +
              '81gLFJ0PFH03LFEH0C1NF81gLF8I0PFH03LFE08C5NF81gLF8I0PFH03MFEQF81g' +
              'LF8I0PFH03YF81gLF8I0PFH03YF01gLF8I0PFH03YF81gLFJ0PFH03YF81gLF8I0' +
              'PFH03YF83gLF8I0PFH03hMF8H02PFH03hMF803QFH03hMF807QFH03iGFH03iGFH' +
              '03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iG' +
              'FH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03iGFH03' +
              'iGFH03iGFH03YF7BDEgIFLBDLF7FlP0'
            ''
            
              '~DGR:CE3.GRF'#31'2147'#31'19'#31'tH01JFgR0MFEgN01FEL0HFgL01F8N03FgK0F8P03EgI' +
              '078R07CgG03CT0F8g0FU01EY078V078W01EX0EW078X038V0Eg0EU038g07U0EM0' +
              'IF80FEM01CS01CL01IF81HF8M07S07N0IF83HFCM038R0CM01IF87C7CN0CQ018P' +
              '078783EN07Q07Q078F01EN038P0CQ078F01EO0CO018Q078I0FO06O03R078I0FO' +
              '03O06P07HF8I0FO018N0CP07HF8I0FP0CM018P07HF8I0FP06M03S078H01EP03M' +
              '06S078F01EP018L0CS078F01EQ0CL08S078783CQ06K018Q0IF87HFCQ06K03R0I' +
              'F83HF8Q03K06R0IF81HFR018J06X08S08J0CgR0CJ08gR06I018gR06I01gS03I0' +
              '3gS03I03gS018H02gS018H06V07EV08H04U01HF8U0CH04U03HFCU0CH0CU07HFE' +
              'U04H0CU07C3EU06H0CU0781EU06H08U0F81FU06H08U0F81FU02H08U078W02H08' +
              'H07CQ07CW02H08H0FEQ07FS07I02H0801HFQ03FCR0F8H02H0C03E78P01FCR0FC' +
              'H02H0C03838P01FCQ01HFH02H0C01C1CP03ER039F806H04H0E1CP07CR078FC06' +
              'H04H083CP07C1EP0707F06H062H03H8O07C1EP0601F84H067H0F8CO07C1ES0FH' +
              'CH02701F9EJ01J07E3ES03ECH0H383F3EJ04J03HFCO07CH01C8H0H1HFE3CI01K' +
              '01HFCN01FEI0H8H018HF8782H04I04H0HFO03HFI018H0187F0787O03CO078F8H' +
              '01J0CI070F8Y07078H03J04H01B1Fg0607CH02J06H03FBEY06703EH06J03H07H' +
              'FC3EW0E701FH0CJ03H0F9FC7FW0E380F80CJ0180F0F8F7CV0E3C07C18K0C0F1F' +
              '0E1CT020E1E03C3L04073E1C1ET0F8E0F0103L0603FC3C1ES02FHE078H06L030' +
              '1F8381E1F8O03E7FE03CH0CL0180F8703C7FCO0HF1FE01E018M0C030703C79EN' +
              '07HF07EH0E03N06I0E078F0707CI0C3B8703F80606N03I0E079F071HFDE1C3A0' +
              '780FEI0CN01801C0F1E073HF8E1E380780HFH018O0C01C0F1E073C38E3E38078' +
              '0DFC03P07I01E3C0F3C38E3F381FC0C7806P038H03E3C0F3838E37B87FC1C2H0' +
              'CQ0CH03C3C0F3C78EH79839C1CH038Q06H0383C1E3C78E63D801E1CH07R038H0' +
              '8381E1HF8FE1F801E1C01CS0CI01C3C07F8FC1F801E1H038S07I01E3C1EF8FC0' +
              'FC01FI0ET01CI0HF83C70FC07C1FEH01CU0EI03F03C707807C3FI07V038K03C7' +
              '07803C38H01CW0EK03HF07H03CJ07X03CK0HF07H01CI01CY0FL0707M0Fg03ET0' +
              '7CgG078R01EgI0F8P01F8gI01F8N01F8gK03FCL03FCgM01HFEH0IF8gP07JFErJ' +
              '0'
            ''
            
              '~DGR:EGBIOINV.GRF'#31'3300'#31'25'#31'zzzmG08hN018hN038hN07hO0FgR02N03K07DFg' +
              'R02L0403K07HFgR018K070EK03IFgQ01C3J079EK03IFgQ01FEJ07FCK03HFCgQ0' +
              '1FEJ03FCK03HF8gQ03FEJ03FCK03FEgL03J01HFEJ07FEK07FCgL018J0HFEJ0IF' +
              'K0HF8gM0EK0HFI03IFCI01HF8gM0E08I07F8H07IFCI03HFgN07F8I03BCI01EK0' +
              '7C7gN07F8I0386I01EK0FC7gM03HF8I03K01CJ01F07gM0IFJ01L0CJ07E03gN07' +
              'F8P08J0F802gN01FCP08I01FgQ01FET03EgR0EFT078gR0E18S0F8gR04T03EgS0' +
              '4T07CgN08X01FgO0C04V03CgO073CV0F8gO07F8U01FgP07F8U07CgP07F8U0FH0' +
              '1gM01HFCT03CH01806gJ07HFET078H01C1CgK01HFS01EI01E7CgL0E08R078I01' +
              'HFgM0ET0FJ01HFgM04S03CJ07HFgM04S0F8I01IF8gY03CJ07IFEgY0FL07IFgX0' +
              '3CL01Eh0FM01EgY078N0CgX01EO08gX078O08gL08P03CgV018O01EgV0E78O0Fg' +
              'W07FO078gW07F8M078gX03FCL03CgY07HFhM0HF8W01H03gK01FEY0C0EgK03FCY' +
              '0F1EgK031CY07FEgM08Y07FCgM08Y03FEhM0JFhK01IFEhK07HF8hN0FgR04V07g' +
              'P040CV07gP0738I01K01L02gP03F8I01L08gV03F8I018K0C0CgO03J03F8J0C3J' +
              '0F3CgO07J03FCJ0HFJ07FCgO0EJ07FEJ0FEJ07F8gM01FEI01IFI03FEI01HF8gM' +
              '01HFK0EJ0HFEI0IFEgN0HFCJ0EJ03FEI01IFgN0HFK06K03F8I01HFCgL01F8K04' +
              'K03FCJ0F1EgL03F8Q0386J0FgN067R038K07gO02R01L02gO02R01L02gO02zzzh' +
              'G0'
            ''
            
              '~DGR:EIFEL.GRF'#31'7925'#31'25'#31'hQ0KFCK07KFN01HF8K07FEK03KF80KFCK07KFN01H' +
              'F8K03FEK03KF80KFCK07KFN01HF8K07FEK03KF80EDB6DCK076DB6DN01DB8K03B' +
              '6K03B6DB680KFCK07KFN01HF8K07FEK03KF80KFCK07KFN01HF8K07FEK03KF80E' +
              'F7BDCK0H7BDEFN01HD8K037AK03BDEF780FDHF7CK07EHFBFN01HF8K07HEK03F7' +
              'FDF80HFEHFCL0283FDN01HF8K03FEL0141FE8J07F4N01HFN01B78K07FEN01HF8' +
              'J07FCN01F7N01FE8K0H7EN01HF8J06DCN01DFN01HF8K03HEN01ED8J07FCN01HF' +
              'N01HF8K07FEN01HF8J07FCN03HFN01DB8K03FEN01HF8J07F4N01FBN01HF8K07B' +
              'AN01DF8J0H7CN01BFN01HF8K06FEN01FB8J07FCN01HFN01HB8K03FEN01HF8J07' +
              'DCN01F7K01KF8K07F6N01EF8J06FCK03KFK01KF8K07DEK03IFBE8J07FCK03KFK' +
              '01HFHED8K03FEK03KF8J07F4K03IFB7K01FDIF8K0H7EK03KF8J07BCK03HFDHFK' +
              '01EJF8K03FEK03HFDF78J06FCK03DB7HFK01HFBH78K07F6K03DB7DF8J07FCK07' +
              'JFBK03FEIF8K07DEK03JFE8J07FCK037HFBFK01HBHFE8K03FEK03KF8J07DCN01' +
              'HFN01DF8K0H7EN017B8J0H7CN01F7N01FB8K07FEN01EF8J07FCN01HFN01HF8K0' +
              '3F6N01HF8J07F4N01DFN01BF8K07DEN01HF8J0H7CN01FDN01FB8K06FEN01FD8J' +
              '07FCN01HFN01HF8K03FEN01B78J07FCN01F7N01EF8K07FAN01HF8J06DCN01HFN' +
              '01BE8K07DEN01HF8J07FCN03DFL0801HF8K037EN01FE8J07FCK07IF7FK03KF8K' +
              '07FEK03IFB78J07ECK07JFDK03JFB8K07FEK03KF8J0H7CK07KFK03IFDF8K03HE' +
              'K03HFEHF8J07FCK07HF7EFK03HFDHF8K0H7EK03FHBFD8J07FCK07B7EHFK03B6H' +
              'FD8K07FEK03DHFEF8J076CK07JFDK03IFBF8K03F6K03KF8J07FCK07FEFB7K03H' +
              'FEHF8K07DEK03FDF7F8J07FCK0I7EHFK03DEHF78K06FEK03B7BF68zzzxO0H5IF' +
              '4gM015UFDFH5HBHFEgJ07EAB6DAD6B6DB6DB575FEDEDB7CgI02BFDB6F7BDB6ED' +
              'B6FDEAHB5B6D4gI07D5H7HBAHEFIBEFAB5F6EF7DFCgI02BEHD6DF75AEDEBAFEF' +
              '5DHBD754gI036HB7DEADHF76BHDAIB76D7HB8gI02FDED75FBH5BFD6BID7BDFAD' +
              '6CgI03AB5EDEAIED57BEB6BD6B5H7D8gI02FEF5EBFJ7BAEBEFEBDFBHD7CgI03H' +
              '5HB5D5ADBD6F7D5ABHEAEB7A8gI02EFD7F7EFBD7DBABF7D5BF7ED7CgI03BABD5' +
              'D5AEBABD7EAD7ED5AHBD4gI02DF6HEBFH76FEBD5HFAHBEF6EF8gI036AF5BEADA' +
              'FH5EBEHAF6EBAF754gI02FDAFD5FEFAFEBEBF75DBD7ADE8gI03ABFABFH5AFABD' +
              '5D5DEF6FD7B58gI02FEAFEAF7F576FEFEB5AF57D6FgJ03H5FH5FAD5FHDABH5EF' +
              '7AFABF58gI02EF5EF57FB56EF7EF7BAFAFEBFI0AUF8J03BAEBAFHAEFB75D5AD6' +
              'F57H5D5IF7I5ADB6DB6DB6DB7FEH02DF7DFAFDBAFBEBF7HB5FAHEB6HABAEFEF6' +
              'DB6DB6DB6HDB6H036BAB57576F56BEAIDF5F5BDBID75AB5B6DB6DB6DB6EDAH02' +
              'FD7EFBFBDAFBD5FHEF5EAED6D6B6DEHDEDBH7HBDB6DB5B4H03ABD5AD56BFAEBF' +
              'H5B5EIB6DEHDHB5B6B6EHD6EBHDKEH02FD7BDFBDEAF5EAEF6EBD6DB75B6D6HEB' +
              '5IB6DB6B75B758H0357AEB56EHB5F5F7AFBD7DB7AHEDBDHBDHED6HB5HDAEDAF4' +
              'H02EDF7EFDBHDEAF5AFAD7AB6D75B76B6D6HB7BD6EB6F5BDACH03HB5ABAB6EF7' +
              'FAEF5H7AFHDIB6JD7BD5AD7HBDB5HEB78H02HDEF6HFB5AD57HBFBAF5H76D7HB6' +
              'EBAD7EF7AED6DEB5HD4H036EBAFH57EF6FD6D56FBFAHDBAD6DBHD7AB5AF5HB75' +
              'DEB6CH01F7D7AEFD75BABDEFDAD576B6F7B6D6BAHDEF5B6HDB6BDB8H02AD7D7B' +
              'ABAHEF6F5ABF7BDBHDAD7BH76F6B5AIDB6EBD6D4H01FBABD6F6FHB5F5F7EAD6E' +
              'D6B76D7AHDAHDB76B6EDBD6DFCH0156FEFDAF56FEAEAD5DFDB7BDADBAF6BH76E' +
              'DBDB5B6HB754H01FDAB5H7AFDABFBFBEF575AD6F76F5BHDADB6D6DHEHD6DB4H0' +
              '15H7DEHD7ABHD56AEB5EDEF7BAHDAED6BH76DHB75B6FHB6CH01EHD75EFDFEB7F' +
              'BDBDEHB75AD76B75HBHDADB6HDB6DAD6D8H015HEDF5ABH5ED56BDH7DEDEDIBDA' +
              'HED6BI7B76EDED7HB4H01F5HB5F7DBEIBDEHBAB5B5B6D6BDB5HBJD6DB5EB7AD7' +
              '8H015F6HEAD76BIEF7ED76FDB6DHBD76HED6B6IB6F5DAF7A8H01B5DHBFHBHD5H' +
              'B5AB7DFAB6F76D75HB5HBDBD6DBAEB75AFI016IED56DH7F6DEF7D6AFDBADB7AE' +
              'D6HED6D7B6D75IDF58H01FB7B7FDFBHAF75AD7BF56EDB6DI7HB5HB756F7AF6B6' +
              'AE8H0157AHD5756HFADF7BAEAEF576F6DAD6DED6DEDAD75BDB758H01BDI7IBDH' +
              'AFB5DEF7DB0A9DADBH7B6B7HB5EDHBED6DAE8H016BHDAED6EF757HEB5804A040' +
              '136DADBDAEDB5BHD5HB6F7I01DEB6FH7DBADFD5BC20501515H416F6EB75B6HEB' +
              '6HEDBAD8H0175EFBAD76FB5H741450A80802148ADB6DEHDB5DB5B76DB4H01BF7' +
              '56FBHDAEFA80810A054H514H2176DEBH76EB6EDADB68H016ADFB56BI7A92A28A' +
              '0A02H082I80DB5DADHBDHB6FH7BCH01DF6AEHFEHDACH410414154HA50H2H52HE' +
              'B76D6B6DB5DAD4H0175DF7HAHB6EI14A942801010AH8H015BHDB7B6DBDEBH78H' +
              '01AEF5AFHDEF0I8H0H28H545H404I540D6B6D6F6D6BHDACH017B5EF576B8J2HA' +
              'H820820H2A2I0253BHDHBAF7BD6B74H01HDEBAEDBC1089I0451529548H1I51H0' +
              'D6BHD75AD6ID8H016B7DFHBE14AH4I5208H04012A40208HA3BD6IBH7B76B4H01' +
              'BED6ADEH801210I8AI5154H0954A4H08D7BHD6DADAHDCH016IBDEA4H5414AI2J' +
              '0802HA2H012HA23AD6IB76F768H01JD7591H0282H108JAH5H010IAH0108HEHD6' +
              'HDBADBCH0176EFB624HA850H8A2H0H4H0IA4I0IA425B6BDB6D76D4H01DF5ADH8' +
              '2H050AH4H1H5H1H50109I501028ADBD6EB7ADB8H02B5F76H28HA841H2H80I8H0' +
              '5H42080545H40HEHB5DAF76CH01HEAD9104H0H28104H5I'
            
              '2HA8H28A2A020H1535EDF6F5AD8H037BFB24A2HA9054A9I091042H82104A95H4' +
              '01EB75BAEF74H01AD5H421H010A8202I5085104548A8H40H2A8BDAED75ADCH03' +
              'F7F5148IA4028AH8H04508A2H04029151H0456F5BAEF68H02AD40405I02A8404' +
              '2HA90A2H1H52A80408HA29B5HEF75BCH03DF95150I5405151010240H8AH080H5' +
              '1450140DEB5ADB68H02B5H040A020150408HA5095250HA2A8082854146B6EDAH' +
              'DCH03ECH52A154A80A2A41H0A2040401H02A5020282B6DBI768H02BA0H814I0H' +
              '51012AH510A152HAH5010A9545H0DB6IDBCH036CAH281I5H04A8J0451408H082' +
              '5H404010HAH7HB6AD4H02FH4H854H02H5H0K51042A2HA2H8H2A95H4012D6DBF7' +
              '8H03AD04202HAH82H5I02EHFBC1010842H8I0H2A89HB6D5ACH02FC514A80H428' +
              'H0ABHFBHAEBED45H284J5101H2EDB76F4H03H50810H5H10I53HDADHF7DHB9010' +
              '52J08HAH15BHDB58H02F84545H0H8A806IEF7H5AB6D7HA501J52H0A46EB6DECH' +
              '03AD2020HA4502HFB5IB7B6DB7AD085402084HA0935DB758H02F4954A0H10H5B' +
              '57F6ID6DEDAF7E282A8A2104A09EB6DB4H035CH010A84A376FD5DEB7F75EF5AB' +
              '82804H145H0A15EDB6CH02EDH54505H1IDAHB75ED5AEB5B76E82A94820HA14EH' +
              'BHD8H03B402105086HEHFDEDEIB75DEDADBA80I28A01425D6B74H02DCA8A5047' +
              'F75HAB5EBIEDEB5B7B6A2AI8H4HA106BHDACH037412H052AHBFH7EF5D5IB5DB6' +
              'D7BF804I2I08ABD6EF8H02HD41H50BFD6AHD5AF7F6D6IEF7ADI51491H5H4017B' +
              '5ACH03EC28H0AD57B7BH7FAD5DFB75BADH76F0804AH0H2A9ADED8H02B50H54H7' +
              'FAEDEHD57BEF57AEDH7ADBHAH5H0HA9404DB5B4H037C5H03BHAF7B5EFBDEB5BA' +
              'DB7AD76D7CH0HA0H4150EDB6CH02D48H56DFDBAEF5AEB5DHEF76D76DB7ABH501' +
              '5H140A5B6F4H03BA281HB576F75FH7EFI75ADJB7AF780540H82A06EF5CH02EC8' +
              '2B6HEHDADEADABADADAF76D6HD75DH502AH281535AE8H037428EFI76FB7FBHD7' +
              'BFAF5ADHB76HD6E0A80912809F75CH02HD43BADBAF57HAEB7DEAF5EFB6DAHB7H' +
              'B40H508054H5BEC153B416EFBDFAFDH76FAB5DBEB56DBFD6AD6HAH04H5021B6B' +
              '424AED5F5AEB57ABHDBAFIED5DEF76AHBF7B81H52H0A94DB5C12HB86AF75EFAF' +
              'EB6EFH5B76EB5AHDB6D5AD6AH09H50416DEA14AEDBFBDF5AFH5EFB5HF7HB5DB7' +
              '6B6DFAEFE0HAH0851476BC1275HD56B5F75FB7ADEHAD6DIEDBHDEAF5AB401H52' +
              '0415HD62HAF6FBDHEADF57AFH7F7FB75B5B6B75D5EDB954H015143H7A095HB56' +
              'EHBFB5ED75DHAD5HDB5HEHDAEBEB6D402HA8082ADAC24BD7FDBHD57EBFDEBF7B' +
              'D76HEIB6F5EB6DBD54H0545036D6156FD576EBFD5D56BEADEBJ04H0DAF5DHB6A' +
              '01H5020A9B7A125AJB5EABF7EFD5DE84J50HAB75B6D7BD540254A05DAE29H7JD' +
              'F7DEAD5ABF6021J0AH0EDHEB7AD709540H1516F40H5D6EB75AB5F7F7E81294I5' +
              '40HAHB5BHDH7HAH015H408BAE2A76F5EDEF7F5D5D45H401I02AH0D6ED6BDAF9H' +
              '54I2A2EDAH16DAF76BAD5IEC202154I541H57B5HBD6F54H02I810B7615H7FBAF' +
              'DFBEB5A2951402H0214H0D7ED6HB5BDH54H254H5AC24BD56FAB56BDF284082A9' +
              'H5482HAHD5HBD6ED402I1010H7612D7BDAFEFHD74821528040205I0EB6ED7HB7' +
              'HAJ854HADC157AEB7H5AB7A0294042A154A0IA2HA950A48A0I450207B6125H7E' +
              'DEF7FA9542151414H015H01KAEKA9H20A8HADA297DABEHBD56A010808142HA80' +
              'H54H52HA2JA0214A0205B60H56F6BHD7B80A8A545428H0H5H0952HA5A9J508H1' +
              '5156EC14FBAF6EBAE5405H020282HA80HA0IA54AJ50A5H40805BA1256FAF5EF4' +
              '82A8H54A828042A01N54IA10H2AH56D60ABDAFAF5A82802H01050H5101540OA5' +
              '1451J037A14EBF57AF650H54IA50AH08HA02A492KA954108KAD6025EAFAFBC0A' +
              '02104H0A1H52H0A81I54AL5I4J03BA1AFH7AF56151548515408H04HA054JA94A' +
              '4HA8H29K56E045AD75FD204H050802AI5H04AH0IAN5142H0823B412EFBDEAH8A' +
              '2HA0A2A81I0HA81Q54H810HA28ADE0A5AHEBFA21H01408128I5H028H0A4OA54A' +
              '0484374097F75EA0H8IA2A5H45020H54BEC9K54A95402150515DA14D5AF5EA24' +
              '010810210A8BH52A2JA92HA95295080A0436E0254A0A0H12HA45451H40A94AD5' +
              'HAD54HA4KA0A54152B74154A5695H401020108H2NABP54A1028082DA0A512948' +
              '12HA515H451M5ABH5OA81450542BAE092A9I2H8I080H289H2I5HABN54AI5410A' +
              '8282F41492494842IAH514249I56B6JAB6JA949428A028535E02A9H5I28041H0' +
              'A12HA8KAD6DBI5252IA9040A850HB4152524890H514H508924I5WA52A05042DA' +
              '089492H4AH082H045492JAD6BI56DBL540815052B6E0HAI5201H528HA92K56B5' +
              'HAB6BJ54JA95280A086F4125248954H042042924956ADT548H05414275E09492' +
              '6H02HA14A94H52H5ABI5AD5AB6AD5492J5028295EA0JA8HA804AI0949H56ADH5' +
              'AB56BH56LAH80A85H46B6121252H0H510IA52A4HABH56PAJ542A050H15DA09H5' +
              '28HA8084042HA536KABH5HAD5ADK5281505H476E0HA284H02A52A94892HADH56' +
              'IAD56ADH5KA854050H25B50914B1H501I012H54I5AB56D6ABI56A95495202A0A' +
              '916DE14HAH408A8I54HA4JABH5IABH56HAD54HA9150140H4B6A0549295205I02' +
              '91H2B6DH56HABH56ADMA40A82AH17BD1254AH0150JA4DK5ADHABH56ABI5KA2A0' +
              '541H4D6B09H28HA80A0109524JABI5HABJ56IA954815014H26HD0A9H504540HA' +
              'H5292ADBJ56ADHADIADI54A540A829176E125H45102AI0894AI56JABK56BH52H' +
              'A9014054095B5094A908A81J54M56DADH5B56AD5'
            
              'HAH54542A81456EF0HA2I4054H024A915IADOABK5290280282975A1H29492A02' +
              'JA54HAB6DL5B56BH56JA4502A85028AF09H510815H0H128A9J56AB6ADH5ADI54' +
              '9H510A8050A9J0A89H4280IA495256HABH5HADH56IABI54AH40H50405I012549' +
              '28H5I0HA49H56DHADJ5JADLAH2AH0A2HA8I094A085H0H5492HAH5IAB56B5ABH5' +
              'BH56IA9101H51405J0A52A20H5H09491296HABH5AD6AD6KAI548HAH041528I09' +
              '29H1502H5054A95HADO56AB6HA928410HA140AI015H4A40A8H0525H4HAB5LABH' +
              '5ADL5H2A404A1H58I04HA82A0I5094HAK5B6BH5KADH54HA1H02A8080AI0125H2' +
              '80AH08A52492AD56HAD6D56DI56JA8HA802AI5J0A898H51H5214HAJ56HABJ5HA' +
              'B6KA8410H54102A8I09545H04I08A91496IABJ5HABH56HAH5H2A5H014I5I0149' +
              '30H51I5H24HA5ADADI5ADK5HA95248H0HA8202A8I0548AH08080495494HAB5IA' +
              'B56B5B6KA12HAH054HA5I01H2A954H52A15H252JAB6DJ56LA94H01H5010548I0' +
              '9H5H02I0142954ABL5IADMA81H54H0A8I5I015H2H54JAH154A4AB6KADBN52A0H' +
              '2HA051H5J049540104H08AH252AD56D6DK56D54A840AH801509H5I012A895451' +
              'H521H52AI5JADJ5JA9514042HA0A52A8H0152540208084929452IABI5AD6DI52' +
              'A842A94H0A02A5J0894954A2A21294A895AB56BI5JA9H5H28021540JA8H026A5' +
              '40K1I424IABH5AD56JA9H54102AH802A0IAI0H1292A848H4H135252I56HAB56I' +
              'AI514A804H5414HA98H014948128512AH4HA892ABK5MA4H0H51H0142AH5I0154' +
              'A6A020H80I126A92DH5AD6LA41H5H08HA82954A8H024A510A9H42HA4A9124A2H' +
              'AB5JA9H514H0HA40128J5I01252A410H28I04HA9J56HAL5082HA012HA12J5I01' +
              '52952A548J52495H24J54LA2804HAI0A152HA8H0129428H012I021248H92A9I5' +
              '494A8H12A8H0IA094AH5I0294A92HA84IA8AI54H5254LA548H02HA0H14J528I0' +
              '4A2A8H051H0120924HA4IA9J5402I54015H4H2JAI02A549I508H541H492912NA' +
              '15I0215402H1K58H0152A4820A2809420H54D49I5495140IAH802A948KAI0H14' +
              'I54A082A02950852I52JA415H0H4H54042H525498H02A524A0152815I0A32925' +
              '4HAH50140H5H1H015102IAH5J0529H2HA042A0IA0H8A92HA940542A80H8HA808' +
              'MA8H0294IA40A1H0AH01H421J549502802AH4012A20A9J5I014A4951414HA1H5' +
              '4H2H8J0H20A82A8H12HA4H1L548H0125248C2820140H2902K510A02805H4I014' +
              '82IA4HA8H02A8HA52850HA15480A9K08A1542A0H2JA0H54AH54A8I04A92A920A' +
              'H08H02A04K5214010151H01H0A0MAI02A54AH495154I54151H02H048154HA08I' +
              'A5416AL58H0128A92A80402I01408H54HA854J0A401H02A2MA4H014A4H52H515' +
              '4IA8145J04202JA12HAH540IA52525I0H252A49508010412A20JA915H0104801' +
              'I01J54JACH0152A92A8AH5451H409401I080IA50H54I54H52LA4H012924A451H' +
              '020821402HAH54H5J0A802H0H2IAL54H0294929354H54A5142A8I0H208I5402A' +
              '9H549L54HA8I0AI54H8A80H108280J54952H082A81J0H52HAH52954H025248HA' +
              '5H2A8H450H5H08J01H528054K52HA952HA9I0129264HA9412920A02H52JA8080' +
              'H502H082IAH54JACH014H5124952840151508H01040H52AH0A8HA2DI54ABJ5I0' +
              '2549H52494A154040A2IA515I01H502H12LA9J54H012A549H54A4A02A941K082' +
              'I54H054A4A9H52LA54H01454A49H2520A8H028KA280802HA0102A549J5492A8H' +
              '0129H2A4952940I5H4H040H12A2A804A8N54KA4H02A4HAI549I5I012HA954804' +
              '812A8452LA92AJ54I0952924A2A490IAH804H08H5054H0290HAQ528H02529492' +
              'H52A4AH0H42A9H5202502HA806A9H52A9K54A8H01494I51291J5128J01540A8H' +
              '0H59I52AK54AH54H02A4A9295H4A9240H8K5401402HA8A54PA9H54H0H2A5494A' +
              'H5H492A42J082A82A804N54A4A4JA8H02928HA29292JA29J5280540H53K54IA9' +
              'M54H04HA512A494A9249H402080H5015054MAL54IA4H02914A952A2949252954' +
              'A2AH0HA0BK525294NA54H024HA948AH54I54A520101H5016JA4954LA9K5I052A' +
              '24AH528A924A9496CHA0ABDV5254HACI0AI52A4952492452A92A5694H54A52NA' +
              '4KA95I0H5124912A29I52A924AL52A9Q54IAH54CH024C92IA54A492AH492912K' +
              'AL52JAO5I02A2HA4929252492JA4CA9N529H5492OACH0495252494A9H5491249' +
              '52A54NAH52L549J5I025292954A949254A92529J52I549M5492HA92928H02895' +
              '45H2L012H5494MA4RAL54gI0I54HAg54gI02A92NA92A92OA8gI0AO52I54HAJ52' +
              '54954gI054MA4NA4LA9gJ0K5252L52JA92HAI54gI0JA954KA4OA9I54gI0gJ54A' +
              '8gI0HA92QA924IA4JA8gI052L54952A94JAK52A4gI0JA92JA9I52IA952JA98gI' +
              '0L52K52PAI54gI0JAI54KAP54HA8gI049S54LAJ54gI0IAK54929I5292H549H54' +
              'A4gI0K52KAH54KA92JA94gI0JA952K52A9N52IAgI0H529J52JAK54KAH54gI0HA' +
              '84S02JA9I54hO02H0'
            ''
            
              '~DGR:MIL.GRF'#31'4000'#31'32'#31'zoR03B81840EC03B807E1H0187E1060EC1FgS060C0C' +
              '4186060E0C2186180608C18203gS0C0606410604060821861H0608C10201gS08' +
              '06064302080318218E3H060C810203gS0D0201430208010C20H9BH0607010303' +
              'gS0FI03C107080107E0D9BH0603010201gU0206C302180103E0F1A07E0301030' +
              '3gU020C430208010620E0E02E03010203gU0618410608030420606H060C81020' +
              '1gS0C0608C30304060620406H060C810303gS0E0C0C4302070E0620402H0608C' +
              '10203gS01FH034102H0FH01A04I06A10610201zjL02H083I0FC03E18084106hI' +
              '03H083I0AC0EA18084104I028gS01CI038083J0C1820808430CI038gS01CI034' +
              '083J0C1020F78628CI03CgS01CI032083J0C10207F0H6C8I03CgS038I0H3083J' +
              '04202043024HCI03CgS038I031H83I04CH020H206C68I01CgS038I030483I01C' +
              '20202403828I01CgS07J030683J0C10203403838I01CgS07J030383J04102014' +
              '0303K0EgS07J030183J0C1820180101K0EgS0FJ03H083I0FC07EH0801M0EgS0F' +
              'R048H04H0801M07gS0FgO07gS0EgO07gS0EgO038gR0EgO038gQ01EgO038gQ01C' +
              'gO038gQ01CgO038gQ038gO038gQ038gO038gQ038N0EQ02N01CgQ07N03EQ078M0' +
              '1CgQ07N07FQ07CM01CgQ07N0HF8J0EK07FN0EgQ07M03F78J0FK0F78M0EgQ07M0' +
              '3C38I01F8J0E7CM0EgQ07M03838I01FCI01E3EM07gQ0EM0F03CI079EI01C0FM0' +
              '7gQ0EM0F01CI0F1EI0380FM07gQ0EL01E01CI0E0FI038078L078gP0EL03C01CH' +
              '01E07I038038L078gO01CL03C01CH01E038H03801CL078gO01CL03801CH01C03' +
              '8H07801EL078gO01CL07801CH01C03CH078H0EL038gO01CL0FI0CH03801CH038' +
              'H0FL078gO01CL0EH01CH03801CH078H0FL078gO01CL0EH01CH03801CH078H07L' +
              '038gO01CL0EH01CH03801CH038H07L078gP0EK01CH01CH07H01CH038H07L078g' +
              'P0EK01CH038H07H01CH038H07L078gP0EK01CH038H07H01CH038H07L07gQ0EK0' +
              '1CH038H07H01CH03CH038K07gQ07K01CH078H07H01CH01CH07L0FgQ07K01CH07' +
              '8H07H01CH01EH03L0EgQ07K01CH07I07H01CI0EH07K01EgQ038K0EH0EI03801C' +
              'I07H07K03CgQ03CK0C01EI03801CI07807K038gQ01EK0E03CI03801CI0780FK0' +
              '38gR0FK0E078I03801CI03C0FK078gR0F8J070F8I01C038I01E0FJ01EgS07CJ0' +
              '71FJ01C038J0F0EJ03EgS03EJ07BEJ01E078J078EJ03CgS01FJ03FCJ01E07K07' +
              'FCJ0FCgT07EI03FL0F1EK01FCI07EgU03FC03FEL071EL0HFH01FCgV0KFEL079E' +
              'L0HFEAHF8gV01IFC78K01F8K01EJFCgX03FD078K01F8K03E0HFEhI03CK01FL07' +
              'C014hJ03FK03FCK078hN07CI01F9F8I07EhO07F8H07F1FCH01FChO01FE8BFE07' +
              'FC2HF8hP0KFC03KFhR0IF8I03HFEhS0174K03A8lH0E8iG03FCiG0HFEi01FBFi0' +
              '1C03ChY03801ChY03801ChY07H01ChY07I0ChY06I0ChY07I0ChY03H01ChY0380' +
              '1ChY03C01ChY01C03Ci0IFiG07FEiG01FCiH04zpN0'
            ''
            
              '~DGR:QS.GRF'#31'6453'#31'27'#31'hRF80hRF80FDF7DF7DF7DF7DF7DF7DF7DF7DF7DF7DF7' +
              'DF7DF7DF7DF7DF7DF780ChP0680EhP0380EhP0380EhP0380EhP0380EhP0380Eh' +
              'P0780AhP0380EhP0380EhP0380EhP0380EhP0380EhP0780EhP0380EhP0380EhP' +
              '0380AgH04gM0380EK01CF0FC3E7C79E71C3F9E78FC0HF1FC7F801C7F838J0380' +
              'EK03EF9HF3E7E30C39C7FHC31HF1HF3FE7FC01E7FC78J0780EK01C71AF0F1E79' +
              'E71CF39E79CF1EF19EHF801C79E38J0380EK01C38070E0E38E31CFH0E38073C7' +
              'H0703801C31C38J0380EM078078E0E71C78C741C7H07B87H0703CH0E79E38J03' +
              '80EM039HF0F0E38E31C7F0E39HFBC73HF03801C31C38J0380EM079HF8E0E79E7' +
              '9C3F9E79HF3C73HF03801C79C38J0380EM039C70E1E30C31C078E31C7B8738F0' +
              '3C01E31C78J0780AM079C7870E79E79C03DE79C73CF1C703801C70E38J0380EM' +
              '039HF1EAE38IFC7F8HF8HF1HF1HE0380FE39CB8J0380EM078FE3FBF70IFE7F8H' +
              'F8FE0HF1FE03C0FC71HFCJ0380EM038383F7F3071483C06A8380F70780380CA2' +
              '94FCJ0380EM078I0E0EV07J03CI010838J0380EM038I060E38T07J038I03BC38' +
              'J0780EM078I0E1878T07J038I07B9F8J0380EM038L078T07J02CI039BFK0380E' +
              'M02M01U04R0AK0380AhP0380EhP0380EV018gR0780EV038gR0380EV07CgL0CK0' +
              '380EV0EgL01F8J0380EV0EgL017CJ0380EI03CE387E3E0FC1E07F0C37C1C01CH' +
              '073871C01C1FC1FCI0380EI018F39HF1F1HF1F0HF9E7FC1C01CH0E3871C03C7H' +
              'F1HFI0380AI03CE38CF0F3CE1F0E70C7DE1CH0EH071C71E03C7DE3DF8H0380EI' +
              '01C63803873803F1E01E38E1C01CH0F3871C018F027838H0780EI038F1847873' +
              'E03B8FH0C71C1C01EH0738F1CI0FH0783CH0380EI01CE39HF873FC3B8FE1E38E' +
              '1C01CH0E3C71EI0FH0703CH0380EI03CE39HF871FE7387F0C79E1C3FCH073871' +
              'CI0FC0781CH0380EI01CF38E38703E71C0F9E30E1C7FEH0F1871CI07F8703CH0' +
              '380EI03CE39E787H0E71C070C79C1CFBCH0E3CF1EI07FC701CH0380EI01IF8F7' +
              '179DEF1CEF5E38EFEF0C07F3HF1CI01FE783CH0380EI01IFC7F1FBFCE1EHF7E7' +
              '9EFCE1E07F1HF1EJ01E703CH0380AJ0D1903C3F8F0C0C7C7E508CAF1C0640E71' +
              'CJ01E7838H0380EQ07O0C108H0F1CK071CI021E7C78H0380EQ07N01E3BCH0HFE' +
              'K071EI07FC3HFI0380EQ06N07C39CH03FCK071CI0HFC1FEI0380Eg0FC39CH015' +
              '4K0714I03E8058I0380Eg05T04T0380EhP0780EhP0380EhP0380AhP0380EhP03' +
              '80EhP0380EhP0380EhP0780EhP0380EhP0380EhP0380EgH014gL0380AgG01FCg' +
              'L0380Eg01HFCgL0780Eg0HFDCgL0380EY07FEFCgL0380EX03HF7FCgL0380EX0H' +
              'FBFECgL0380EW03DBHF7C3HFE8gG0380EW0JFBFC3JFDg0380EV03EFEDHFC3HFB' +
              'HFDY0780AV07BEIFB41B6JFCX0380EU01EJFDFC3IFHBHF8W0380EU03HFBHDHFC' +
              '3KFH7FW0380EU0MFDC2EFBKFCV0380ET01FBDF7FH7C3FDF6DJFV0380ET07HF7D' +
              'F7HFC3KFDB6FCU0380ET0FDKFDFC1B7DMFU0380ES01EFDF7FDFEC3HF7HEIFDF8' +
              'T0380ES03KFB7FBC3IFBFIEFEU0380AS07BEFBEHFBFC2EJFBIFAU0780ER01HFB' +
              'EFBJFC3FHDFBIFECU0380ER03MFDF743IFEHFB6FCU0380ER05DBFBEFDFDFC1BF' +
              '7BF7IFV0380ER07HF7IF7F7FC3F7LFB04T0380ER0IFEF7DFBFDC3HFEFDEHDE0E' +
              'T0380EQ01F6JF7JFC2FDBF7IFC0FT0380EQ03HFDFDHFEFEFC3DMF81FCS0380EQ' +
              '07IFB7DHFEFEC3IFBF6ED83FES0380AQ0FBH7IFEJFC1F6HFDIF07DFS0380EP01' +
              'MFBDBDBC3BFDF7HFE0HFB8R0380EP03DHFIEDJFC03IFDHF6C0F7FCR0380EP037' +
              'HDBLF6H01FBIFBF81IFER0380EP07MFHEFCH03DFH7IF83DEDFR0380EP0HF7HFB' +
              '6EHFDC01BJFBFB07JFCQ0380EP0F7F6ELFC1KFEF6E0HFBF7CQ0380EO01NFB6FE' +
              'IF6DBH7FC0EDFBF6Q0380EO03DEJFHBHFEIFBIFE0FC1LFQ0380AO03HFDIBMFBJ' +
              'FE0303HFDFBF8P0380EO0H7BKFIEFHDHFIBAH087HDFDHFCP0380EO07JFEF6IFD' +
              'IF6JFI07IF7F6CP0380EO0FEF6DBIFBJFDKFEH0FH7BFDFEP0380EN01FBJFDFBF' +
              'B7B6IF6DBF81NFP0380EN01DLFDNFBJFE3HFEFEHF78O0380EN01HFBH7BIF6FEI' +
              'F6JF6FBDHBEHF7F8O0380EN03FEHFEF6FDHF7HEDHFIDNFBHFCO0380EN03B7KFE' +
              'HFDHFDH0B7IFDF7HFBDFHDEO0380AN07IFB7KF7FAJ07F7F7DFB7KFEO0380EN07' +
              'HFBHFIBF7FEL07FBHFEFEF7DF7BO0380EN0FHBHFEIFBHF8L01EHF7KF7BHFO038' +
              '0EN0EHFEDKFHEN07FDFBF7DIFEF8N0380EN0HFEHFBEDBFBCN03F7HFDHFDHFBFC' +
              'N0380EM01FEMF6F8O0DFEF7EHFHEHF4N0780EM01FBFHBF7JFP07FBIFEFBHFDEN' +
              '0380EM03DFDHFBFH7FCP03KFBEIF7EN0380EM037IFEJF78P01DFHB6IFBDFEN03' +
              '80AM03HF7DBFBFDE8Q0FEJFBHF7HFN0380EM03FBF7IFB7FR07BHFBHFDIF7N038' +
              '0EM07DJFDEHFCR03FHE1DF7DFDE8M0380EM0H7FBHF7IFCR01HFC1FDHFEFO0380' +
              'EM07FDFDBFBFE8R01EFE0IF7FP0380EM07IF7IFDB8S0FDF06HFEQ0380EM0FB7D' +
              'HFDF7FT07HF07F68Q0380EM0DHF7FDFDFET0I783DJ08N0780EM0JFEJFET03HF8' +
              '3J0B8N0380AM0FEJFB7ECT03FDCJ0HFCN0380EM0EFHDBEHFBCT03DFEI0IFCN03' +
              '80EL01KFBFEFCT01HFEH0HFBECN0380EM0FBF7IFBF8T01F760HFBFBEN0380EL0' +
              '1DF7FDFDHF8U0DHF7FDFEFCN0380EL01IFEFEHFE8U0JFB7F7FEN0380EL01FDEH' +
              'FBHF78U0FHDLFEN0380EL01B7HFEHF7FV0IFEHFBFDEN0780EL01IFB7FDHFV0EH' +
              'FBFEFB7BN0380AL01HF6IF7EDV07EDFEKFN0380EL01DJFDIFV0JFBFEIFN0380E' +
              'L01FDHFB7IFV0H7FEFDHFHDN0380EL01IFBIF6FV07FH7HFBDHFN0380EL01I56A' +
              'D5B5V07DIF7IF78M0380EgR07IFDHFH7FN03'
            
              '80EgR0F7DB7EJFN0780EgR07KFDFHD8M0380EgR0FEKFDHF8M0380AgR0B7IEDJF' +
              'N0380EgR0LFB7B78M0380EgR0HF7BLF8M0380EgR0FBHFB7FEFD8M0380EgQ01EF' +
              'C3FHEFEF8M0380EgQ01HFC3LFN0780EgQ01FEC3HBFHBF8M0380EgQ03HBC3HFBH' +
              'FBN0380EgQ03HF83EHFEHF8M0380AgQ07EFCH7HEFEFN0380EgQ06HF83LFN0380' +
              'EgQ0HFD87FBFDBD8M0380EgQ0FBF87DFB7HFN0380EgP01DF703KF7N0780EgP03' +
              'IFH0FDHFDFN0380EgJ08K03FDFH01FHEHFN0380EgI01L076FDEH07BHFEN0380E' +
              'gI038K0KF801IF6N0380AgI07K01HFEHFEH07HBEN0380EgI07K03FH7FHB8H0HF' +
              'EN0380EgI0FK07DHFDIFH06FCN0380EgH01F8I01JF7IF801HEN0380EgH03FJ03' +
              'F7DBFDBHFH03CN0780EgH03DJ0FDJF7FBFCH0CN0380EgH07F8H03F7F7FDKF8P0' +
              '380EgH0F7I0FBFDFB7FDEDFCP0380EgG01HFH07EIFEHFEFBIFP0380AgG03HF8B' +
              'FBFENFB6P0380EgG03HBHFEHF7E7FEFEFEFEP0380EgG07LFDFC3B7DBF7FCP038' +
              '0EgG0FEF7F7IF41MFCP0380Eg01EIF7FB7F03HF7FDFB4P0380Eg01HFDHFDHFA0' +
              '7HBFEFDF8P0780Eg03HB7DEHFEC0EHFEJFQ0380Eg07LFEF81IFBFEFDQ0380Eg0' +
              'JF7BEFE03FHEFDBEFQ0380Ag0F6EIFBHF07HBKFEQ0380EY01JFEHFDB07JF7FBC' +
              'Q0380EY03DHFB7EIF87EFHBFEF8Q0380EY07FEDJF7F82JFEHF8Q0380EY0HFBIF' +
              '7DFBC1FDEFBHFR0380EY0DBHFHDF7EFC1DHFEFHDR0380EX01IFELFE0HF7IFER0' +
              '380EX01HFH7HFDHFHE0FBF7F7CR0780EX01EIFHEFEDHF07IFBF4R0380AY07DHF' +
              '7JFBF87FBEHF8R0380EY07FDBIF7HFB836FBFDS0380EY03JF6DF7HFC3JF7S038' +
              '0EY01HBFBIFEDF41FEFDES0380EY01HFDIFDHFDE1BHF7CS0380Eg0HF7FHBJFE0' +
              'FBDF8S0380Eg06DFEIFHB7F07IFT0380Eg03HFBHF6IFB07F7ET0380Eg03FEFEJ' +
              'FEF86DF8T0380Ag017BHFDFHEFE03HF8T0380EgG0IFBFDIF801FEU0780EgG07F' +
              'EJFBCH01FAU0380EgG03H7FH7BEJ0ECU0380EgG03KFE8J0FV0380EgG01HFBFCL' +
              '06V0380EgH0DB4N04V0380EgH07FgL0380EgH07FgL0380AgH0378gK0380EgH01' +
              'FgL0380EgI0FgL0380EgI0D8gK0380EgI07gL0380EgI03gL0780EgI018gK0380' +
              'EgJ08gK0380EhP0380AhP0380EhP0380EhP0380EhP0380EhP0380EhP0380EhP0' +
              '380EhP0380EhP0380A4924924924924K84M0O84K010841I01780hRF80hQFD80H' +
              'FDFBEFBEFBEFBgXF80'
            ''
            
              '~DGR:BIM.GRF'#31'3819'#31'19'#31'gM0EM06gN01EL01EgN03EL01EgN03EL03EgN03EL03E' +
              'gN07EL03FgN07EL07FgN07EL07FgN07EL07FgN0FEL07FgN0FEI07F8HFgN0FEI0' +
              'HFCHF08gK01FEH01HFEHF0CgK01PF1CgK01PF1CgK03PF1CgK03PF0CgK03PF0Cg' +
              'K03PF8CgK07PFHCgK07PFHCgK0QFECgJ01QFECgJ01RFCgJ03RFCgJ03RFCgJ07R' +
              'FCgJ07RFCgJ07RFCgJ0SFCgJ0SFCgJ0SFCgJ0SFCgJ0SF8gJ0SF8gI01SF8gI07S' +
              'F8gH01TF8gH03TFgI07SFEgI0TFEgH01TFCgH01TF8gH01SFEgI01SF8gI01RFEg' +
              'J01LFgQ01LF8gP03LFBCgO03MFCgO03MFCgL01803MFCgL03801MF8gL07H01MFg' +
              'M0FI0LFCgL01FI07KFEgL01FI03LFgL03EI03LF8gK07EI01IFE3F8gK0FEJ0IFC' +
              '078gJ01FCI07IF801CgJ03FCH01IFCI0CgJ03FCH03IF8gN07FCH01FCF8gN0HF8' +
              'I07CF8gM01HF8K0F8gM03HF8K078gM07HFL078gM07HFL03CgM0IFL01CgL01IFM' +
              '0CgL03HFEgT07HFEgT07HFEgT0IFCgS01IFCgS03IFCgS07IFCgP0PFgL07QFEgJ' +
              '07SFgI01TF8gH0UFCgG03UFCgG07UFCg01VFCg03VFCg0WFCY01WFCY03WFCY07W' +
              'FCY0XFCX01XFCX03XFCX07XFCX07XFCX0IFE7079C1E0CE73IFCW01IFE6039H8C' +
              'H4CH3IFCW03IFE673H9HCE4CH3IFCW03IFE7F393HCE4CB3IFCW07IFE40193HC0' +
              'HCB3IFCW07IFE47393HCFCD93IFCW0JFE67313HCE4H93IFCW0JFE60213HC0CH9' +
              '3IFCV01JFE70793CE1CBD3IFCV01JFE7HF9JFC3C3IFCV03JFE7FE1JFC3C3IFCV' +
              '03gFCV03gFCV07gFCV07gFCV07gFCV07LF01HF83FCH03IFCV07KFCH07F83FI03' +
              'IFCV0LF8H01F83CI03IFCV0LFJ0F838I03IFCV0KFE07E078381FC3IFCV0KFC1H' +
              'F078307FC3IFCV0KFC1HF878307FC3IFCV0KFC3HF838307FC3IFCV0KF83HF838' +
              '307FC3IFCV0KF83HFC38383FC3IFCV0KF83HFC383CI03IFCV0KF83HFC383EI03' +
              'IFCV0KF83HFC383EI03IFCV0KF83HFC383CI03IFCV0KFC3HF838383FC3IFCV0K' +
              'FC3HF878387FC3IFCV0KFC1HF078387FC3IFCV07JFE0HF078383FC3IFCV07JFE' +
              '03C0F838I03IFCV07KFI01F83CI03IFCV07KF8H03F87EI03IFCV03KFEH07F87F' +
              'I07IFCV03LFC7RFCV03gFCV01gFCV01gFCW0gFCW0gFCW07YFCW07YFCW03YFCW0' +
              '3YFCW01YFCX0YFCX07XFCX07XFCX03XFCX01XFCY0XFCY07WFCY03WFCY07WFCY0' +
              'XFCY0XFCY0XFCX01XFCX01XFCX01XFCX01XFCX03XFCX03XFCX03XFCX03XFCX03' +
              'XFCX03XFCX03XFCX03XFCX03XFCX03XFCX03XFCX03XFCX03XFCX03XFCX01XFCX' +
              '01XFCX01XFCY0XFCY0XFCY0XFCY07WFCY07WFCY03WFCY01WFCY01WFCg0WFCg0W' +
              'FCg07VFCg03VFCg01VFCgG0VFCgG07UFCgG03UFCgH0UFCgH07TFCgH01TFCgI07' +
              'SF8gI01SF8gJ03QFEgL01PF8W0'
            ''
            
              '~DGR:BIOLETZ.GRF'#31'4475'#31'25'#31'zpMFEHFDIFBYFBIF7LFBFBJFI0HF87E1F8H07FE' +
              'H0IFH01EI0F8I07F87FCH01EI0IFEI0HF87E1FI07FCH07FCH01EI0F8I07F87FC' +
              'H01EI0IFEI03F83E1F8H07F8H07F8H01EI0FJ0HF87FCH01EI0IFE0601FC7E1F8' +
              'H07F0303F81C1EI0F8I0HF87FEH01EI0IFE1FE0FC3E1IF87F0FC1F87E1IF0IFE' +
              '1HF87IFE1IF0IFE1FE0FC3E1IF87E1FE1F07E1HFE0IFC1HF87IFE1HFE0IFE1HF' +
              '07C1E1IF87E1FE1F0FE1IF0IF83HF87IFC1IF0IFE1HF87E1E1IF87E1FE1F07C1' +
              'IF0IF87HF87IFE1IF0IFE1HF07E0E1IF87E1FE1F87E1IF0IF07HF87IFE1IF0IF' +
              'E0BF87E021IF87E1FE1F87E1IF0IF0IF86IFE1IF0IFE01F87F801F8H07E1FE1F' +
              '8H01F8H0HFE1IF87FEH01IF0IFEH0F87FH01B8H07E1FE1FCH01FI0F7E1IF87FE' +
              'H01IF0JF01F87EH01F8H07E1FE1FEH01F8H0DF83IF87FEH01IF0MF87C1E1F8H0' +
              '7E1FE1FEH01F8H0HF83IF87FEH01IF0MF87C3E1IF87E1FE1F83E1IF0HF87IF87' +
              'IFE1HFE0MF0787E1IF87E1FE1F87E1HFE0HF07IF87IFE1IF0MF0787E1IF87E1F' +
              'E1F87E1IF0FE1JF87IFE1IF0LFE0F87E1IF87C1FE1F87E1IF0FE0JF87IFE1IF0' +
              'LF81FC3E1DHF87E1FE1F87E1HFE0FC1JF87IFC1IF0JF9681FC1E1FAD87E1FE1F' +
              '83C1F6E0F81B7F682BHF41IF0JF8H07FEH01F8H07E1FE1D8H01FI0F8H01EI01C' +
              'H01HFE0JF8H07FEH01FI07E1FE1FEH01EI0FI01EI01EH01IF0JFH01IF801F8H0' +
              '7E1FE1HFH03FI0F8H01EI01EH01IF0JFE0JFE05F8H07E3FE1HFC0HF801F8H01F' +
              'I01EH01IF1hIF9E7hMF9E7hLFE0C3hMF0C3hMF9E7wVFBhO50H2Q0I8R02I0H2I0' +
              'I2O04H8QAI2RA8IAH8IAI8MA94102S08R02I02K02N0214504A492492492HA129' +
              '2492492492049285249505249249204H05H02081H084I04H082J04H0150H41K0' +
              '504104I0A0548H50A28542152515428J51H54051084IA4821451H540AH01H04H' +
              '02010801I0101N09H0H2K0108K01404A82492A4924248252H484924A49202508' +
              'A892AH4254A494121028H04I081084H80105041H08H4508410H2010H1I084108' +
              '4201H509541H4210154205142A2H104H1H4896C4H82542084208A4H02H014H10' +
              '854H089I08H08049H4017IFAH28010AH204201248A9208I4H09H2025H2542AJ0' +
              'BLFC82AH40H8A1094082H0H42I14A0H8AH80801H0HA297FEJFE1H0H12020H421' +
              '4284AH108H410A02021429248H08OFH49I4509H104101H080421082050484102' +
              '0H2923IFBFI7F810101040H450848542A2H8H28485010848A8409HFHEKFB9454' +
              '282141H0J201H08H2401010284H2H010A7KFDJF8I082H814290H812H4A1H0148' +
              '54242H10A9421IF7KFEFEA9210H2808242140H808H541201H0I84I087F7BIF7H' +
              'EHFC02084H8242410814H282I0809054I212523LFBFBIFE90AH2010101H4281H' +
              '0289242A050108084H05FBIF7LF6040105I454H1024548204280A04841451H5K' +
              'FDF4H017BF512850I1H0804810H10A10120A02141I01IFHEFC12485HF8402048' +
              'H4242AH282I40848040AH814254HFDIF8087F105F90A8902H081H080280H1H21' +
              '2A140H2810817HFDBC1H2HF8417820I289428491482A840H8H0812082H417HF7' +
              'FE14087FE1409090842010H204H1H020AH2A4508A20H147FDHFH80A2HFE8120A' +
              '04108H4510A1H249120H80205208A841JFAH2AH0FDE28040A142I10H40808H04' +
              '082128AHF4H0209JF408048EHF02A120808I42H1H2A12A1428402IFA54897HEF' +
              'C142484HFEA808H4242101084080H40810H1H5IFE01027IFA81H021IF01H2J10' +
              '82H420A121097HF401IFBFA451IFE024H508HFE240H808I48H10A0408H2IFA53' +
              'KF8105EHFE489H045FBF014H2A2H102424091H48KF0HFEDHF9427HF7H0202490' +
              'EFHA8108H08428081204102KF2FB7HFEC087HFE95048103IF02H412A210242H4' +
              '5082BKF9HFCBFBDH2F7FEH05H1429HFE24H14H0H85010910H287HDIBIF41EFE0' +
              '8HFD8920H4081HFE01H4148H20I4H04H81MFHE24HFCA1HF7821401H25FDE54H0' +
              '81280AI14A0213F7KFBC017FE03HFE2H8154081EFAH0HA2401408H4H0A845HFE' +
              'IFDF8A4HFEH5EFE4024H0A15HFE49H080A4142H0HA010FDFAB6EHF2H07HE07HF' +
              'A0A8124081HFE0H24140121054H0484HFE01IFE094HFE87FD8902802825HFE50' +
              '8141540H40125051HFD29IFC4027BE2IF80202A8289HDA081412015H14H80505' +
              'EF802IF91507FE8FBE2A8A401021HFCA2808048H041214023HFHA9HFD8H04HFE' +
              '2DFE8J094505HFCH02A2A024A04041487BEI0FB72A507FE0HFE12H542H051HFA' +
              '95J0A810A0912027FE924IF8105H76BHFH4I0105405FDCH052A402820I4050HF' +
              'EH08HFE1020HFE1HFD0HA4850143F79548H0120284101504HFA542HFE450A7FE' +
              '1F7C4H012024H1DFCH0149H4A4H1428021FE8010F7EH040HFABDF914940A4127' +
              'HF8928101I08410248BFBD484HF6H512FDE1HF8H040A01403HF8042454294204' +
              '50821HF81H2HFCH049F7C9HF95212094153HFHA0H8H082H12104287EF1H08DFE' +
              '9201HFC5HF8048H4H0807HF80AH29H20H404H2017FE4542HFC20ABHFD1FD9202' +
              'H15H243HD8AI0208AH140H8A47BE1010FHD0A01HFC1F784AH840401H7FA09548' +
              'AH084142H08HFD0485HFC404HBD8AHFDH0H2091543HF84K054208105427FCA02' +
              '0HF91203HFA1HF82480AI017HF2152H52010A245010HFA0A8BEF804ABHF847FE' +
              '80140HA487FBH804H04AH4H010485FB8A021BFHAH07F780HFC2A828H0827BFH2' +
              '9149H0H12A42051HF80489FE80A97DF2A7BE805029H287HF08041049I4010A03' +
              'EFA4801HF92H07HF806HF120480402IF425085040109H4091HF082ABHF20957F' +
              'E491HF8490250H87HE1H0H2021282H02425HF42803HF0AH0IF043HFDH0508I2H' +
              '7F09508910'
            
              '428A50901FE10125F640A5FBE208FDEHA04101IFE42040245082H04053F6H480' +
              '7DE2A01HFA0A0H7FA09145F7HFE10425010210451503FE102A7FE8051HFEA041' +
              'JFELFHE45108542H84104029DE85H0HFC1205EFC0912PFEFE10H41H08H21H409' +
              '07FE20527F94123FEA40483DLFBEHFE84H1H491H08014049FE0904F781415HF8' +
              '150297KFDJFE21H41H0H4A2A41523FEA041HF24143HFA802801EHFHEHF07FC08' +
              'H082A1H08012H0HBE0A15FD4080HFB02481281F7IFCA7B6A2542H082A2H40491' +
              'FE4083FE14243HE4H8240240EHFCH0HFC0H810A828H0H15043FE1H2BFE4102H7' +
              'E0H28148H1IF254HFDH21240282H5H405H1HE4087B4H8A89F8A8028H14IF4102' +
              'DFA08401502K09045FE142HF8H2023F401482H417HE9410FECA10A80D0A92H40' +
              '201HF8H1HFA8048H0124H10817HFAH084HF8042025E40209150A8HF285FE0150' +
              '14120H8H4287HF89H21HF92109H1E148A0404027DA2FHE48054140AH20103HFA' +
              '020H8F78084047F81H0412124HFC17FC829H0814H08A849F7C50A23HF9H4950B' +
              'FD452140H8037JF8280242412AH0207FE904H09HF81I02HFEH0141H42A9JFE90' +
              '250H10840524AHFE0212A1DF94H529FBE29404H1H01JFE04805I42090401FBHA' +
              'I805HF01I03IF820908H490JF8502A01028A05149HF80H2121FDA424A7IF9042' +
              '421H042FBD28280A42820AH013DFA48040BHF10801FDF7E5101082AH1DFD0101' +
              '201010809507FE8015141HF42154KF0J428084I09454095FE429H057FE15404H' +
              '1HE10803F7HFE909H1024502H4J0A27FE1H05207FA801208BFEH4297HFDF6020' +
              'I48205I152A408IF84AH0AFBE29H0A23FE0102JFD9509J1090H4J0141IF91094' +
              '17FE025408B7E9451IF7F804040I4H210A4A9413HF7842015HFC5H01205F6010' +
              '7FH7FE49140A0H10H820802105F7F908A81HFA054H853FE5H4F7IFA0H4140A8H' +
              '402892A0457IF42H029HDCAH04107FCH01DIFE8AH081402H15K0A107IF08A901' +
              'HF80921H4HFEA2BIFHE20HA241208404HA920827DF642H0H5HFD2048107F8087' +
              'HFHBA84H08108A2091I0H428HFDE104A01HF80A02427EDH2HFEHF821241H4208' +
              'A0424AH1023HF945H0A5ID40AI8FB84BFBHFE108414H10820508108H485HF810' +
              '5401HFC1202026FA07JF8H421404242848H28H2J1742420154HFEI4850HF89F7' +
              'FDE2I1H090810101082I8401508109201HFC81010AHF93JFCH8H452042454284' +
              '102020A8042842048HDE285H40HF2IFH71021080A108H08H2H4850A02A102109' +
              '027FE820H15HF9FBHFE45082140H42A4248101040901H4I8450IF109H01FD7EF' +
              'DF810428414H1H01H0285H49205010I21047HFH40HA5EHFBHFE28H282121I494' +
              'H50201H04505050I8213FB914H01KF7802H81080401041H048902A1048504I2H' +
              '85DFE41253KFE15021242A054210490205H08401021H08021IF08H0BKF140484' +
              '01H0AH0H850H28A05H215H4H8541289IFE2HA3DHEFD41H2H15252049H2050820' +
              'AH0H8I0H20140207JF57JFEH0810H4J091H08A042040HA0292AH890150A5FBNF' +
              'C8A28510954A045210910A14H05H04H0H25H0402ELFEFA12H02042J0AH0H420H' +
              '4081250H509508052128HFBFBDFBE840948908525405410850142H804802H041' +
              '480H821HFBHFDE021201I21H08120142102810214H128A49401H42403KF12084' +
              '5408084A10H480H8485250414H0208H0A8H1H0A4K040A21H081421045012AH2H' +
              '1I05120HA042A4028454I0A402140H82428H1421024I01H42A90404H0A1H0124' +
              '2101548012H814028102H80H848092A801H0H20A1490849H40H824012AH80241' +
              '5028A8H24H202H4H025H490890804H210H1I28124H0424I804820240108A810A' +
              '48H010420H2A0I85H04081401521010H248109015H4202420129285105080A0H' +
              '20H514120A804854508H2840540H1048109402020H4842405089I0140402402I' +
              '04280215H0904501H42090A890I10120420495H0A1481509291014H80240A105' +
              '4H1042402028H4541510A1H052080280H4020481H29014082H042510120A8201' +
              '0140H408520H452829H150A128080A81H28920804540A024A8240901H204AH10' +
              '41H04H04080242402I8H0H4241014048H0280A028489H084208H50A49H2AH102' +
              '482012A01094241502A481405020204920892H02080480845082454H0AH4H080' +
              '805I0241205120A1H0A2H0A48A2A02H410428101520H15H2A290495012150414' +
              '08540854012I0A0H14H2028480H4'
            ''
            
              '~DGR:MN.GRF'#31'4600'#31'25'#31'lK09hL01F8FChI0C030H8603EgY0FE030H86037gY0E6' +
              'H03C8606198gU03E0203EC86061984gS01A202030D8607F10CgS05C30301H9FC' +
              '04H30CgS08C303H0F1B806H308F8gQ086103I018H03E31H8CgO01D86181I018J' +
              '03180H4gO07821818H018H0183F904CgM03C382H018L07H0930C78gL07E172S0' +
              'H308HCgL0C6138S031FH86gL0873U020F186gK08D93X0304gK0C31Y030C7gJ0H' +
              '63gG0CFCgH0863Eg01986gG018318g01383gH0C18gH0303gH0618gH0606g018H' +
              '3gI040CgG0C3EgI061CgG0E1P01JF8N0718g0C63O03LFCM03B18Y0E3EN03NFCM' +
              '0E061W0371CM01PF8L06023W0618N0RFO03CV060CM07RFCN0E6V060EL01TF8L0' +
              '1C3V030BL07TFCL0383V01H98J01VFL0686U078FL03VFCK0C8EU0CEM0XFK08F8' +
              '6S0186L01XF8K070CS0183L07XFEL038S0183L0gFL06T01C2K01gF8K0604S0E6' +
              'K07gFCK041CS03CK0gHFK0638Q01EL01gHF8J03E1Q01B8K03gHFCK0C1Q030EK0' +
              '7gHFEK087Q0206K0gJFL0ECP07L01gJF8J01C4P0F8K03gJFCJ03H6Q0EK07gJFC' +
              'J0H36Q078J07gJFEJ0H1CO0181K0gLFJ01EQ0EK01gLF8J0CQ03CJ03gLFCW0CJ0' +
              '3gLFCJ060CP08J07gLFEJ061CM07H08J0gNFJ03FN04E18J0gNFJ01CN0CACJ01g' +
              'NF8I0103M09BEJ01gNF8J01EM09A2J03gNFCJ01BM0F62J07gNFEI01H98L0EH6J' +
              '07NFE01NFEH07KFEI03908M076J0OFE01OFH03LFI03H08M03CJ0PFH0OF803LFI' +
              '03018N0CJ0PF80OF801LFI03038R01PF807NF801LF8H019FS01PFH07MFEH01LF' +
              '8I0F8S03PFH03MFCI0LFCI06T03OFEH03MF8I0LFCX07OFC181MF03H07KFCX07O' +
              'FC181LFC07807KFEX07OF8381LF80F803KFEM01P07OF07CN01FC03KFEM038O0J' +
              'F8KF07EN03FC03LFM038O0JFM0FEN0HFE01LFM07P0IFEL01FEM01IF01LFM0FO0' +
              '3IFC7FJ01HFM03IFH0LFL01FN07JF8KF07SFH0LF8K07EM03KF1gF80LF8K0FC4K' +
              '01LF1gF807KF8J03F84K0MF9gFC07KF8J0HF84J03MF8gFC07KF8I03HF0CJ0NFC' +
              'gFE03KF8H01HFC0CI03NFE7YFE03KF801IF81CI07IFC3IFE7YFE01KF8KF01CH0' +
              '1IFC03IFE3gF01PFC03CH03HFEH03JF3gF01PFH07CH07HFI03JF1gF81OFCH0F8' +
              'H0HFCI03JF9gF80NFEH01F801HFJ03JF8gF80NF8H03FH03FCJ03JFCgF80MF8I0' +
              '7EH07FJ03KFC7YFC0KFEJ01FEH0FEI03LFC7YFC0KFCJ07FCH0FCH01MFC3YFC07' +
              'JFCJ0HF801F801NF81YFC07JFCI07HFH01FH07NFH0YFC07JFCH01HFEH03E01OF' +
              'H0YFE07JFCH07HFCH03C07NFEH07XFE07JF807IFI0380JFC3IFCH03XFE07JF8J' +
              'FEI0303IFH01IF8H01XFE07OF8I0307HFI01IF8I0XFC07NFEJ020HFCI01IFJ07' +
              'WFC07NFCJ021FEJ01LFC1WFC07MFEK023F8J01LFE0WFC07MFM03FK01MF07VFC0' +
              '7LFCM07CL0MF81VF80LF8N0F8L0MFE0VF80KFP0FM0NF03UFH0KFO01EM0NF80UF' +
              '01JFEO01CM07MFE07SFE01JFEO018M07NF80SFC01JFEH04L018J03H07NFC03RF' +
              '803C7HFCH07R03H03OFH0RFI087HFCH0FEQ03803OF803PFEJ07HFCH01FCO0C18' +
              '03OFEH07OF8H081IFCI03FM030C1801PF8H0NFEH01C0IF8J07CL01860C01PFEI' +
              '0MFI03807HF8H0IFCL01860CH0QF8I0KF8I078C3HFI0HFN018H7CH0QFER0F8E3' +
              'HFI06P0C3FI0RF8P03F8E3FEI03P0DFCI07QFEP0HF8E3FEI018O0FE02H07RFCN' +
              '03HF803FCH070CO07H03H03SF8L01IFC07FCH07E6R03H01TF8K0JFE07F8H01FB' +
              'R01801VF83PF8I03FCQ01CH0gNFH01807CR0CH0gMFEH01C01CR0EH07gLFEI0ET' +
              '03EH03gLFCI06T078H03gLFCI07S03EI01gLF8I0F8R07818H0gLFI019CQ01F01' +
              '8H07gJFEI018EQ03C03I03gJFCH03F07Q03H07I03gJF8H03FC3T0FI01gJF8I03' +
              'HF8S0FJ0gJFI0801F8R01D8I07gHFEH01CH01S038C4H03gHFCI0EV030FEH01gH' +
              'F8I07V061FCI0gGFEJ038U0EFC08H03gFCJ01EU0FE01CH01gF8J03FU0FH01CI0' +
              'gFI038378W03CI03XFCI07C61CW06CI01XF8I02FC0EW0F8J0XFK07C0CV01D8J0' +
              '3VFCH0EI0C18V03981J0VFH01F780E3W071838I03TFCH0H3FC0HFW0E187K0TFJ' +
              '038E03EV01C18EK03RFCJ0707018V018H1CL0QFEK06038g0H381EJ01PF8K0C03' +
              '8g03703F8J03NFCL0E01Cg03E071CK01LF8M06H0Cg03C0E0EM07HFEM0407H0Cg' +
              '0380C06W01F0380Cg0301C06W07F8180CgH038060CU0E1C1C38gH03H060FU0C0' +
              'E0HFgI03H0E078S01C0E07EgI03H0C0ER01E0C0601gJ0301C0C03O01FE0C03gL' +
              '038381C03O03E60E038gK01C70180706M030706018gL07F038060607381CI030' +
              '701CgL03C03H060606381CI0303H0CgO03H0E07863C1CI0783808gO07H0E07FC' +
              '360CH03F818gP016H0C061C370CH07981CgP01EH0C0318H30CI0180CgQ0F01C0' +
              '318198CJ0C08gQ030180H3819HCJ0CgT01F80H3018ECI07EgU0FE0360186CH03' +
              'F8gU01F01E0183CH03CgW0101C0181ChI01C0181ChJ040180ClH0'
            ''
            
              '~DGR:EISLECKER.GRF'#31'7360'#31'32'#31'gN015HFEAhV02IFI5HFEhS03FE8K05FEhQ07F' +
              'P07FhO07ER01FhM03ET01FhL0FV07ChJ078W078hH03CY0FhG01Eg01Eh078gG07' +
              'gY01CgH01EgX07gJ038gW0EgJ01CgV038gK07gV0EgL01CgT038gM07gT06gN038' +
              'gR01CgO0EgR07gP038gP01CgQ0CgP018gQ06gP06gR038gN01CgS0CgN038gS07g' +
              'N06gT038gM0CgU0CgL018gU06gL06gV03gL06gV018gJ01CgW0EgJ03gX07gJ06g' +
              'X018gI0CgY08gH018gY06gH03h03gH06h018gG04hG08g018hG0Eg038hG06g03h' +
              'H03g06hH018Y0ChI0CX018hI06X03hJ02X02hJ03X06hJ018W0ChK0CV018hK0CV' +
              '01hL02V03hL03V06hL018U04hL018U0ChM0CT018hM06T01hN02T03hN03T02hN0' +
              '1T06hN018S0ChO0CS0ChO0CR018hO04R01hP02R01hP02R03hP03R06hP01R04hP' +
              '018Q0CP03H07FC06I083H04H0FCI07CH03FR0CQ0CP03H07AC06I081H0401D7H0' +
              '1D7H0H7CQ0CP018P03J0606H0181C0603018030180C07Q04P01Q03J04060C080' +
              'C0406H0C04H0C0803Q06P01Q03J06060E18060E06H040CH060C018P02P03Q03J' +
              '04021A0807FC04H0408H0208H08P03P02Q03H03FE06H3180C0604H0418H020FC' +
              '08P01P02Q03H01540H2198180404H0408H0305408P01P06Q03J060H60901H060' +
              '4H0418H02J08P018O04Q03J040240D81H040CH0408H06I018Q08O0CQ03J0606C' +
              '0501H0606H040CH04I018Q0CO0CQ03J06038078180404H0406H0CI03R0CO08Q0' +
              '3J0603H0701C0604H0406018I07R0CN018Q038I0603H0380F8C06H0403C7H0F1' +
              'CR04N01Q07HF87FC03H01H01FC04H04H0FCH03FS06N01hT02N01hT02N03hT03N' +
              '02hT01N02hT01N02hT01N06hT01N06L0178gV03HF8K018M04L07FCgV0IFEL08M' +
              '0CK01C1EgU03E0HF8K0CM0CK03H0FgU0FH01FCK0CM0CK0EH0F8gS03CI07EK0CM' +
              '08J01CH0FJ04gO07J07FK0CM0CJ03I0F8H0HFC07N07FH03FH03F8H0FCI0EJ03F' +
              'K0CM08J06I0F803IFH0CI0A801EFC0EFC07BC03BEH038J03F8J04L018J0CH01F' +
              'H0701FH06I0FC0601E183C0E03041FH07K01F8J06L018I018H01F81CH0F803I0' +
              'F80C01F303C1F01H01FH06K01FCJ04L01J01I01F038H0F8H08H0FC1H01F603E1' +
              'F018H0FH0CK01FCJ06J07FDJ02I01F06I0FCH0EH0F86I0FC03E1F01H01F838K0' +
              '1FCJ02J02038I06I03E0CI0FCH07H0FC8I0F803E1F01I0F83L01FCJ02L01CI0C' +
              'I03E18I0FCH03H0F9I01F803E0F83H01F86L01FCJ02L013H018I03E1J0FCH018' +
              '0FEJ0FC03E0FC6I0F8CL01FCJ02L0H1C03J03E2J0FCI0C0FCI01F803E07DCH01' +
              'F8CL01FCJ02L03070EJ07C6J0FCI060FCJ0FC03E07FJ0F98L01FCJ02L0101DCJ' +
              '07C4J0FCI070F8I01F803E07FI01F98L01FCJ02L03H05K0FHCI01FCI070F8I03' +
              'F803E03F8H01FBM03F8J03L01N0FD8I07FCH03F9F8I0HF807E07FCH01F7M03F8' +
              'J02L03M01F9J0CFC01FE1F8H019FH03E0CFEH01FEM03F8J03L02M01F9I039FC0' +
              '3FC1F8H031F807E187FH01FCM07FK02L03M01FBI071F80HF01F8H0E3FH07E303' +
              'FH01FCM07FK03L02M03FEI0C1F81FC03F80183FH07E401F803F8M07EK02L03M0' +
              '3FEI0C3F83F803F80103FH07EC01FC01F8M0FEK03L02M03FEH0383F07EH03F80' +
              '303EH0HF8H0FC03F8M0FEK01H0CI03N07FH0303F0FCH07F80607EH0FEI07C03F' +
              '8L01FCK03H08I02N03FH0607E0F8H07F80C07CH0FC0103C03FM01F8K01H08I03' +
              'N01F80C07E1FI05FH080FCH0FC0303E03FM03FL03018I02O0F80C07C1FI0DF81' +
              '80F8H0FC0203E03FM07EL02018I03O0FC180FC3EI09F0301FH01FC0403E03FM0' +
              'FCL0303J03O0FC181F81EH019F0301EH01FC0401E07EL01F8L0202J01O0FC383' +
              'F03CH013F0303EH01FC0403E03FL07FM0306J03O0FC187E01EH0H3F0307CH01F' +
              '80401E07EL0FCM020CJ01O0FC3BFC01EH063F0H3FI03F80603C07EI07FBFN023' +
              '8J03O07C1HFI0EH0C3F03FEI03F80207807CI0IFCN026K01O0380FEI0F0183E0' +
              '1F8I07F8038FI04I0IF8N03CK01W070707EM0HF8H0FCM07HFCN078K01W03FE07' +
              'EL013FT07EM03EL01W01F807EL037FM02L07FL01E2L01g01FEL023FM078K03FL' +
              '07C6L018Y0HFCL047EM0FCK01F8J07C02L01Y0187CL0CFEM0FCK01F8I0BCH06L' +
              '018X060FCK018FEM07CK01F8H0FEI04M08X060F8K010FEM078K01FC0BEJ04M08' +
              'X080F8K020FCT01FCFEK0CM0CW01H0F8K021FCU0HFCL0CM0CW0301F8K041FCT0' +
              '1FCM0CM0CW0601FL0C1F8T0HFCM0CM04W0401FL081F8S07DFCM08M0CW0C03FK0' +
              '103FS03E1FCM08M04W0803EK0103FS0F01FCL018M06V01807EK0303FR03C01F8' +
              'L01N02V01H07CK0207ER0EH03F8L01N02V03H07CK0607EQ038H07F8L01N02V03' +
              'H0F8K0C0FCQ038H07FM03N03V03H0F8K0C0FCQ06I0HFM03N03V0301FL081F8Q0' +
              'CH01FEM02N01V0303EK0181FQ018H03FCM02N01V0307EK0181FQ018H07F8M06N' +
              '018U03DF8K0103EQ03I0HFN04O08V0HFL0187CQ03H01FEN0CO0CV078L018F8Q0' +
              '3H07F8N0CO0CgJ01HFR03H0HFO0CO04gK0FER018HFCO08O06gK01T0HFEO018O0' +
              '2h07DP01P02hR03P03hI0CN02P01hH038N02P018hG0FO06Q08hG0EO04Q0Ch01C' +
              'O0CQ0ChG04O0CQ04hP018Q06hP01R02hP03R03hP02R01hP02R018hO06S0ChO0C' +
              'S0ChO08S04hN018S02hN01T03hN03T01hN06T018hM06U0ChM0CU04hL018U06hL' +
              '01V03hL03V01hL02V018hK06W0ChK0CW0ChJ018W02hJ01X03hJ03X018hI06Y0C' +
              'hI0CY06hH018Y02hH03g03hH03g018hG06gG0ChG08gG06h018gG03h03gH018gY' +
              '06gI0CgY0CgI06gX018gI03gX03gJ018gW0EgK0CgV018gK03gV03gL038gU06gM' +
              '0CgU0CgM06gT018gM038gS06gN01CgS0EgO06gR018gO038gQ07gQ0CgP01CgQ07' +
              'gP038gQ038gO0EgS0EgN038gS03'
            
              '8gM07gU0CgM0CgU078gK07gW0CgJ01CgW07gJ038gW01CgI0EgY078gG078h0Fg0' +
              '3ChG078Y0FhI0F8W078hJ0FV03ChK03FT03EhM07ER01F8hN07FP03F8hP05FDL0' +
              '17E8hS0NFChV05JFDgP0'
            ''
            '// TAG_LOGO_CE3_START'
            ''
            '^FO010,010^XGR:LUCE3.GRF,1,1^FS'
            ''
            '^FO010,000^XGR:LUCE3.GRF,1,1^FS'
            ''
            '// TAG_LOGO_CE3_END'
            ''
            '// TAG_DECLASSAGE_START'
            ''
            '^FO380,530^XGR:DECLASSAGE.GRF,1,1^FS'
            ''
            '// TAG_DECLASSAGE_END'
            ''
            '^FO0470,1265^CF0,28,28^FR^FWI,2^FDGenre:^FS'
            '^FO0310,1265^CF0,28,28^FR^FWI,2^FD<<GENRE>>^FS'
            '^FO0470,1230^CF0,28,28^FR^FWI,2^FDNo. Marche :^FS'
            '^FO0470,1175^CF0,28,28^FR^FWI,2^FD<<NUMERO_MARCHE>>^FS'
            '^FO0470,1071^CF0,28,28^FR^FWI,2^FDMarque prod^FS'
            '^FO0220,1071^CF0,28,28^FR^FWI,2^FD<<MARQUE_PROD>>^FS'
            ''
            '^FO0470,1035^CF0,28,28^FR^FWI,2^FDabattu le^FS'
            '^FO0220,1035^CF0,28,28^FR^FWI,2^FD<<DATE_DOCUMENT>>^FS'
            '^FO0320,0430^CF0,28,28^FR^FWI,2^FD<<NO_DOCUMENT>>02^FS'
            ''
            '^FO0970,1265^CF0,28,28^FR^FWI,2^FDGenre:^FS'
            '^FO0810,1265^CF0,28,28^FR^FWI,2^FD<<GENRE>>^FS'
            '^FO0970,1230^CF0,28,28^FR^FWI,2^FDNo. Marche :^FS'
            '^FO0970,1175^CF0,28,28^FR^FWI,2^FD<<NUMERO_MARCHE>>^FS'
            '^FO0970,1071^CF0,28,28^FR^FWI,2^FDMarque prod^FS'
            '^FO0720,1071^CF0,28,28^FR^FWI,2^FD<<MARQUE_PROD>>^FS'
            ''
            '^FO0970,1035^CF0,28,28^FR^FWI,2^FDabattu le^FS'
            '^FO0720,1035^CF0,28,28^FR^FWI,2^FD<<DATE_DOCUMENT>>^FS'
            '^FO0820,0430^CF0,28,28^FR^FWI,2^FD<<NO_DOCUMENT>>02^FS'
            ''
            ''
            '// TAG_POIDS_FROID_START'
            ''
            '^FO0470,1120^CF0,28,28^FR^FWI,2^FDPoids fr.^FS'
            '^FO0290,1112^CF0,28,28^FR^FWI,2^FD<<ABAT_POIDS_FROID>> kg^FS'
            ''
            '^FO0970,1120^CF0,28,28^FR^FWI,2^FDPoids fr.^FS'
            '^FO0790,1112^CF0,28,28^FR^FWI,2^FD<<ABAT_POIDS_FROID>> kg^FS'
            ''
            '// TAG_POIDS_FROID_END'
            ''
            '// TAG_POIDS_CHAUD_START'
            ''
            '^FO0470,1125^CF0,28,28^FR^FWI,2^FDPoids chaud^FS'
            '^FO0290,1115^CF0,28,28^FR^FWI,2^FD<<ABAT_POIDS_CHAUD>> kg^FS'
            ''
            '^FO0970,1125^CF0,28,28^FR^FWI,2^FDPoids chaud^FS'
            '^FO0790,1115^CF0,28,28^FR^FWI,2^FD<<ABAT_POIDS_CHAUD>> kg^FS'
            ''
            '// TAG_POIDS_CHAUD_END'
            ''
            '//CODE_ETIQ_START'
            ''
            '^FO0220,0030^CF0,28,28^FR^FWI,2^FD<<CODE_ETIQ>>^FS'
            ''
            '^FO0720,0030^CF0,28,28^FR^FWI,2^FD<<CODE_ETIQ>>^FS'
            ''
            '//CODE_ETIQ_END'
            ''
            '// UNION_EUROP_START'
            ''
            '// TAG_ELEV_START'
            ''
            '^FO0470,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0470,0900^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            '^FO0470,0855^CF0,28,28^FR^FWI,2^FDPays d'#39'abattage:^FS'
            '^FO0470,0810^CF0,28,28^FR^FWI,2^FD<<ABATTAGE>>^FS'
            ''
            '^FO0970,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0970,0900^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            '^FO0970,0855^CF0,28,28^FR^FWI,2^FDPays d'#39'abattage:^FS'
            '^FO0970,0810^CF0,28,28^FR^FWI,2^FD<<ABATTAGE>>^FS'
            ''
            '// TAG_ELEV_END'
            ''
            '// TAG_ORIGINE_START'
            ''
            '^FO0470,0945^CF0,28,28^FR^FWI,2^FDOrigine:^FS'
            '^FO0220,0945^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            ''
            '^FO0970,0945^CF0,28,28^FR^FWI,2^FDOrigine:^FS'
            '^FO0720,0945^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            ''
            '// TAG_ORIGINE_END'
            ''
            '// MN_PROD_START'
            ''
            '^FO0470,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0470,0900^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            '^FO0190,1755^CF0,28,28^FR^FWI,2^FDMN^FS'
            '^FO0188,1715^CF0,28,28^FR^FWI,2^FDProd^FS'
            ''
            '^FO0970,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0970,0900^CF0,28,28^FR^FWI,2^FD<<ENGRAISSEMENT>>^FS'
            '^FO0690,1755^CF0,28,28^FR^FWI,2^FDMN^FS'
            '^FO0688,1715^CF0,28,28^FR^FWI,2^FDProd^FS'
            ''
            '// MN_PROD_END'
            ''
            '// TAG_REMARQUE_START_NORMAL'
            ''
            '^FO0470,0765^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0470,0705^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0470,0645^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '^FO0970,0765^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0970,0705^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0970,0645^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '// TAG_REMARQUE_END_NORMAL'
            ''
            '// TAG_REMARQUE_START_PCC'
            ''
            '^FO0470,0850^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0470,0790^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0470,0730^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '^FO0970,0850^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0970,0790^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0970,0730^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '// TAG_REMARQUE_END_PCC'
            ''
            '// TAG_REMARQUE_START_BIO'
            ''
            '^FO0470,0765^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0470,0720^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            '^FO0470,0675^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0470,0615^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0470,0555^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '^FO0970,0765^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0970,0720^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            '^FO0970,0675^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0970,0615^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0970,0555^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '// TAG_REMARQUE_END_BIO'
            ''
            '// UNION_EUROP_END'
            ''
            '// UNION_NOT_START'
            ''
            '^FO0470,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0470,0900^CF0,28,28^FR^FWI,2^FDDiff'#8218'rents '#8218'tats^FS'
            '^FO0470,0855^CF0,28,28^FR^FWI,2^FDmembres de ^FS'
            '^FO0470,0810^CF0,28,28^FR^FWI,2^FDl'#39'union europ'#8218'enne^FS'
            ''
            '^FO0470,0775^CF0,28,28^FR^FWI,2^FDPays d'#39'abattage:^FS'
            '^FO0470,0730^CF0,28,28^FR^FWI,2^FD<<ABATTAGE>>^FS'
            ''
            '^FO0470,0685^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0470,0635^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0470,0590^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '^FO0970,0945^CF0,28,28^FR^FWI,2^FDPays d'#39#8218'levage :^FS'
            '^FO0970,0900^CF0,28,28^FR^FWI,2^FDDiff'#8218'rents '#8218'tats^FS'
            '^FO0970,0855^CF0,28,28^FR^FWI,2^FDmembres de ^FS'
            '^FO0970,0810^CF0,28,28^FR^FWI,2^FDl'#39'union europ'#8218'enne^FS'
            ''
            '^FO0970,0775^CF0,28,28^FR^FWI,2^FDPays d'#39'abattage:^FS'
            '^FO0970,0730^CF0,28,28^FR^FWI,2^FD<<ABATTAGE>>^FS'
            ''
            '^FO0970,0685^CF0,28,28^FR^FWI,2^FDRemarque^FS'
            '^FO0970,0635^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX1>>^FS'
            '^FO0970,0590^CF0,28,28^FR^FWI,2^FD<<DESCRIPTION_SUFFIX2>>^FS'
            ''
            '// UNION_NOT_END'
            ''
            ''
            '// TAG_REMARQUE_START_ELEVEUR'
            ''
            '^FO0470,0720^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0470,0675^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            ''
            '^FO0970,0720^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0970,0675^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            ''
            '// TAG_REMARQUE_END_ELEVEUR'
            ''
            '// TAG_REMARQUE_START_ELEVEUR_PCC'
            ''
            '^FO0470,0500^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0470,0465^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            ''
            '^FO0970,0500^CF0,28,28^FR^FWI,2^FDNom Eleveur^FS'
            '^FO0970,0465^CF0,28,28^FR^FWI,2^FD<<NOM_FOU>>^FS'
            ''
            '// TAG_REMARQUE_END_ELEVEUR_PCC'
            ''
            ''
            ''
            '// TAG_CLASSE_START'
            ''
            '^FO0470,0990^CF0,28,28^FR^FWI,2^FDClasse^FS'
            '^FO0220,0975^CF0,28,28^FR^FWI,2^FD<<CLASSE>>^FS'
            ''
            '^FO0970,0990^CF0,28,28^FR^FWI,2^FDClasse^FS'
            '^FO0720,0975^CF0,28,28^FR^FWI,2^FD<<CLASSE>>^FS'
            ''
            '// TAG_CLASSE_END'
            ''
            '^FO010,1950^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>02^FS'
            ''
            '^FO550,1950^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>01^FS'
            ''
            '//TAG_IS_EIFEL_BARCODE_START'
            ''
            '^FO480,2250^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>02^FS'
            ''
            '^FO980,2250^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>01^FS'
            ''
            '//TAG_IS_EIFEL_BARCODE_END'
            ''
            '^FO050,0110^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>02^FS'
            ''
            '^FO550,0110^BY3^BCN,080,N,N,Y^FD>:6TT<<NO_DOCUMENT>>01^FS'
            ''
            ''
            '^FO0060,2610^CF0,28,28^FR^FWI,2^FDOrgainvent: 70007^FS'
            '^FO0150,2610^CF0,28,28^FR^FWI,2^FD<<DATUM>>^FS'
            ''
            '^FO0560,2610^CF0,28,28^FR^FWI,2^FDOrgainvent: 70007^FS'
            '^FO0150,2610^CF0,28,28^FR^FWI,2^FD<<DATUM>>^FS'
            ''
            ''
            '// CLIENT_START'
            ''
            '^FO0480,0333^CF0,28,28^FR^FWI,2^FD<<NOM_CLIENT_RESERVATION>>^FS'
            '^FO0980,0333^CF0,28,28^FR^FWI,2^FD<<NOM_CLIENT_RESERVATION>>^FS'
            ''
            '^FO0140,2610^CF0,28,28^FR^FWI,2^FD<<NOM_CLIENT_RESERVATION>>^FS'
            '^FO0640,2610^CF0,28,28^FR^FWI,2^FD<<NOM_CLIENT_RESERVATION>>^FS'
            ''
            '// CLIENT_END'
            ''
            '// JAMBON_CACTUS_START'
            '//{PC099;0900,0010,25,25,I,22,B=*|}'
            '//{PC099;0400,0010,25,25,I,22,B=*|}'
            '// JAMBON_CACTUS_END'
            ''
            '// IS_CLASSE_S2_START'
            '//{LC;0500,1311,0990,1311,0,1|}'
            '//{LC;0500,1312,0990,1312,0,1|}'
            '//{LC;0500,1313,0990,1313,0,1|}'
            ''
            '//{LC;0000,1311,0490,1311,0,1|}'
            '//{LC;0000,1312,0490,1312,0,1|}'
            '//{LC;0000,1313,0490,1313,0,1|}'
            '// IS_CLASSE_S2_END'
            ''
            '// TAG_LOCALITE_START'
            ''
            '^FO0470,0432^CF0,28,28^FR^FWI,2^FD<<LOCALITE>>^FS'
            '^FO0970,0432^CF0,28,28^FR^FWI,2^FD<<LOCALITE>>^FS'
            ''
            '// TAG_LOCALITE_END'
            ''
            '// TAG_VENTE_START'
            ''
            '^FO0470,0915^CF0,28,28^FR^FWI,2^FDVente a ^FS'
            '^FO0470,0885^CF0,28,28^FR^FWI,2^FDpartir de:^FS'
            '^FO0220,0900^CF0,28,28^FR^FWI,2^FD<<VENTE_A_PARTIR_DE>>^FS'
            ''
            '^FO0970,0915^CF0,28,28^FR^FWI,2^FDVente a ^FS'
            '^FO0970,0885^CF0,28,28^FR^FWI,2^FDpartir de:^FS'
            '^FO0720,0900^CF0,28,28^FR^FWI,2^FD<<VENTE_A_PARTIR_DE>>^FS'
            ''
            '// TAG_VENTE_END'
            ''
            ''
            ''
            '// TAG_LOGO_MIL_START'
            ''
            ''
            '// TAG_LOGO_MIL_END'
            ''
            ''
            '// TAG_LOGO_MN_START'
            ''
            ''
            '// TAG_LOGO_MN_END'
            ''
            ''
            '//TAG_IS_EIFEL_START'
            ''
            ''
            '//TAG_IS_EIFEL_END'
            ''
            ''
            '// TAG_LOGO_QS_START'
            ''
            ''
            '// TAG_LOGO_QS_END'
            ''
            ''
            '// TAG_LOGO_START_17'
            '// LOGO DEMETER'
            ''
            ''
            '// TAG_LOGO_END_17'
            ''
            ''
            '// TAG_LOGO_START_36'
            '// LOGO EG_BIO'
            ''
            ''
            '// TAG_LOGO_END_36'
            ''
            '// TAG_LOGO_PORC_START'
            ''
            '// TAG_LOGO_START_34'
            '// LOGO BIM Porc'
            ''
            ''
            ''
            '// TAG_LOGO_END_34'
            ''
            '// TAG_LOGO_START_19'
            ''
            ''
            '// TAG_LOGO_END_19'
            ''
            '// TAG_LOGO_PORC_END'
            '// TAG_LOGO_START_41'
            ''
            '//Nouveau Logo eislecker'
            ''
            ''
            ''
            '// TAG_LOGO_END_41'
            ''
            ''
            '^XZ')
          Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoKeepCaretX, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces]
          OnChange = zplSourceChange
          FontSmoothing = fsmNone
        end
      end
    end
  end
  object viewActions: TActionList
    Images = ToolbarEnabledImages
    OnUpdate = viewActionsUpdate
    Left = 640
    Top = 176
    object viewZPLCommandsAction: TAction
      Caption = 'ZPL commands'
      Hint = 'Displays ZPL commands panel'
      ImageIndex = 0
      OnExecute = viewZPLCommandsActionExecute
    end
    object viewZPLHelpAction: TAction
      Caption = 'ZPL Help'
      Hint = 'Displays ZPL help panel'
      ImageIndex = 0
      OnExecute = viewZPLHelpActionExecute
    end
    object viewPreviewAction: TAction
      Caption = 'Preview'
      Hint = 'Displays label preview panel'
      ImageIndex = 0
      OnExecute = viewPreviewActionExecute
    end
  end
  object MainMenu1: TMainMenu
    Images = ToolbarEnabledImages
    Left = 920
    Top = 64
    object FileMenu: TMenuItem
      Caption = '&File'
      object Open1: TMenuItem
        Action = openFileAction
      end
      object Save1: TMenuItem
        Action = saveFileAction
      end
      object Closelabel1: TMenuItem
        Action = closeFileAction
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SaveLabel1: TMenuItem
        Action = saveLabelAction
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object QuitMenu: TMenuItem
        Action = QuitAction
      end
    end
    object EditMenu: TMenuItem
      Caption = '&Edit'
      object Startlabel1: TMenuItem
        Caption = 'Start label'
        ImageIndex = 6
      end
      object ExportZPLKeywords1: TMenuItem
        Action = exportZPLKeywordsAction
      end
    end
    object ViewMenu: TMenuItem
      Caption = '&View'
      object ZPLcommandsMenu: TMenuItem
        Action = viewZPLCommandsAction
      end
      object GroupCommands1: TMenuItem
        Action = groupZPLCommandsAction
      end
      object ZPLHelpMenu: TMenuItem
        Action = viewZPLHelpAction
      end
      object PreviewMenu: TMenuItem
        Action = viewPreviewAction
      end
    end
  end
  object ToolbarEnabledImages: TImageList
    Left = 968
    Top = 128
    Bitmap = {
      494C01010A001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000000000C0C0
      C0000000000000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000C0C0C000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000C0C0
      C000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000080808000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      000000000000000000008080800000000000000000000000000000FFFF0000FF
      FF0080808000808080008080800000FFFF0000FFFF0080808000808080008080
      800000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000080808000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      000000000000808080000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000808080000000FF008080
      80000000FF000000000000000000000000000000000000000000808080000000
      FF00808080000000FF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF0000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF0000000000FFFF
      FF0000000000C0C0C00080808000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000000000000C0C0
      C0000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000000000000000000000FFFF0000FFFF0000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00000000000000000000000000FFFF000000000000FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF000000000000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF0000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFDFFFFF00000000FFCFFFFF00000000
      FFC7FFFF0000000000035555000000000001FFFF000000000000400500000000
      0001C0070000000000034005000000000007C00700000000000F400500000000
      001FFFFF00000000007F55550000000000FFFFFF0000000001FFFFFF00000000
      03FFFFFF00000000FFFFFFFF00000000FFFFFC7F8000FF7E8003FC7F5555BE7D
      0001FC7F00009E790001FC7F76BCC0030001FC7FB6D8C0070001FC7F86C2C00F
      0001E00FCEE6C00F0001E00FCAA600010001F01F86C080000001F01F4EF6C003
      0001F83FE6F2C0070001F83FE6F2E0070001FC7FFEFECE730001FC7F00009E79
      0001FEFF5555BE7D8003FEFF00007EFEFFFFFEFFC007FFFF0001FEFFC007E007
      0001FC7FC007C0030001FC7FC007C0011FF1F83FC007C0001FF1F83FC007C000
      1831F01FC00780071831F01FC00700071831E00FC007000F1831E00FC007001F
      1831FC7FC007001F1FF1FC7FC007001F1FF1FC7FC007001F0001FC7FC007003F
      0001FC7FC00781FF0001FC7FC00781FF00000000000000000000000000000000
      000000000000}
  end
  object toolbarDisabledImages: TImageList
    Left = 992
    Top = 208
    Bitmap = {
      494C01010A001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      800080808000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00FFFFFF008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000000000000000FFFFFF0080808000FFFF
      FF008080800080808000FFFFFF0080808000FFFFFF0080808000FFFFFF008080
      800080808000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080000000000000000000808080000000000080808000FFFF
      FF008080800080808000FFFFFF00808080000000000080808000FFFFFF008080
      800080808000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000080808000808080008080
      80008080800000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF008080800080808000FFFFFF00808080008080800080808000FFFF
      FF0080808000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000000000000000000000000000000000008080800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      80000000000080808000FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000FFFFFF000000
      00000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000808080000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      00000000000000000000000000000000000080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF000000000080808000FFFFFF00FFFF
      FF000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      00000000000080808000FFFFFF0000000000FFFFFF00FFFFFF00000000008080
      8000FFFFFF000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000000000008080800080808000FFFF
      FF00FFFFFF0000000000000000008080800080808000FFFFFF00000000000000
      00000000000080808000808080000000000080808000FFFFFF00000000000000
      00000000000080808000FFFFFF008080800080808000FFFFFF00000000008080
      8000FFFFFF000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      000080808000FFFFFF000000000080808000FFFFFF008080800000000000FFFF
      FF00000000000000000080808000808080000000000000000000808080008080
      8000FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFF
      FF008080800080808000000000000000000080808000FFFFFF00000000000000
      00000000000080808000FFFFFF008080800080808000FFFFFF00FFFFFF008080
      8000FFFFFF000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF000000000080808000FFFFFF000000000080808000FFFF
      FF00FFFFFF008080800080808000808080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000000000000000000080808000FFFFFF00000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000080808000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000808080008080
      800080808000000000000000000080808000FFFFFF0000000000808080008080
      800080808000808080000000000080808000000000000000000080808000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF0000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF000000000000000000000000008080
      8000808080008080800080808000000000008080800080808000808080008080
      8000FFFFFF000000000000000000000000000000000000000000808080008080
      8000FFFFFF0000000000FFFFFF0080808000FFFFFF0000000000FFFFFF008080
      800080808000FFFFFF00000000008080800000000000FFFFFF0080808000FFFF
      FF00808080008080800000000000808080008080800080808000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000008080
      800000000000FFFFFF0000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000808080008080
      8000FFFFFF00808080000000000080808000FFFFFF0080808000000000008080
      800080808000FFFFFF00FFFFFF0080808000808080008080800080808000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF000000000000000000000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000080808000808080008080
      800080808000000000000000000080808000FFFFFF0000000000808080008080
      800080808000808080008080800080808000000000008080800080808000FFFF
      FF008080800000000000FFFFFF00808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      00008080800000000000FFFFFF00000000000000000000000000808080000000
      0000000000000000000000000000000000008080800000000000808080008080
      8000FFFFFF00FFFFFF000000000080808000FFFFFF0000000000000000000000
      000080808000FFFFFF00FFFFFF0080808000000000000000000080808000FFFF
      FF00000000008080800080808000000000000000000000000000000000000000
      00000000000080808000000000000000000080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF000000000080808000FFFFFF0000000000000000000000
      00008080800080808000FFFFFF00808080000000000000000000808080000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00000000000000000080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000008080800000000000FFFFFF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000000000000000000080808000FFFFFF0000000000000000000000
      0000808080008080800000000000808080000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF000000000080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080000000000000000000808080008080
      80000000000000000000000000008080800080808000FFFFFF00000000000000
      00008080800080808000FFFFFF00FFFFFF0080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000FFFFFF000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000080808000808080000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000008080800080808000FFFFFF00808080000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0080808000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF0000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF000000000080808000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000008080800000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000FFFFFF0000000000000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF008080800000000000FFFFFF00000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000008080800000000000FFFFFF000000000000000000000000000000
      000080808000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000080808000FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000FFFFFF0000000000000000000000000080808000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      000000000000808080000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000808080000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      000080808000FFFFFF000000000000000000000000000000000080808000FFFF
      FF0000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000FFFFFF008080
      800000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000008080800000000000FFFFFF000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000808080000000
      0000FFFFFF00000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000FFFFFF000000
      00008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF00000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008080
      8000FFFFFF00000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF00000000000000000000000000000000008080
      8000808080008080800080808000FFFFFF008080800080808000808080008080
      800000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF00FFFFFF0000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF000000000000000000000000000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000808080000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000080808000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF000000000000000000000000008080800000000000FFFF
      FF00000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      000080808000FFFFFF0000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00808080008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFC7FFFF00000000FFC3FFFF00000000
      8001AAAA0000000000005555000000003800A002000000002000400100000000
      080180020000000020034081000000000F87800200000000240F400500000000
      081FAAAA00000000217F55550000000008FFFFFF0000000001FFFFFF00000000
      03FFFFFF00000000FFFFFFFF00000000C001FC3F8000DF3E8002FC3F00008E3C
      3924FC3F000086393824FC3F522CC0033804FC3F8240C007380CF0078642C907
      2000E107C44282200000EBEFC2200B000FF0F3CF864084000FF0F5DF4270C9FB
      0FF0F99FE270D0030FF0FABFE672E0010FF0FC3F8000CE300FF0FD7F00009E38
      4001FE7F0000BE7D8003FEFF00007EFEFFFFFE7FC003FFFFC001FEBFCBF3FFFF
      8001FC3FC5F3FFFF9FF9FD5FCAF3E0079FF9F99FCCF3C00B9C19FBAFCCF397F5
      9819F3CFCCF38BFA9819F7D7CCF394009819E087CCF398019819E00FCC739FE7
      9839FC3FCCF39F8F9FF9FC3FCCF3AF1F9FF9FC3FC8F3D0FF8001FC3FC0F3E1FF
      8003FC3FC003FFFFFFFFFC7FC007FFFF00000000000000000000000000000000
      000000000000}
  end
  object GUIActions: TActionList
    Images = ToolbarEnabledImages
    OnUpdate = GUIActionsUpdate
    Left = 696
    Top = 176
    object groupZPLCommandsAction: TAction
      Caption = 'Group Commands'
      Hint = 'Groups ZPL commands'
      ImageIndex = 1
      OnExecute = groupZPLCommandsActionExecute
    end
    object QuitAction: TAction
      Caption = '&Quit'
      Hint = 'Quit the ZPL utilities programm'
      ImageIndex = 2
      OnExecute = QuitActionExecute
    end
    object openFileAction: TAction
      Caption = 'Open Label...'
      Hint = 'Open a ZPL label file from disk'
      ImageIndex = 3
      ShortCut = 16463
      OnExecute = openFileActionExecute
    end
    object saveFileAction: TAction
      Caption = 'Save Label'
      Hint = 'Save the label file to disk'
      ImageIndex = 4
      ShortCut = 16467
      OnExecute = saveFileActionExecute
    end
    object saveLabelAction: TAction
      Caption = 'Save label format'
      Hint = 'Save the label format as XML file to disk'
      ImageIndex = 4
      OnExecute = saveLabelActionExecute
    end
    object exportZPLKeywordsAction: TAction
      Caption = 'Export ZPL Keywords'
      Hint = 'Export ZPL keywords to source code memo'
      ImageIndex = 8
      OnExecute = exportZPLKeywordsActionExecute
    end
    object closeFileAction: TAction
      Caption = 'Close label'
      Hint = 'Close current label ZPL file'
      ImageIndex = 7
      ShortCut = 16471
      OnExecute = closeFileActionExecute
    end
    object GetGraphicsAction: TAction
      Caption = 'Get Graphics'
      ImageIndex = 9
      OnExecute = GetGraphicsActionExecute
    end
  end
  object ZPLActions: TActionList
    OnUpdate = ZPLActionsUpdate
    Left = 760
    Top = 176
    object StartLabelAction: TAction
      Caption = 'Start a new label'
      OnExecute = startLabelActionExecute
    end
    object EndLabelAction: TAction
      Caption = 'End the label'
      OnExecute = EndLabelActionExecute
    end
    object LabelDatabaseFieldAction: TAction
      Caption = 'Label database field'
      OnExecute = LabelDatabaseFieldActionExecute
    end
    object DatabaseFieldAction: TAction
      Caption = 'Database field'
      OnExecute = DatabaseFieldActionExecute
    end
    object CommentBlocAction: TAction
      Caption = 'Comment bloc (START-END)'
      Hint = 'Add a comment bloc with START and END'
      OnExecute = CommentBlocActionExecute
    end
    object CommentLineAction: TAction
      Caption = 'Comment line'
      Hint = 'Add a single line comment'
      OnExecute = CommentLineActionExecute
    end
    object LogoAction: TAction
      Caption = 'Add a graphical logo'
    end
    object GraphicAction: TAction
      Caption = 'Add a graphic'
      OnExecute = GraphicActionExecute
    end
    object CommandAction: TAction
      Caption = 'Add a ZPL command'
      Hint = 'Add a ZPL command'
      OnExecute = CommandActionExecute
    end
    object EndLineAction: TAction
      Caption = 'End the line'
      Hint = 'Add the ending line balise'
      OnExecute = EndLineActionExecute
    end
    object BarCodeFromTextAction: TAction
      Caption = 'Bar code from Text'
      OnExecute = BarCodeFromTextActionExecute
    end
  end
  object SynZPLSyn1: TSynZPLSyn
    DefaultFilter = '*.zpl;*.zplx'
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 606
    Top = 480
  end
end
