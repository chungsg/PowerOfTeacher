object fm_main: Tfm_main
  Left = 0
  Top = 0
  Caption = 'What is this? - '#51060#48120#51648' '#51088#47308' '#51228#49884#54616#44592
  ClientHeight = 706
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1099
    Height = 706
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object gp_body: TGridPanel
      Left = 0
      Top = 0
      Width = 1099
      Height = 706
      Align = alClient
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          ColumnSpan = 4
          Control = ImageEnView1
          Row = 0
          RowSpan = 4
        end
        item
          Column = 0
          ColumnSpan = 5
          Control = pnl_Control
          Row = 4
        end
        item
          Column = 4
          Control = pnl_rightmenu
          Row = 0
          RowSpan = 4
        end>
      RowCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 220.000000000000000000
        end>
      TabOrder = 0
      object ImageEnView1: TImageEnView
        Left = 0
        Top = 0
        Width = 879
        Height = 486
        DesignTimeView = dvBlank
        Background = clBlack
        BorderStyle = bsNone
        LayerOptions = [loAllowMultiSelect, loAutoUndoChangesByUser, loAutoFixBorders, loKeyboardShortcuts, loResizeOnRotate, loDragSelection, loSwapBackgroundProps]
        AutoStretch = True
        OnNewLayer = ImageEnView1NewLayer
        OnDrawLayer = ImageEnView1DrawLayer
        Align = alClient
        PopupMenu = pm_imageenview
        TabOrder = 0
      end
      object pnl_Control: TPanel
        Left = 0
        Top = 486
        Width = 1099
        Height = 220
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #49352#44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object page_main: TPageControl
          Left = 0
          Top = 45
          Width = 1099
          Height = 175
          ActivePage = ts_Image
          Align = alClient
          TabOrder = 0
          OnChange = page_mainChange
          object ts_Image: TTabSheet
            Caption = #9312' What is this'
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 1091
              Height = 140
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object GridPanel5: TGridPanel
                Left = 2
                Top = 2
                Width = 1087
                Height = 136
                Align = alClient
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.300000000000001000
                  end
                  item
                    Value = 8.700000000000021000
                  end>
                ControlCollection = <
                  item
                    Column = 1
                    ColumnSpan = 10
                    Control = ImageEnFolderMView
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = Btn_SelectFolder
                    Row = 0
                  end
                  item
                    Column = 11
                    Control = btn_Manual
                    Row = 0
                  end>
                RowCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                TabOrder = 0
                object ImageEnFolderMView: TImageEnFolderMView
                  Left = 90
                  Top = 0
                  Width = 902
                  Height = 136
                  Hint = #51088#47308#47196' '#51228#49884#54624' Image'#47484' '#53364#47533#54616#49464#50836'.'
                  DesignTimeView = dvBlank
                  Background = clWindow
                  WallpaperStyle = iewoTile
                  ScrollBars = ssHorizontal
                  GridWidth = 200
                  StoreType = ietFastThumb
                  TextMargin = 4
                  ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame, ietxShowPreviewWhileDragging]
                  PopupMenus = []
                  OnImageSelect = ImageEnFolderMViewImageSelect
                  Style = iemsFlat
                  AutoAdjustStyle = True
                  MultiSelectionOptions = [iemoRegion, iemoOptimizeForDragging, iemoSelectOnRightClick]
                  DefaultTopText = iedtNone
                  DefaultInfoText = iedtNone
                  DefaultBottomText = iedtFilename
                  Align = alClient
                  ThumbnailDisplayFilter = rfFastLinear
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  SortOrder = iesbFilename
                  FileTypesMask = 'jpg,jpeg,png,gif,pdf,bmp'
                  ShowFolders = False
                end
                object Btn_SelectFolder: TButton
                  Left = 0
                  Top = 0
                  Width = 90
                  Height = 136
                  Align = alClient
                  Caption = #54260#45908' '#49440#53469
                  TabOrder = 1
                  OnClick = Btn_SelectFolderClick
                end
                object btn_Manual: TButton
                  Left = 992
                  Top = 0
                  Width = 95
                  Height = 136
                  Action = actn_help
                  Align = alClient
                  TabOrder = 2
                end
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1099
          Height = 45
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object GridPanel4: TGridPanel
            Left = 2
            Top = 2
            Width = 1095
            Height = 41
            Align = alClient
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 2
                ColumnSpan = 6
                Control = sBtn_ShowNHide
                Row = 0
              end
              item
                Column = 1
                Control = chk_preview
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              1095
              41)
            object sBtn_ShowNHide: TSpeedButton
              Left = 219
              Top = 0
              Width = 657
              Height = 41
              Align = alClient
              Caption = #9313'  Image'#47484' '#49440#53469#54616#49888' '#54980' '#51060' '#48512#48516#51012' '#53364#47533#54616#49492#49436' '#54868#47732#51012' '#45331#44172' '#49324#50857#54616#49464#50836'.'
              OnClick = sBtn_ShowNHideClick
              ExplicitLeft = 9
              ExplicitTop = 9
              ExplicitWidth = 293
              ExplicitHeight = 22
            end
            object chk_preview: TCheckBox
              Left = 116
              Top = 12
              Width = 97
              Height = 17
              Anchors = []
              Caption = #48120#47532#48372#44592
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = chk_previewClick
            end
          end
        end
      end
      object pnl_rightmenu: TPanel
        Left = 879
        Top = 0
        Width = 220
        Height = 486
        Align = alClient
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object gp_rightmenu: TGridPanel
          Left = 2
          Top = 2
          Width = 216
          Height = 482
          Align = alClient
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Btn_Menu
              Row = 0
            end
            item
              Column = 0
              Control = Btn_NextImage
              Row = 1
            end
            item
              Column = 0
              Control = Btn_Opacity
              Row = 2
            end
            item
              Column = 0
              Control = Btn_DelCurrentLayer
              Row = 3
            end
            item
              Column = 0
              Control = Btn_DelAllLayer
              Row = 4
            end
            item
              Column = 0
              Control = Btn_AutoHintWin
              Row = 5
            end
            item
              Column = 0
              Control = Btn_TurnRight90
              Row = 6
            end
            item
              Column = 0
              Control = Btn_TurnRight180
              Row = 7
            end
            item
              Column = 0
              Control = Btn_TurnLeft90
              Row = 8
            end
            item
              Column = 0
              Control = Btn_TurnLeft180
              Row = 9
            end
            item
              Column = 0
              Control = Button1
              Row = 10
            end>
          RowCollection = <
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909092000
            end
            item
              Value = 9.090909090909078000
            end>
          TabOrder = 0
          object Btn_Menu: TButton
            Left = 1
            Top = 1
            Width = 214
            Height = 44
            Align = alClient
            Caption = #49345#49464' Menu'
            TabOrder = 0
            OnClick = Btn_MenuClick
          end
          object Btn_NextImage: TButton
            Left = 1
            Top = 45
            Width = 214
            Height = 43
            Align = alClient
            Caption = 'Next Image'
            TabOrder = 1
            OnClick = Btn_NextImageClick
          end
          object Btn_Opacity: TButton
            Left = 1
            Top = 88
            Width = 214
            Height = 44
            Align = alClient
            Caption = 'Image '#53804#47749#46020' '#45458#51076
            TabOrder = 2
            OnClick = Btn_OpacityClick
          end
          object Btn_DelCurrentLayer: TButton
            Left = 1
            Top = 132
            Width = 214
            Height = 44
            Align = alClient
            Caption = #54788#51116' Layer '#51648#50880
            TabOrder = 3
            OnClick = Btn_DelCurrentLayerClick
          end
          object Btn_DelAllLayer: TButton
            Left = 1
            Top = 176
            Width = 214
            Height = 43
            Align = alClient
            Caption = #47784#46304' Layer '#51648#50880
            TabOrder = 4
            OnClick = Btn_DelAllLayerClick
          end
          object Btn_AutoHintWin: TButton
            Left = 1
            Top = 219
            Width = 214
            Height = 44
            Align = alClient
            Caption = #55180#53944#52285' '#51088#46041
            TabOrder = 5
            OnClick = Btn_AutoHintWinClick
          end
          object Btn_TurnRight90: TButton
            Left = 1
            Top = 263
            Width = 214
            Height = 43
            Action = actn_turnright90
            Align = alClient
            TabOrder = 6
          end
          object Btn_TurnRight180: TButton
            Left = 1
            Top = 306
            Width = 214
            Height = 44
            Action = actn_turnright180
            Align = alClient
            Caption = #49884#44228#48169#54693' 180'#176#46028#47532#44592
            TabOrder = 7
          end
          object Btn_TurnLeft90: TButton
            Left = 1
            Top = 350
            Width = 214
            Height = 44
            Action = actn_turnleft90
            Align = alClient
            Caption = #48152#49884#44228#48169#54693' 90'#176#46028#47532#44592
            TabOrder = 8
          end
          object Btn_TurnLeft180: TButton
            Left = 1
            Top = 394
            Width = 214
            Height = 43
            Action = actn_turnleft180
            Align = alClient
            Caption = #48152#49884#44228#48169#54693' 180'#176#46028#47532#44592
            TabOrder = 9
          end
          object Button1: TButton
            Left = 1
            Top = 437
            Width = 214
            Height = 44
            Align = alClient
            Caption = #51060#48120#51648' '#51200#51109
            TabOrder = 10
            OnClick = Button1Click
          end
        end
      end
    end
  end
  object IEOFD: TIEOpenFolderDialog
    Left = 808
    Top = 296
  end
  object pm_imageenview: TPopupMenu
    AutoHotkeys = maManual
    Left = 768
    Top = 160
    object pm_RotateRight90: TMenuItem
      Action = actn_turnright90
    end
    object pm_RotateRight180: TMenuItem
      Action = actn_turnright180
      Caption = #49884#44228#48169#54693' 180'#176' '#46028#47532#44592
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pm_RotateLeft90: TMenuItem
      Action = actn_turnleft90
      Caption = #48152#49884#44228#48169#54693' 90'#176' '#46028#47532#44592
    end
    object pm_RotateLeft180: TMenuItem
      Action = actn_turnleft180
      Caption = #48152#49884#44228#48169#54693' 180'#176' '#46028#47532#44592
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object pm_Layerdel: TMenuItem
      Caption = #54788#51116' Layer '#51648#50880
    end
    object pm_DelAllLayer: TMenuItem
      Caption = #47784#46304' Layer '#51648#50880
      ShortCut = 16430
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object pm_hintwin: TMenuItem
      Caption = #55180#53944#52285' '#51088#46041
      ShortCut = 16449
    end
    object pm_Opacity: TMenuItem
      Caption = 'Image '#52964#48260' '#53804#47749#46020' '#51088#46041
      ShortCut = 16463
    end
  end
  object tmr_AutoMove: TTimer
    Enabled = False
    Interval = 450
    OnTimer = tmr_AutoMoveTimer
    Left = 720
    Top = 320
  end
  object tmr_AutoOpacity: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmr_AutoOpacityTimer
    Left = 720
    Top = 368
  end
  object tmrUpdatePreview: TTimer
    Enabled = False
    Interval = 75
    OnTimer = tmrUpdatePreviewTimer
    Left = 552
    Top = 408
  end
  object ActionList1: TActionList
    Left = 712
    Top = 64
    object actn_help: TAction
      Caption = 'actn_help'
      ShortCut = 112
      OnExecute = actn_helpExecute
    end
    object actn_turnright90: TAction
      Caption = #49884#44228#48169#54693' 90'#176' '#46028#47532#44592
      ShortCut = 16466
      OnExecute = actn_turnright90Execute
    end
    object actn_turnright180: TAction
      Caption = 'actn_turnright180'
      OnExecute = actn_turnright180Execute
    end
    object actn_turnleft90: TAction
      Caption = 'actn_turnleft90'
      ShortCut = 16460
      OnExecute = actn_turnleft90Execute
    end
    object actn_turnleft180: TAction
      Caption = 'actn_turnleft180'
      OnExecute = actn_turnleft180Execute
    end
  end
end
