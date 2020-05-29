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
        Width = 800
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
      ButtonWidth = 133
      Caption = 'Main Toolbar'
      DisabledImages = toolbarDisabledImages
      Images = ToolbarEnabledImages
      List = True
      ShowCaptions = True
      AllowTextButtons = True
      TabOrder = 0
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
      object ToolButton10: TToolButton
        Left = 364
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object LabelSettingsButton: TToolButton
        Left = 372
        Top = 0
        Action = EditLabelSettingsAction
        DropdownMenu = LabelSettingsMenu
      end
      object ToolButton9: TToolButton
        Left = 396
        Top = 0
        Action = saveLabelAction
      end
      object ToolButton13: TToolButton
        Left = 420
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object LabelSettingsDisplay: TEdit
        Left = 428
        Top = 0
        Width = 292
        Height = 22
        ReadOnly = True
        TabOrder = 0
      end
      object ToolButton14: TToolButton
        Left = 720
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 16
        Style = tbsSeparator
      end
      object ToolButton15: TToolButton
        Left = 728
        Top = 0
        Action = EditPrinterSettingsAction
      end
      object PrinterSettingsDisplay: TEdit
        Left = 752
        Top = 0
        Width = 347
        Height = 22
        ReadOnly = True
        TabOrder = 1
      end
      object ToolButton19: TToolButton
        Left = 1099
        Top = 0
        Width = 8
        Caption = 'ToolButton19'
        ImageIndex = 17
        Style = tbsSeparator
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
        Top = 429
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
        Height = 156
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
        object Label6: TLabel
          Left = 15
          Top = 118
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Line length :'
        end
        object Label7: TLabel
          Left = 128
          Top = 118
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Line thick :'
        end
        object Label8: TLabel
          Left = 232
          Top = 118
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Line height :'
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
        object AddAZPLCommandButton: TButton
          Left = 744
          Top = 63
          Width = 154
          Height = 19
          Hint = 
            'Click Ctrl to add Field Origin|Add a ZPL command (Click Ctrl to ' +
            'add Field Origin)'
          Action = CommandAction
          TabOrder = 11
          OnMouseDown = AddAZPLCommandButtonMouseDown
          OnMouseUp = AddAZPLCommandButtonMouseUp
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
          Left = 80
          Top = 115
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
          Left = 185
          Top = 115
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
          Top = 98
          Width = 154
          Height = 19
          Action = HorizontalLineAction
          TabOrder = 21
        end
        object Button2: TButton
          Left = 744
          Top = 98
          Width = 154
          Height = 19
          Action = VerticalLineAction
          TabOrder = 22
        end
        object RectHeight: TNumberEdit
          Left = 296
          Top = 115
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
          Top = 117
          Width = 154
          Height = 19
          Action = BoxAction
          TabOrder = 24
        end
      end
      object codePanel: TPanel
        Left = 1
        Top = 432
        Width = 923
        Height = 331
        Align = alClient
        BorderWidth = 10
        TabOrder = 2
        ExplicitTop = 401
        ExplicitHeight = 362
        DesignSize = (
          923
          331)
        object zplSource: TSynEdit
          Left = 3
          Top = 34
          Width = 914
          Height = 290
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
          ExplicitHeight = 321
        end
        object ActionToolBar1: TActionToolBar
          Left = 11
          Top = 11
          Width = 901
          Height = 26
          ActionManager = ActionManager1
          Caption = 'ActionToolBar1'
          Color = clMenuBar
          ColorMap.DisabledFontColor = 7171437
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedFont = clBlack
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Spacing = 0
          ExplicitHeight = 23
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
      object SelectAll1: TMenuItem
        Action = EditSelectAll1
      end
      object Cut1: TMenuItem
        Action = EditCut1
      end
      object Copy1: TMenuItem
        Action = EditCopy1
      end
      object Paste1: TMenuItem
        Action = EditPaste1
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Startlabel1: TMenuItem
        Caption = 'Start label'
        ImageIndex = 6
      end
      object ExportZPLKeywords1: TMenuItem
        Action = exportZPLKeywordsAction
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Editlabelsettings1: TMenuItem
        Action = EditLabelSettingsAction
      end
      object Editprintersettings1: TMenuItem
        Action = EditPrinterSettingsAction
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
      494C010116006001C40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFEFD0000000000000000000000000000000000FDFFFF00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FEFCF900EFD1
      AE00E2A23900DD930000DE960800E5C28E00B9E8D7004BF7FF0000F5FF0002F6
      FF007DF9FF00DAFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FDFAF300E4AC6200DD93
      0000DD930000DD930000D595080060B9710028C182002BD9BE0000F5FF0000F5
      FF0000F5FF0001F6FF00BEFCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      00000000000000000000000000000000000000000000EABE8A00DD930000DD93
      0000DD930000DD93000085B15E0025C2840025C284002BC1810026E8E20000F5
      FF0000F5FF0000F5FF0001F6FF00E1FEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000FDF7ED00DD930000DD930000DD93
      0000DD930000D1970E002BC1810025C2840025C2840025C284002AD3B10000F5
      FF0000F5FF0000F5FF0000F5FF009EFAFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00808080008080
      800080808000808080008080800000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000F5E1C600DD930000DD930000DD93
      0000DD930000B89C280035996400297E5200316D4100288D5E0044AF740000F5
      FF0000F5FF0000F5FF0000F5FF0048F7FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      000000000000000000000000000000000000F5E1C500DD930000DD930000DD93
      0000D68D000092590800171A1F00171A1F00171A1F00171A1F0027374B000EB0
      F00000F5FF0000F5FF0000F5FF0045F7FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF00000000000000000000000000FCF6EA00DD930000DD930000DB91
      0000A15B00008F4E03001B1C1E00171A1F00171A1F00171A1F001F2F8A001D25
      DA000DBCF20000F5FF0000F5FF009AFAFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000E8BA8200DD930000C079
      0000944E0000944E00005B391600171A1F00171A1F001B1D1F002333BF001D25
      DA001A44DE0001EFFE0000F5FF00DDFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FDF7EE00E2A75100A660
      0000944E0000944E0000904E0200402C1B00181B1F0020379A001D25DA001D25
      DA001D25DA0008C8F600B1FBFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FEFAF400A865
      730096500100944E0000944E0000975029004C3FB7001D31DC001D25DA001D25
      DA00213DDE00BDCAF50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000B590
      EA007E18D400882BB6008320C7007B13DD007B13DD007818DE006831E0006D29
      E0007B13DD00EFE4FB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000808080008080800000000000000000008080800000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000D9C8
      F4007B13DD007B13DD007B13DD007B13DD007B13DD007B13DD007B13DD007B13
      DD009454E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00808080008080
      80000000000000000000808080008080800000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000FFFE
      FF00A67DE7007B13DD007B13DD007B13DD007B13DD007B13DD007B13DD007C14
      DE00E4D9F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF008080
      800000000000000000008080800000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FAF6FE00B089E9007B13DD007B13DD007B13DD007B13DD008731E000E0D2
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDE1FA00CCBCEF00CAB9EF00D8C7F400FBF8FE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000000000008080800000000000FF00000000000000FF000000FF00
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000808080008080800000FFFF0000000000FF00000000000000000000000000
      0000FF0000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00008080800000FFFF0000FFFF0000000000FF000000FF000000000000000000
      0000000000000000000000000000FFFFFF008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000008080800000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FF00
      000000000000FF000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000008080800000FFFF008080800000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FF0000000000
      000000000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF0000000000000000008080800000FFFF008080800000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000FFFFFF0000000000C0C0
      C000FFFFFF0000000000FFFFFF00000000000000000000000000808080000000
      FF000000FF000000FF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
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
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      800000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008080800080000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      800000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C0008080800000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000080808000000000008080
      800000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000800000008000
      0000800000008000000080000000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008080
      8000808080000000000000000000000000000000000080808000000000008080
      800000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF000000000000000000C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF000000FF00FFFFFF00000000000000000000000000808080008000
      0000800000008000000080000000800000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      00008080800000000000000000000000000000000000C0C0C00080808000FFFF
      FF00000000000000000000FFFF0000808000008080000000000000000000FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      00008000000080000000808080000000000000000000C0C0C0000000000000FF
      FF000000000000FFFF000080800000FFFF0000808000008080000000000000FF
      FF00000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000FFFFFF0000000000FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF000080800000000000FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FFFFFF0000000000C0C0C000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF0000FFFF0000FFFF000080800000FFFF000000000000FF
      FF0000000000C0C0C00000000000000000000000000000000000808080000000
      000000000000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      00000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FFFF000000000000000000FFFF
      FF0080808000C0C0C00000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000C0C0C0000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C00000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000080808000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
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
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FC00FBCF00000000FC00C00300000000
      FC00800100000000000080000000000000010000000000000003000000000000
      0007000000000000000700000000000000238000000000000001800100000000
      0000C003000000000023E003000000000023E007000000000023E00700000000
      0007F00F00000000003FFC1F00000000FE7FFFFFFC00FFFFFE1FF83FFC00FFE7
      FC07E00FFC00FFC7FC01CFC7FC008F8FF80087E300000700F800A3F300003200
      000031F900000000000038F90000800000013C790023F90000323E390001E100
      003E3F190000C900003E9F8B0023C900003E8FC30063C300001DC7E700C3E300
      0023E00F0107FF01003FF83F03FFFF038001FFFFFFFF8E0000001FFFF83F0600
      000007FFE00F2600000081FFC00726000000C07F800306000000C01F80038E00
      0000E0070001DE000000F0010001C600E00700000001C201E007F00300018803
      E007E00F00019C07E007E03F8003C8E1E00FC0FF8003E040E01F83FFC007F30C
      E03F8FFFE00FFFC0E07F3FFFF83FFFE1FFDFFFFFFF00FFFFFFCFFFFFFF000001
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
      494C010116003001AC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00808080000000000000000000000000000000
      000000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF008080800080808000808080008080
      8000000000008080800000000000808080000000000000000000FBFBFB00CCCC
      CC00989898008A8A8A008C8C8C00BBBBBB00E2E2E200F3F3F300F1F1F100F1F1
      F100F5F5F500FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF008080800000000000F9F9F900A4A4A4008A8A
      8A008A8A8A008A8A8A008B8B8B00A8A8A800B0B0B000CDCDCD00F1F1F100F1F1
      F100F1F1F100F1F1F100F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FFFFFF008080
      80008080800080808000808080008080800000000000B7B7B7008A8A8A008A8A
      8A008A8A8A008A8A8A00A1A1A100B1B1B100B1B1B100B0B0B000E0E0E000F1F1
      F100F1F1F100F1F1F100F1F1F100FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF008080
      8000FFFFFF00000000008080800000000000F5F5F5008A8A8A008A8A8A008A8A
      8A008A8A8A008C8C8C00B0B0B000B1B1B100B1B1B100B1B1B100C6C6C600F1F1
      F100F1F1F100F1F1F100F1F1F100F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF008080
      8000FFFFFF00808080000000000000000000DDDDDD008A8A8A008A8A8A008A8A
      8A008A8A8A008E8E8E008B8B8B00727272006262620080808000A0A0A000F1F1
      F100F1F1F100F1F1F100F1F1F100F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00000000000000000000000000000000008080800080808000FFFFFF008080
      800080808000FFFFFF000000000000000000DCDCDC008A8A8A008A8A8A008A8A
      8A0084848400545454001B1B1B001B1B1B001B1B1B001B1B1B003B3B3B00BCBC
      BC00F1F1F100F1F1F100F1F1F100F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      800080808000FFFFFF00FFFFFF0000000000F4F4F4008A8A8A008A8A8A008888
      8800585858004C4C4C001C1C1C001B1B1B001B1B1B001B1B1B004F4F4F007373
      7300C5C5C500F1F1F100F1F1F100F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00000000000000000000000000000000008080800080808000FFFFFF008080
      80008080800080808000FFFFFF00FFFFFF0000000000B3B3B3008A8A8A007272
      72004C4C4C004C4C4C00363636001B1B1B001B1B1B001D1D1D00696969007373
      73007D7D7D00ECECEC00F1F1F100FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000F5F5F5009E9E9E005C5C
      5C004C4C4C004C4C4C004C4C4C002A2A2A001C1C1C0059595900737373007373
      730073737300CECECE00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000F9F9F9006E6E
      6E004E4E4E004C4C4C004C4C4C00505050006A6A6A0076767600737373007373
      73007B7B7B00D4D4D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF008080
      80008080800080808000FFFFFF0000000000000000000000000000000000ACAC
      AC0071717100676767006C6C6C007575750075757500767676007A7A7A007979
      790075757500EAEAEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF008080
      80008080800080808000FFFFFF0000000000000000000000000000000000D4D4
      D400757575007575750075757500757575007575750075757500757575007575
      75008A8A8A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF008080
      800080808000808080000000000000000000000000000000000000000000FEFE
      FE009F9F9F007575750075757500757575007575750075757500757575007676
      7600E1E1E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000FFFFFF00FFFFFF0080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000F8F8F800A7A7A700757575007575750075757500757575007C7C7C00DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E800CACACA00C8C8C800D3D3D300FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000808080000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF000000000000000000000000008080
      80008080800000000000FFFFFF00FFFFFF000000000000000000000000008080
      8000808080008080800000000000000000000000000080808000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00000000000000
      0000000000000000000080808000808080000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF00FFFFFF000000
      0000000000008080800080808000000000000000000000000000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000008080
      800080808000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000808080000000000080808000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000080808000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000080808000FFFFFF0000000000808080008080800000000000FFFF
      FF00000000000000000000000000808080000000000080808000808080008080
      800080808000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00008080800080808000FFFFFF00000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00000000008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF0000000000808080000000
      000000000000FFFFFF0000000000808080000000000080808000FFFFFF008080
      80008080800080808000FFFFFF00FFFFFF000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000808080008080800080808000FFFFFF00FFFF
      FF008080800080808000FFFFFF00808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00FFFFFF000000
      0000808080000000000000000000808080008080800080808000FFFFFF000000
      0000808080008080800080808000FFFFFF00FFFFFF0000000000000000000000
      0000000000008080800080808000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008080800080808000FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000808080008080800080808000FFFFFF000000
      000000000000808080008080800080808000FFFFFF00FFFFFF00000000000000
      0000000000008080800080808000FFFFFF0080808000FFFFFF00808080008080
      8000000000008080800080808000808080000000000080808000808080008080
      800080808000FFFFFF0080808000808080000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      800000000000FFFFFF0080808000000000008080800080808000FFFFFF000000
      00000000000000000000808080008080800080808000FFFFFF00FFFFFF000000
      0000000000008080800080808000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0080808000FFFFFF008080
      80008080800080808000FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF008080800080808000FFFFFF0080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF008080800080808000FFFFFF00808080008080
      8000808080000000000000000000000000000000000080808000FFFFFF000000
      0000808080008080800000000000808080008080800080808000FFFFFF000000
      0000000000000000000000000000808080008080800080808000FFFFFF00FFFF
      FF00000000008080800080808000FFFFFF0080808000FFFFFF00808080008080
      8000808080008080800000000000808080000000000080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000000000008080
      8000808080008080800080808000FFFFFF0080808000FFFFFF00808080008080
      80000000000080808000000000008080800080808000FFFFFF00000000008080
      800000000000000000000000000000000000FFFFFF0080808000FFFFFF000000
      0000000000000000000000000000808080008080800080808000FFFFFF00FFFF
      FF0000000000000000000000000000000000808080008080800080808000FFFF
      FF00FFFFFF0080808000808080000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000808080008080800080808000808080000000000000000000808080008080
      8000FFFFFF008080800080808000FFFFFF0080808000FFFFFF0000000000FFFF
      FF000000000000000000000000008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000080808000FFFFFF0080808000FFFFFF000000
      000000000000000000000000000080808000000000008080800000000000FFFF
      FF00FFFFFF000000000000000000000000000000000080808000808080008080
      8000FFFFFF0080808000FFFFFF000000000080808000FFFFFF00808080008080
      8000000000008080800080808000808080008080800080808000000000008080
      80008080800080808000FFFFFF00000000000000000000000000808080008080
      8000FFFFFF0080808000808080000000000080808000FFFFFF00808080000000
      000000000000FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000FFFFFF000000000080808000808080008080800080808000FFFFFF00FFFF
      FF00000000000000000000000000808080000000000080808000808080000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000808080008080
      80008080800080808000000000000000000080808000FFFFFF0000000000FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800000000000000000008080
      80008080800080808000FFFFFF00000000000000000000000000808080008080
      80008080800080808000FFFFFF000000000080808000FFFFFF0000000000FFFF
      FF00808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF000000000000000000808080000000000080808000808080000000
      0000FFFFFF00FFFFFF0080808000000000000000000000000000808080008080
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      80008080800000000000000000000000000080808000FFFFFF00808080008080
      80000000000080808000FFFFFF008080800000000000FFFFFF00808080008080
      8000808080008080800000000000000000000000000000000000000000008080
      80008080800080808000000000000000000080808000FFFFFF00808080000000
      000080808000FFFFFF0000000000808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF008080
      8000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000080808000808080008080
      80000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0080808000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80008080800080808000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000FFFFFF00FFFFFF0000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00808080008080800080808000808080008080800000000000FFFF
      FF00FFFFFF000000000000000000000000008080800080808000808080008080
      800080808000FFFFFF000000000080808000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000080808000808080008080
      800000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00808080008080
      800000000000FFFFFF0000000000000000008080800080808000FFFFFF008080
      800080808000FFFFFF000000000080808000FFFFFF0080808000808080000000
      000080808000808080000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080800000000000FFFF
      FF00808080008080800000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000FFFFFF00808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF008080800000000000FFFFFF00000000008080800080808000FFFFFF008080
      800080808000FFFFFF000000000080808000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000808080000000
      0000FFFFFF0000000000808080008080800000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      000080808000808080000000000000000000000000008080800080808000FFFF
      FF00FFFFFF0080808000FFFFFF00000000008080800080808000808080008080
      800080808000000000000000000080808000FFFFFF0080808000808080008080
      8000808080000000000000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000000000008080
      8000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF000000000000000000000000000000000080808000000000008080
      8000000000000000000080808000808080008080800000000000000000008080
      8000FFFFFF008080800000000000FFFFFF000000000080808000808080008080
      800000000000000000000000000080808000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000008080
      800000000000FFFFFF0000000000000000000000000000000000808080008080
      800000000000FFFFFF00FFFFFF000000000080808000FFFFFF00000000008080
      8000000000008080800000000000000000000000000080808000000000008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF000000000080808000FFFFFF0080808000808080000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800080808000FFFFFF00FFFFFF0080808000FFFFFF00808080000000
      000080808000FFFFFF0000000000000000000000000000000000808080000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000808080008080
      800080808000FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000808080000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0080808000FFFFFF0000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000000000000000000808080008080800080808000FFFFFF00808080000000
      000080808000FFFFFF0000000000000000000000000000000000808080000000
      000080808000FFFFFF0080808000FFFFFF000000000000000000808080008080
      80008080800080808000FFFFFF0080808000FFFFFF0080808000808080000000
      000080808000FFFFFF0080808000000000000000000000000000000000008080
      8000FFFFFF008080800080808000808080008080800000000000808080000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000000000000000000000000FFFF
      FF008080800080808000000000000000000080808000FFFFFF00808080000000
      000080808000FFFFFF00FFFFFF00000000000000000000000000808080000000
      0000808080000000000080808000FFFFFF000000000080808000808080008080
      800000000000808080008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000000000008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00808080008080
      8000000000000000000000000000000000008080800000000000FFFFFF008080
      80000000000080808000FFFFFF00FFFFFF00FFFFFF0080808000000000008080
      8000FFFFFF00000000008080800000000000000000008080800080808000FFFF
      FF00FFFFFF000000000080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      8000FFFFFF008080800080808000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF008080
      8000000000000000000080808000808080008080800000000000000000008080
      80000000000080808000FFFFFF00000000000000000000000000808080008080
      8000FFFFFF00808080008080800080808000FFFFFF00FFFFFF00000000008080
      8000808080008080800080808000FFFFFF000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000808080000000
      000000000000FFFFFF0080808000808080000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF00808080008080800000000000000000000000000080808000808080000000
      0000000000008080800000000000000000000000000000000000000000008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      8000808080008080800080808000808080000000000000000000000000008080
      8000FFFFFF0080808000808080000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF008080800080808000808080000000000000000000FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000008080800080808000808080008080
      8000FFFFFF00FFFFFF0080808000808080000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080000000000000000000000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
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
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FC84FBFF00000000FC0AC00300000000
      C030800100000000800080000000000000050000000000000003000000000000
      0F030000000000000F010000000000000F008000000000000F00800100000000
      0F00C003000000000001E003000000000001E007000000000003E00700000000
      0007F00F00000000807FFC1F00000000FE4FFC1FFC3CFFF3FE93F007FC3CFFE3
      FCE4E383FC3CC7C7FD99C3E180008380F92E81F100000100805A80F83F800000
      0096107824000000010618380880800003891C182100F02407921E080280E00A
      2F1E0F012400C02E061EA7810821C118040E93C32161C1200691C8070883E312
      0003E38F0107FF01003FF83F03FFFF0380009FFFFC1F8200000007FFF0270248
      000089FFE60B02120000A27FD80502420000D49F938106060000E727AC628E48
      0000EBC92BA0C2100000800013D0C042E423000C13D0C011E053F7E311D48803
      E483E78F48258400E107EE3F8C69C020E42FD8FFA39BE000E11F83FFD067F300
      E03F8FFFE40FFFC0E07F3FFFF83FFFE1FFC7FFFFFF00FFFFFFC3FFFFFF0CC001
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
      Category = 'ZPL Commands'
      Caption = 'Group Commands'
      Hint = 'Groups ZPL commands'
      ImageIndex = 1
      OnExecute = groupZPLCommandsActionExecute
    end
    object QuitAction: TAction
      Category = 'Application'
      Caption = '&Quit'
      Hint = 'Quit the ZPL utilities programm'
      ImageIndex = 2
      ShortCut = 16465
      OnExecute = QuitActionExecute
    end
    object openFileAction: TAction
      Category = 'File'
      Caption = 'Open Label...'
      Hint = 'Open a ZPL label file from disk'
      ImageIndex = 3
      ShortCut = 16463
      OnExecute = openFileActionExecute
    end
    object saveFileAction: TAction
      Category = 'File'
      Caption = 'Save Label'
      Hint = 'Save the current label file to disk'
      ImageIndex = 4
      ShortCut = 16467
      OnExecute = saveFileActionExecute
    end
    object SaveAsFileAction: TAction
      Category = 'File'
      Caption = 'Save As...'
      Hint = 'Saves the current file as another file to disk'
      ImageIndex = 10
      ShortCut = 24659
      OnExecute = SaveAsFileActionExecute
    end
    object closeFileAction: TAction
      Category = 'File'
      Caption = 'Close label'
      Hint = 'Close current label ZPL file'
      ImageIndex = 7
      ShortCut = 16471
      OnExecute = closeFileActionExecute
    end
    object saveLabelAction: TAction
      Category = 'Label'
      Caption = 'Save label format'
      Hint = 'Save the label format as XML file to disk'
      ImageIndex = 14
      OnExecute = saveLabelActionExecute
    end
    object exportZPLKeywordsAction: TAction
      Category = 'ZPL Commands'
      Caption = 'Export ZPL Keywords'
      Hint = 'Export ZPL keywords to source code memo'
      ImageIndex = 8
      OnExecute = exportZPLKeywordsActionExecute
    end
    object GetGraphicsAction: TAction
      Category = 'Application'
      Caption = 'Get Graphics from source code'
      ImageIndex = 9
      OnExecute = GetGraphicsActionExecute
    end
    object PreviewLabelAction: TAction
      Category = 'Label'
      Caption = 'Preview label'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = PreviewLabelActionExecute
    end
    object rotateAction: TAction
      Category = 'Label'
      Caption = 'Rotate'
      Hint = 'Rotate the pdf 90'#176' to the right'
      ImageIndex = 13
      OnExecute = rotateActionExecute
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ImageIndex = 21
      ShortCut = 16449
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 19
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 18
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 20
      ShortCut = 16470
    end
    object EditLabelSettingsAction: TAction
      Category = 'Label'
      Caption = 'Edit label settings...'
      ImageIndex = 15
      OnExecute = EditLabelSettingsActionExecute
    end
    object EditPrinterSettingsAction: TAction
      Category = 'Application'
      Caption = 'Edit printer settings...'
      ImageIndex = 16
      OnExecute = EditPrinterSettingsActionExecute
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 17
      ShortCut = 16474
    end
    object LoadLabelSettingsAction: TAction
      Category = 'Label'
      Caption = 'Load label setting...'
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
    Left = 590
    Top = 544
  end
  object mru: TMostRecentFiles
    MaxFiles = 8
    ShowFullPath = False
    OwnerMenuItem = MRUMenuItem
    MenuPosition = 0
    OnMenuClick = mruMenuClick
    Left = 46
    Top = 125
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Action = EditSelectAll1
            ImageIndex = 21
            ShortCut = 16449
          end
          item
            Action = EditCut1
            ImageIndex = 19
            ShortCut = 16472
          end
          item
            Action = EditCopy1
            ImageIndex = 18
            ShortCut = 16451
          end
          item
            Action = EditPaste1
            ImageIndex = 20
            ShortCut = 16470
          end
          item
            Action = EditUndo1
            ImageIndex = 17
            ShortCut = 16474
          end
          item
            Action = saveFileAction
            Caption = '&Save Label'
            ImageIndex = 4
            ShortCut = 16467
          end
          item
            Action = SaveAsFileAction
            Caption = 'Sa&ve As...'
            ImageIndex = 10
            ShortCut = 24659
          end
          item
            Action = closeFileAction
            Caption = 'C&lose label'
            ImageIndex = 7
            ShortCut = 16471
          end>
        ActionBar = ActionToolBar1
      end>
    DisabledImages = toolbarDisabledImages
    Images = ToolbarEnabledImages
    Left = 798
    Top = 549
    StyleName = 'Platform Default'
  end
  object LabelSettingsMenu: TPopupMenu
    Left = 302
    Top = 13
  end
end
