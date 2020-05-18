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
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 200
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
      object ToolButton16: TToolButton
        Left = 72
        Top = 0
        Action = SaveAsFileAction
      end
      object ToolButton11: TToolButton
        Left = 96
        Top = 0
        Action = closeFileAction
      end
      object ToolButton8: TToolButton
        Left = 120
        Top = 0
        Width = 244
        Caption = 'ToolButton8'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object printDensityBox: TComboBox
        Left = 364
        Top = 0
        Width = 145
        Height = 21
        Hint = 'Print density of printer'
        Style = csDropDownList
        TabOrder = 0
        OnChange = printDensityBoxChange
      end
      object ToolButton9: TToolButton
        Left = 509
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object labelSettingsBox: TComboBox
        Left = 517
        Top = 0
        Width = 145
        Height = 21
        Hint = 'User defined label formats'
        Style = csDropDownList
        TabOrder = 1
        OnChange = labelSettingsBoxChange
      end
      object ToolButton10: TToolButton
        Left = 662
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object labelWidthEdit: TEdit
        Left = 670
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
        Left = 710
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object labelHeightEdit: TEdit
        Left = 718
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
        Left = 758
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object labelDescEdit: TEdit
        Left = 766
        Top = 0
        Width = 155
        Height = 22
        Hint = 'Label description'
        TabOrder = 4
        Text = 'labelDescEdit'
        OnChange = labelWidthEditChange
      end
      object ToolButton14: TToolButton
        Left = 921
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object labelPrintOrientationBox: TComboBox
        Left = 929
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
        Left = 1054
        Top = 0
        Width = 8
        Caption = 'ToolButton15'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object SaveLabelFormatButton: TButton
        Left = 1062
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
      Left = 926
      Top = 1
      Width = 4
      Height = 764
      Align = alRight
      ExplicitLeft = 927
    end
    object previewPanel: TPanel
      Left = 930
      Top = 1
      Width = 108
      Height = 764
      Align = alRight
      TabOrder = 0
      object previewToolbar: TToolBar
        Left = 1
        Top = 1
        Width = 106
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
        object ToolButton17: TToolButton
          Left = 23
          Top = 0
          Action = PreviewLabelAction
        end
        object ToolButton18: TToolButton
          Left = 46
          Top = 0
          Action = rotateAction
        end
      end
      object pdfPanel: TPanel
        Left = 1
        Top = 23
        Width = 106
        Height = 740
        Align = alClient
        TabOrder = 1
      end
    end
    object wkPanel: TPanel
      Left = 1
      Top = 1
      Width = 925
      Height = 764
      Align = alClient
      TabOrder = 1
      object HelpSplitter: TSplitter
        Left = 1
        Top = 398
        Width = 923
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -4
        ExplicitTop = 273
        ExplicitWidth = 924
      end
      object helpPanel: TPanel
        Left = 1
        Top = 1
        Width = 923
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
          923
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
          Width = 921
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
          Width = 832
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
          Width = 832
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
          Width = 832
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
          Width = 832
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
        Width = 923
        Height = 125
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ExplicitLeft = 38
        ExplicitTop = 196
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
        object Label6: TLabel
          Left = 394
          Top = 84
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Line/Rect. :'
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
          Left = 383
          Top = 62
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
          Text = '0'
        end
        object FontHeightEdit: TEdit
          Left = 281
          Top = 32
          Width = 40
          Height = 21
          Hint = 'Font height in dots'
          NumbersOnly = True
          TabOrder = 7
          Text = '0'
        end
        object Button3: TButton
          Left = 584
          Top = 6
          Width = 154
          Height = 19
          Action = CommentLineAction
          TabOrder = 8
        end
        object Button4: TButton
          Left = 744
          Top = 6
          Width = 154
          Height = 19
          Action = CommentBlocAction
          TabOrder = 9
        end
        object Button6: TButton
          Left = 584
          Top = 25
          Width = 154
          Height = 19
          Action = LabelDatabaseFieldAction
          TabOrder = 10
        end
        object Button7: TButton
          Left = 744
          Top = 63
          Width = 154
          Height = 19
          Action = CommandAction
          TabOrder = 11
        end
        object GraphicsBox: TComboBox
          Left = 232
          Top = 88
          Width = 145
          Height = 21
          Hint = 'Shorcut : G(raphics)'
          Style = csDropDownList
          TabOrder = 12
        end
        object Button8: TButton
          Left = 744
          Top = 25
          Width = 154
          Height = 19
          Action = DatabaseFieldAction
          TabOrder = 13
        end
        object Button9: TButton
          Left = 744
          Top = 44
          Width = 154
          Height = 19
          Action = GetGraphicsAction
          TabOrder = 14
        end
        object Button10: TButton
          Left = 584
          Top = 44
          Width = 154
          Height = 19
          Action = GraphicAction
          TabOrder = 15
        end
        object FieldOrientationBox: TComboBox
          Left = 80
          Top = 6
          Width = 145
          Height = 21
          Hint = 'Shorcut : A(lignment)'
          Style = csDropDownList
          TabOrder = 16
        end
        object Button11: TButton
          Left = 584
          Top = 63
          Width = 154
          Height = 19
          Action = BarCodeFromTextAction
          TabOrder = 17
        end
        object Button12: TButton
          Left = 232
          Top = 60
          Width = 145
          Height = 19
          Action = UpdateFieldOriginAction
          TabOrder = 18
        end
        object LineLength: TNumberEdit
          Left = 456
          Top = 81
          Width = 40
          Height = 21
          Hint = 'Line length in mm'
          CurrencyString = #8364
          Alignment = taRightJustify
          TabOrder = 19
          TextHint = 'Line length in mm'
          OnKeyPress = LineLengthKeyPress
        end
        object LineThick: TNumberEdit
          Left = 499
          Top = 81
          Width = 40
          Height = 21
          Hint = 'Line thick in mm'
          CurrencyString = #8364
          Alignment = taRightJustify
          TabOrder = 20
          TextHint = 'Line thick in mm'
          OnKeyPress = LineLengthKeyPress
        end
        object Button1: TButton
          Left = 584
          Top = 82
          Width = 154
          Height = 19
          Action = HorizontalLineAction
          TabOrder = 21
        end
        object Button2: TButton
          Left = 744
          Top = 82
          Width = 154
          Height = 19
          Action = VerticalLineAction
          TabOrder = 22
        end
        object RectHeight: TNumberEdit
          Left = 542
          Top = 81
          Width = 40
          Height = 21
          Hint = 'Rectangle height in mm'
          CurrencyString = #8364
          Alignment = taRightJustify
          TabOrder = 23
          TextHint = 'Rectangle height in mm'
          OnKeyPress = LineLengthKeyPress
        end
        object Button5: TButton
          Left = 584
          Top = 101
          Width = 154
          Height = 19
          Action = BoxAction
          TabOrder = 24
        end
      end
      object codePanel: TPanel
        Left = 1
        Top = 401
        Width = 923
        Height = 362
        Align = alClient
        BorderWidth = 10
        TabOrder = 2
        ExplicitTop = 396
        ExplicitHeight = 367
        DesignSize = (
          923
          362)
        object zplSource: TSynEdit
          Left = 3
          Top = 4
          Width = 914
          Height = 352
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = 14020857
          ActiveLineColor = 11468718
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
          Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoKeepCaretX, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces]
          OnChange = zplSourceChange
          FontSmoothing = fsmNone
          ExplicitHeight = 357
        end
      end
    end
  end
  object viewActions: TActionList
    Images = ToolbarEnabledImages
    OnUpdate = viewActionsUpdate
    Left = 632
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
      object SaveAs1: TMenuItem
        Action = SaveAsFileAction
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
      object MRUMenuItem: TMenuItem
        Caption = 'Recent files'
      end
      object N3: TMenuItem
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
      object N4: TMenuItem
        Caption = '-'
      end
      object Previewlabel1: TMenuItem
        Action = PreviewLabelAction
      end
    end
    object Actions1: TMenuItem
      Caption = 'Actions'
      object LabeldatabasefieldCtrlL1: TMenuItem
        Action = LabelDatabaseFieldAction
      end
      object DatabasefieldCtrlD1: TMenuItem
        Action = DatabaseFieldAction
      end
      object Addagraphicallogo1: TMenuItem
        Action = GraphicAction
      end
      object BarcodefromTextCtrlB1: TMenuItem
        Action = BarCodeFromTextAction
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Startanewlabel1: TMenuItem
        Action = StartLabelAction
      end
      object Endthelabel1: TMenuItem
        Action = EndLabelAction
      end
      object Commentline1: TMenuItem
        Action = CommentLineAction
      end
      object CommentblocCtrlM1: TMenuItem
        Action = CommentBlocAction
      end
      object Endtheline1: TMenuItem
        Action = EndLineAction
      end
      object AddaZPLcommand1: TMenuItem
        Action = CommandAction
      end
      object GetGraphics1: TMenuItem
        Action = GetGraphicsAction
      end
    end
  end
  object ToolbarEnabledImages: TImageList
    Left = 968
    Top = 128
    Bitmap = {
      494C01010E001800500010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008080800080000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000800000008000
      0000800000008000000080000000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF000000FF00FFFFFF00000000000000000000000000808080008000
      0000800000008000000080000000800000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
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
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000C0C0C000C0C0C0000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000000000C0C0
      C0000000000000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF000000
      0000000000008080800000000000000000000000000080808000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000C0C0C00000000000FF000000FF000000FF00
      00000000FF00FF000000FF00000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000C0C0C000000000000000000000000000C0C0
      C0000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF000000000000FFFFFF000000
      0000000000008080800000000000000000000000000080808000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF0000000000C0C0
      C000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000C0C0
      C000FFFFFF0000000000FFFFFF00000000000000000000000000808080000000
      FF000000FF000000FF000000000000000000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF008001FFFF0000000000001FFF00000000
      000007FF00000000000081FF000000000000C07F000000000000C01F00000000
      0000E007000000000000F00100000000E007000000000000E007F00300000000
      E007E00F00000000E007E03F00000000E00FC0FF00000000E01F83FF00000000
      E03F8FFF00000000E07F3FFF00000000FFDFFFFFFF00FFFFFFCFFFFFFF000001
      FFC7FFFFFF00000100035555FF0000010001FFFF00001FF10000400500001FF1
      0001C0070000183100034005000018310007C00700231831000F400500011831
      001FFFFF00001831007F555500231FF100FFFFFF00631FF101FFFFFF00C30001
      03FFFFFF01070001FFFFFFFF03FF0001FFFFFC7F8000FF7E8003FC7F5555BE7D
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
      494C01010E001800500010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000080808000808080008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080800000000000FFFF
      FF00808080008080800000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000808080000000
      0000FFFFFF0000000000808080008080800000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000000000008080
      8000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000008080
      800000000000FFFFFF0000000000000000000000000000000000808080008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800080808000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0080808000FFFFFF0000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF008080800080808000808080008080800000000000808080000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000000000000000000000000FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000000000008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF008080800080808000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000808080000000
      000000000000FFFFFF0080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0080808000808080000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000FFFFFF008080
      8000000000000000000080808000808080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      800080808000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000808080000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00FFFFFF008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      00008080800000000000808080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000808080008080
      8000808080008080800080808000808080000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00808080000000000080808000FFFFFF00000000000000
      00000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000808080000000000080808000FFFFFF000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000000000000000FFFFFF0080808000FFFF
      FF008080800080808000FFFFFF0080808000FFFFFF0080808000FFFFFF008080
      800080808000FFFFFF0000000000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080000000000080808000FFFFFF000000
      00000000000000000000808080008080800080808000FFFFFF00FFFFFF000000
      00000000000080808000FFFFFF000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080000000000000000000808080000000000080808000FFFF
      FF008080800080808000FFFFFF00808080000000000080808000FFFFFF008080
      800080808000FFFFFF00808080000000000080808000FFFFFF00808080008080
      8000000000008080800080808000000000008080800080808000808080008080
      8000808080008080800080808000808080000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000080808000808080008080
      80008080800000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF008080800080808000FFFFFF00808080008080800080808000FFFF
      FF0080808000FFFFFF0000000000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0080808000FFFFFF008080
      80008080800080808000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000080808000FFFFFF000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000000000000000000000000000000000008080800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000808080000000000080808000FFFFFF00808080008080
      8000808080008080800000000000808080000000000080808000808080008080
      8000808080008080800080808000FFFFFF000000000080808000FFFFFF000000
      0000000000008080800080808000808080008080800080808000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000808080000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000808080008080800080808000808080000000000080808000FFFFFF000000
      0000000000000000000080808000808080008080800000000000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      00008080800000000000808080000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000000000008080
      80008080800080808000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00808080008080
      80000000000080808000FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800000000000000000008080
      80008080800080808000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      80000000000080808000FFFFFF008080800000000000FFFFFF00808080008080
      8000808080008080800000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0080009FFF00000000000007FF00000000
      000089FF000000000000A27F000000000000D49F000000000000E72700000000
      0000EBC9000000000000800000000000E423000C00000000E053F7E300000000
      E483E78F00000000E107EE3F00000000E42FD8FF00000000E11F83FF00000000
      E03F8FFF00000000E07F3FFF00000000FFC7FFFFFF00FFFFFFC3FFFFFF0CC001
      8001AAAAFF0080010000555580009FF93800A00200009FF9200040013F3E9E39
      0801800224009C1920034081090098190F87800221019819240F400502809839
      081FAAAA24009C79217F555508219FF908FFFFFF21619FF901FFFFFF08838001
      03FFFFFF01078003FFFFFFFF03FFFFFFC001FC3F8000DF3E8002FC3F00008E3C
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
      Hint = 'Save the current label file to disk'
      ImageIndex = 4
      ShortCut = 16467
      OnExecute = saveFileActionExecute
    end
    object SaveAsFileAction: TAction
      Caption = 'Save As...'
      Hint = 'Saves the current file as another file to disk'
      ImageIndex = 10
      ShortCut = 24659
      OnExecute = SaveAsFileActionExecute
    end
    object closeFileAction: TAction
      Caption = 'Close label'
      Hint = 'Close current label ZPL file'
      ImageIndex = 7
      ShortCut = 16471
      OnExecute = closeFileActionExecute
    end
    object saveLabelAction: TAction
      Caption = 'Save label format'
      Hint = 'Save the label format as XML file to disk'
      ImageIndex = 11
      OnExecute = saveLabelActionExecute
    end
    object exportZPLKeywordsAction: TAction
      Caption = 'Export ZPL Keywords'
      Hint = 'Export ZPL keywords to source code memo'
      ImageIndex = 8
      OnExecute = exportZPLKeywordsActionExecute
    end
    object GetGraphicsAction: TAction
      Caption = 'Get Graphics from source code'
      ImageIndex = 9
      OnExecute = GetGraphicsActionExecute
    end
    object PreviewLabelAction: TAction
      Caption = 'Preview label'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = PreviewLabelActionExecute
    end
    object rotateAction: TAction
      Caption = 'Rotate'
      Hint = 'Rotate the pdf 90'#176' to the right'
      ImageIndex = 13
      OnExecute = rotateActionExecute
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
      Caption = 'Label database field (Ctrl+L)'
      ShortCut = 16460
      OnExecute = LabelDatabaseFieldActionExecute
    end
    object DatabaseFieldAction: TAction
      Caption = 'Database field (Ctrl+D)'
      ShortCut = 16452
      OnExecute = DatabaseFieldActionExecute
    end
    object CommentBlocAction: TAction
      Caption = 'Comment bloc (Ctrl+M)'
      Hint = 'Add a comment bloc with START and END'
      ShortCut = 16461
      OnExecute = CommentBlocActionExecute
    end
    object CommentLineAction: TAction
      Caption = 'Comment line'
      Hint = 'Add a single line comment'
      OnExecute = CommentLineActionExecute
    end
    object GraphicAction: TAction
      Caption = 'Add a graphic (Ctrl+G)'
      ShortCut = 16455
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
      Caption = 'Bar code from Text (Ctrl+B)'
      ShortCut = 16450
      OnExecute = BarCodeFromTextActionExecute
    end
    object UpdateFieldOriginAction: TAction
      Caption = 'Update Field Origin'
      OnExecute = UpdateFieldOriginActionExecute
    end
    object HorizontalLineAction: TAction
      Caption = 'Horizontal line'
      OnExecute = HorizontalLineActionExecute
    end
    object VerticalLineAction: TAction
      Caption = 'Vertical line'
      OnExecute = VerticalLineActionExecute
    end
    object BoxAction: TAction
      Caption = 'Rectangle/Box'
      OnExecute = BoxActionExecute
    end
  end
  object SynZPLSyn1: TSynZPLSyn
    DefaultFilter = '*.zpl;*.zplx'
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    ScriptCommentAttri.Foreground = 1138687
    Left = 606
    Top = 480
  end
  object mru: TMostRecentFiles
    MaxFiles = 8
    ShowFullPath = False
    OwnerMenuItem = MRUMenuItem
    MenuPosition = 0
    OnMenuClick = mruMenuClick
    Left = 694
    Top = 477
  end
end
