object fm_youtube: Tfm_youtube
  Left = 0
  Top = 0
  Caption = #44305#44256#50630#45716' '#50976#53916#48652' '#50689#49345#48372#44592
  ClientHeight = 576
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Page_Main: TPageControl
    Left = 0
    Top = 0
    Width = 1051
    Height = 576
    ActivePage = TS_ViewYoutube
    Align = alClient
    TabOrder = 0
    OnChange = Page_MainChange
    object TS_ViewYoutube: TTabSheet
      Caption = #50976#53916#48652#50689#49345' '#48372#44592
      TabVisible = False
      object pnl_Top: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 41
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object GridPanel2: TGridPanel
          Left = 2
          Top = 2
          Width = 1039
          Height = 37
          Align = alClient
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
              Column = 0
              Control = cbb_vsubject
              Row = 0
            end
            item
              Column = 1
              ColumnSpan = 3
              Control = cbb_vyoutubelist
              Row = 0
            end
            item
              Column = 5
              ColumnSpan = 2
              Control = pnl_search
              Row = 0
            end
            item
              Column = 4
              Control = chb_search
              Row = 0
            end
            item
              Column = 7
              ColumnSpan = 3
              Control = Panel10
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            1039
            37)
          object cbb_vsubject: TComboBox
            Left = 1
            Top = 3
            Width = 104
            Height = 31
            Anchors = []
            TabOrder = 0
            TextHint = #44368#44284' '#49440#53469
            OnChange = cbb_vsubjectChange
          end
          object cbb_vyoutubelist: TComboBox
            Left = 105
            Top = 1
            Width = 311
            Height = 31
            Align = alClient
            TabOrder = 1
            TextHint = #51228#49884#54624' '#50976#53916#48652' '#50689#49345' '#51228#47785#51012' '#49440#53469#54616#49464#50836'.'
            OnChange = cbb_vyoutubelistChange
          end
          object pnl_search: TPanel
            Left = 520
            Top = 1
            Width = 207
            Height = 35
            Align = alClient
            TabOrder = 2
            Visible = False
            object GridPanel4: TGridPanel
              Left = 1
              Top = 1
              Width = 205
              Height = 33
              Align = alClient
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
                  Control = dt_search
                  Row = 0
                end
                item
                  Column = 4
                  Control = btn_search
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object dt_search: TEdit
                Left = 1
                Top = 1
                Width = 162
                Height = 31
                Align = alClient
                TabOrder = 0
                TextHint = #44160#49353#54624' '#50689#49345#51088#47308#51032' '#51228#47785' '#51068#48512#48516#51012' '#51077#47141#54616#49464#50836'.'
              end
              object btn_search: TButton
                Left = 163
                Top = 1
                Width = 41
                Height = 31
                Align = alClient
                Caption = #44160#49353
                TabOrder = 1
                OnClick = btn_searchClick
              end
            end
          end
          object chb_search: TCheckBox
            Left = 419
            Top = 10
            Width = 97
            Height = 17
            Anchors = []
            Caption = #51228#47785' '#44160#49353
            TabOrder = 3
            OnClick = chb_searchClick
          end
          object Panel10: TPanel
            Left = 727
            Top = 1
            Width = 311
            Height = 35
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 4
            object GridPanel8: TGridPanel
              Left = 2
              Top = 2
              Width = 307
              Height = 31
              Align = alClient
              ColumnCollection = <
                item
                  Value = 33.300000000000000000
                end
                item
                  Value = 33.300000000000000000
                end
                item
                  Value = 33.400000000000010000
                end>
              ControlCollection = <
                item
                  Column = 0
                  ColumnSpan = 3
                  Control = btn_StopNStart
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object btn_StopNStart: TButton
                Left = 1
                Top = 1
                Width = 305
                Height = 29
                Align = alClient
                Caption = #50668#44592#49436' '#47688#52628#44592
                TabOrder = 0
                OnClick = btn_StopNStartClick
              end
            end
          end
        end
      end
      object pnl_ViewYoutube: TPanel
        Left = 0
        Top = 41
        Width = 1043
        Height = 525
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        ExplicitHeight = 497
        object pnl_Web: TPanel
          Left = 107
          Top = 120
          Width = 200
          Height = 66
          TabOrder = 0
          object Web_Notice: TWebBrowser
            Left = 1
            Top = 1
            Width = 198
            Height = 64
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 72
            ExplicitTop = 24
            ExplicitWidth = 300
            ExplicitHeight = 150
            ControlData = {
              4C000000771400009D0600000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E12620A000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object pnl_youtube: TPanel
          Left = 312
          Top = 145
          Width = 185
          Height = 41
          TabOrder = 1
          Visible = False
          object VLCPlugin21: TVLCPlugin2
            Left = 1
            Top = 1
            Width = 183
            Height = 39
            Align = alClient
            TabOrder = 0
            OnMediaPlayerEndReached = VLCPlugin21MediaPlayerEndReached
            ExplicitLeft = -64
            ExplicitTop = -96
            ExplicitWidth = 320
            ExplicitHeight = 240
            ControlData = {
              07000000280043006F0075006E007400290003000D0000000800000041007500
              74006F004C006F006F0070000B000000080000004100750074006F0050006C00
              610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
              00000000070000004200610073006500550052004C0008000000000008000000
              4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
              6E0074004800650069006700680074000300080400000B000000450078007400
              65006E007400570069006400740068000300EA12000011000000460075006C00
              6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
              030000004D0052004C0008000000000009000000530074006100720074005400
              69006D0065000300000000000700000054006F006F006C006200610072000B00
              FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
              6C0075006D006500030064000000}
          end
        end
      end
    end
    object TS_Youtube: TTabSheet
      Caption = #50976#53916#48652#50689#49345' '#44160#49353
      ImageIndex = 1
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 528
        Width = 1043
        Height = 38
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        ExplicitTop = 500
        object gpnl_bottom: TGridPanel
          Left = 2
          Top = 2
          Width = 1039
          Height = 34
          Align = alClient
          ColumnCollection = <
            item
              Value = 8.133035549710094000
            end
            item
              Value = 34.000000000000000000
            end
            item
              Value = 34.000000000000000000
            end
            item
              Value = 8.133035549710094000
            end
            item
              Value = 8.133035549710094000
            end
            item
              Value = 7.600893350869740000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = cbb_subject
              Row = 0
            end
            item
              Column = 2
              Control = dt_url
              Row = 0
            end
            item
              Column = 1
              Control = dt_title
              Row = 0
            end
            item
              Column = 4
              ColumnSpan = 2
              Control = btn_Save
              Row = 0
            end
            item
              Column = 3
              Control = cbb_authority
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object cbb_subject: TComboBox
            Left = 1
            Top = 1
            Width = 84
            Height = 31
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TextHint = #44368#44284#49440#53469
            Items.Strings = (
              #44397#50612
              #46020#45909
              #49324#54924
              #49688#54617
              #44284#54617
              #49892#44284
              #52404#50977
              #51020#50501
              #48120#49696
              #50689#50612
              #53685#54633
              #52285#52404)
          end
          object dt_url: TEdit
            Left = 438
            Top = 1
            Width = 352
            Height = 32
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alClient
            TabOrder = 1
            TextHint = #50976#53916#48652' '#50689#49345#51032' URL'#51012' '#48537#50668' '#45347#44592' '#54616#49464#50836
            ExplicitHeight = 31
          end
          object dt_title: TEdit
            Left = 85
            Top = 1
            Width = 353
            Height = 32
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TextHint = #50689#49345#51032' '#51228#47785#51012' '#51077#47141#54616#49464#50836'.'
            ExplicitHeight = 31
          end
          object btn_Save: TButton
            Left = 875
            Top = 1
            Width = 163
            Height = 32
            Align = alClient
            Caption = #51200#51109
            TabOrder = 3
            OnClick = btn_SaveClick
          end
          object cbb_authority: TComboBox
            Left = 790
            Top = 1
            Width = 85
            Height = 31
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TextHint = #44428#54620#49440#53469
            Items.Strings = (
              'private'
              'public')
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 42
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object GridPanel1: TGridPanel
          Left = 2
          Top = 2
          Width = 1039
          Height = 38
          Align = alClient
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
              Column = 0
              Control = BitBtn1
              Row = 0
            end
            item
              Column = 1
              Control = BitBtn2
              Row = 0
            end
            item
              Column = 2
              Control = BitBtn3
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 1
            Top = 1
            Width = 104
            Height = 36
            Align = alClient
            Caption = '<'
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 105
            Top = 1
            Width = 103
            Height = 36
            Align = alClient
            Caption = '>'
            TabOrder = 1
            OnClick = BitBtn2Click
          end
          object BitBtn3: TBitBtn
            Left = 208
            Top = 1
            Width = 104
            Height = 36
            Align = alClient
            Caption = #49352#47196#44256#52840
            TabOrder = 2
            OnClick = BitBtn3Click
          end
        end
      end
      object Edge_youtube: TEdgeBrowser
        Left = 0
        Top = 42
        Width = 1043
        Height = 486
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 458
      end
    end
    object TS_YoutubeList: TTabSheet
      Caption = #50976#53916#48652#50689#49345' '#47785#47197' '#44288#47532
      ImageIndex = 2
      TabVisible = False
      object Panel4: TPanel
        Left = 0
        Top = 530
        Width = 1043
        Height = 36
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        ExplicitTop = 502
        object GridPanel3: TGridPanel
          Left = 2
          Top = 2
          Width = 1039
          Height = 32
          Align = alClient
          ColumnCollection = <
            item
              Value = 8.063361716603646000
            end
            item
              Value = 8.063361716603646000
            end
            item
              Value = 34.000000000000000000
            end
            item
              Value = 34.000000000000000000
            end
            item
              Value = 8.063361716603646000
            end
            item
              Value = 7.809914850189058000
            end>
          ControlCollection = <
            item
              Column = 1
              Control = cbb_mSubject
              Row = 0
            end
            item
              Column = 3
              Control = dt_mUrl
              Row = 0
            end
            item
              Column = 2
              Control = dt_mTitle
              Row = 0
            end
            item
              Column = 5
              Control = btn_mSave
              Row = 0
            end
            item
              Column = 4
              Control = cbb_mAuthority
              Row = 0
            end
            item
              Column = 0
              Control = btn_mDelete
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object cbb_mSubject: TComboBox
            Left = 85
            Top = 1
            Width = 83
            Height = 31
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TextHint = #44368#44284#49440#53469
            Items.Strings = (
              #44397#50612
              #46020#45909
              #49324#54924
              #49688#54617
              #44284#54617
              #49892#44284
              #52404#50977
              #51020#50501
              #48120#49696
              #50689#50612
              #53685#54633
              #52285#52404)
          end
          object dt_mUrl: TEdit
            Left = 521
            Top = 1
            Width = 352
            Height = 30
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alClient
            TabOrder = 1
            TextHint = #50976#53916#48652' '#50689#49345#51032' URL'#51012' '#48537#50668' '#45347#44592' '#54616#49464#50836
            ExplicitHeight = 31
          end
          object dt_mTitle: TEdit
            Left = 168
            Top = 1
            Width = 353
            Height = 30
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TextHint = #50689#49345#51032' '#51228#47785#51012' '#51077#47141#54616#49464#50836'.'
            ExplicitHeight = 31
          end
          object btn_mSave: TButton
            Left = 957
            Top = 1
            Width = 81
            Height = 30
            Align = alClient
            Caption = #51200#51109
            TabOrder = 3
            OnClick = btn_mSaveClick
          end
          object cbb_mAuthority: TComboBox
            Left = 873
            Top = 1
            Width = 84
            Height = 31
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TextHint = #44428#54620#49440#53469
            Items.Strings = (
              'private'
              'public')
          end
          object btn_mDelete: TButton
            Left = 1
            Top = 1
            Width = 84
            Height = 30
            Align = alClient
            Caption = #49325#51228
            TabOrder = 5
            OnClick = btn_mDeleteClick
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 530
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 502
        object Splitter1: TSplitter
          Left = 210
          Top = 1
          Width = 4
          Height = 528
          ExplicitHeight = 494
        end
        object mm_youtubeurl: TMemo
          Left = 214
          Top = 1
          Width = 828
          Height = 528
          Hint = #51200#51109#46104#50612' '#51080#45716' '#50976#53916#48652' '#50689#49345' '#47785#47197#51012' '#54869#51064#54616#44592' '#50948#54620' '#47785#51201
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 0
          ExplicitHeight = 500
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 209
          Height = 528
          Align = alLeft
          TabOrder = 1
          ExplicitHeight = 500
          object lb_youtubetitle: TListBox
            Left = 1
            Top = 1
            Width = 207
            Height = 526
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 33
            ParentFont = False
            TabOrder = 0
            OnDblClick = lb_youtubetitleDblClick
            ExplicitHeight = 498
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 520
    Top = 336
  end
  object PopupMenu1: TPopupMenu
    Left = 840
    Top = 184
    object pu_AutoPlay: TMenuItem
      Caption = #50672#49549' '#44048#49345#54616#44592
      OnClick = pu_AutoPlayClick
    end
    object pu_theReplay: TMenuItem
      Caption = #48152#48373' '#44048#49345#54616#44592
      OnClick = pu_theReplayClick
    end
  end
  object SQLCon_public: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=210.218.83.98'
      'Port=80'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 968
    Top = 88
    UniqueId = '{9D429172-CFB6-48A5-B333-7FBFC5F7ECD6}'
  end
end
