object fm_mainteacher: Tfm_mainteacher
  Left = 0
  Top = 0
  Caption = #54868#49345#49688#50629' '#51648#50896' '#44368#49324#50857'(2021.05.15)'
  ClientHeight = 775
  ClientWidth = 1286
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
  OnGesture = FormGesture
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1286
    Height = 775
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object pc_body: TPageControl
      Left = 2
      Top = 2
      Width = 1282
      Height = 771
      ActivePage = ts_balmoon
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Style = tsButtons
      TabOrder = 0
      OnChange = pc_bodyChange
      object ts_login: TTabSheet
        Caption = #47196#44536#51064
        ImageIndex = 1
        object GridPanel2: TGridPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 725
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
              Column = 1
              ColumnSpan = 3
              Control = pc_member
              Row = 1
              RowSpan = 3
            end>
          RowCollection = <
            item
              Value = 19.999999999999990000
            end
            item
              Value = 20.000000000000000000
            end
            item
              Value = 20.000000000000010000
            end
            item
              Value = 20.000000000000010000
            end
            item
              Value = 19.999999999999990000
            end>
          TabOrder = 0
          object pc_member: TPageControl
            Left = 255
            Top = 146
            Width = 764
            Height = 433
            ActivePage = ts_logging
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object ts_logging: TTabSheet
              Caption = #47196#44536#51064
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 756
                Height = 395
                Align = alClient
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 0
                object GridPanel3: TGridPanel
                  Left = 1
                  Top = 1
                  Width = 754
                  Height = 393
                  Align = alClient
                  BevelInner = bvLowered
                  ColumnCollection = <
                    item
                      Value = 9.000000000000009000
                    end
                    item
                      Value = 20.250000000000000000
                    end
                    item
                      Value = 20.250000000000000000
                    end
                    item
                      Value = 20.250000000000000000
                    end
                    item
                      Value = 20.250000000000000000
                    end
                    item
                      Value = 10.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 1
                      ColumnSpan = 4
                      Control = Panel4
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Label2
                      Row = 3
                    end
                    item
                      Column = 1
                      Control = Label3
                      Row = 2
                    end
                    item
                      Column = 2
                      ColumnSpan = 2
                      Control = dt_id
                      Row = 2
                    end
                    item
                      Column = 2
                      ColumnSpan = 2
                      Control = dt_pw
                      Row = 3
                    end
                    item
                      Column = 4
                      Control = btn_login
                      Row = 2
                      RowSpan = 2
                    end
                    item
                      Column = 1
                      Control = Label13
                      Row = 1
                    end
                    item
                      Column = 2
                      ColumnSpan = 2
                      Control = cb_lsncls
                      Row = 1
                    end
                    item
                      Column = 1
                      ColumnSpan = 2
                      Control = chkb_idpwmemory
                      Row = 4
                    end>
                  RowCollection = <
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
                  TabOrder = 0
                  DesignSize = (
                    754
                    393)
                  object Panel4: TPanel
                    Left = 70
                    Top = 2
                    Width = 607
                    Height = 78
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #47196#44536#51064' '#51221#48372#47484' '#51077#47141' ( Ver 1.0 )'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object Label2: TLabel
                    Left = 95
                    Top = 262
                    Width = 100
                    Height = 24
                    Anchors = []
                    Caption = #48708#48128#48264#54840
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 148
                    ExplicitTop = 171
                  end
                  object Label3: TLabel
                    Left = 95
                    Top = 184
                    Width = 101
                    Height = 24
                    Anchors = []
                    Caption = #50500' '#51060' '#46356
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 90
                    ExplicitTop = 136
                  end
                  object dt_id: TEdit
                    Left = 273
                    Top = 181
                    Width = 200
                    Height = 31
                    Anchors = []
                    TabOrder = 1
                  end
                  object dt_pw: TEdit
                    Left = 273
                    Top = 258
                    Width = 200
                    Height = 31
                    Anchors = []
                    PasswordChar = '*'
                    TabOrder = 2
                  end
                  object btn_login: TButton
                    Left = 525
                    Top = 158
                    Width = 152
                    Height = 155
                    Align = alClient
                    Caption = #47196#44536#51064
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    OnClick = btn_loginClick
                  end
                  object Label13: TLabel
                    Left = 95
                    Top = 107
                    Width = 101
                    Height = 24
                    Anchors = []
                    Caption = #49688' '#50629' '#48152
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 103
                    ExplicitTop = 77
                  end
                  object cb_lsncls: TComboBox
                    Left = 273
                    Top = 103
                    Width = 200
                    Height = 31
                    Anchors = []
                    TabOrder = 4
                    Text = #49688#50629#54624' '#48152' '#49440#53469
                    Items.Strings = (
                      #50864#47532#48152
                      '1-1'
                      '1-2'
                      '1-3'
                      '2-1'
                      '2-2'
                      '2-3'
                      '3-1'
                      '3-2'
                      '3-3'
                      '4-1'
                      '4-2'
                      '4-3'
                      '5-1'
                      '5-2'
                      '5-3'
                      '6-1'
                      '6-2'
                      '6-3'
                      '6-5')
                  end
                  object chkb_idpwmemory: TCheckBox
                    Left = 110
                    Top = 342
                    Width = 222
                    Height = 20
                    Anchors = []
                    Caption = #50500#51060#46356', '#48708#48264' '#44592#50613#54616#44592
                    TabOrder = 5
                  end
                end
              end
            end
            object ts_regist: TTabSheet
              Caption = #54924#50896#44032#51077
              ImageIndex = 1
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 756
                Height = 395
                Align = alClient
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 0
                object GridPanel4: TGridPanel
                  Left = 1
                  Top = 1
                  Width = 754
                  Height = 393
                  Align = alClient
                  ColumnCollection = <
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 22.500000000000000000
                    end
                    item
                      Value = 22.500000000000000000
                    end
                    item
                      Value = 22.500000000000000000
                    end
                    item
                      Value = 22.500000000000000000
                    end
                    item
                    end
                    item
                      Value = 5.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      ColumnSpan = 5
                      Control = Panel6
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Label4
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = Label5
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = dt_r_id
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = dt_r_pw1
                      Row = 2
                    end
                    item
                      Column = 2
                      ColumnSpan = 2
                      Control = btn_regist
                      Row = 5
                      RowSpan = 2
                    end
                    item
                      Column = 5
                      Control = Button3
                      Row = 0
                    end
                    item
                      Column = 3
                      ColumnSpan = 2
                      Control = btn_idconfirm
                      Row = 1
                    end
                    item
                      Column = 3
                      Control = Label6
                      Row = 2
                    end
                    item
                      Column = 4
                      Control = dt_r_pw2
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = Label7
                      Row = 3
                    end
                    item
                      Column = 2
                      Control = dt_school
                      Row = 3
                    end
                    item
                      Column = 3
                      Control = Label8
                      Row = 3
                    end
                    item
                      Column = 4
                      Control = cb_grade
                      Row = 3
                    end
                    item
                      Column = 1
                      Control = Label9
                      Row = 4
                    end
                    item
                      Column = 2
                      Control = cb_ban
                      Row = 4
                    end
                    item
                      Column = 3
                      Control = Label10
                      Row = 4
                    end
                    item
                      Column = 4
                      Control = dt_name
                      Row = 4
                    end>
                  RowCollection = <
                    item
                      Value = 15.000000000000000000
                    end
                    item
                      Value = 16.918856413857920000
                    end
                    item
                      Value = 16.960634350095000000
                    end
                    item
                      Value = 17.001188318945140000
                    end
                    item
                      Value = 17.040554178961760000
                    end
                    item
                      Value = 17.078766738140190000
                    end>
                  TabOrder = 0
                  DesignSize = (
                    754
                    393)
                  object Panel6: TPanel
                    Left = 1
                    Top = 1
                    Width = 714
                    Height = 59
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #44032#51077#50640' '#54596#50836#54620' '#51221#48372#47484' '#51077#47141
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object Label4: TLabel
                    Left = 73
                    Top = 147
                    Width = 100
                    Height = 24
                    Anchors = []
                    Caption = #48708#48128#48264#54840
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 49
                    ExplicitTop = 90
                  end
                  object Label5: TLabel
                    Left = 73
                    Top = 81
                    Width = 101
                    Height = 24
                    Anchors = []
                    Caption = #50500' '#51060' '#46356
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 151
                    ExplicitTop = 119
                  end
                  object dt_r_id: TEdit
                    Left = 224
                    Top = 77
                    Width = 137
                    Height = 31
                    Anchors = []
                    TabOrder = 1
                  end
                  object dt_r_pw1: TEdit
                    Left = 224
                    Top = 143
                    Width = 137
                    Height = 31
                    Anchors = []
                    PasswordChar = '*'
                    TabOrder = 2
                  end
                  object btn_regist: TButton
                    Left = 208
                    Top = 325
                    Width = 338
                    Height = 67
                    Align = alClient
                    Caption = #44032#51077#54616#44592
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                  end
                  object Button3: TButton
                    Left = 715
                    Top = 18
                    Width = 0
                    Height = 25
                    Anchors = []
                    Caption = 'Button3'
                    TabOrder = 4
                  end
                  object btn_idconfirm: TButton
                    Left = 454
                    Top = 73
                    Width = 183
                    Height = 40
                    Anchors = []
                    Caption = #50500#51060#46356' '#54869#51064
                    TabOrder = 5
                  end
                  object Label6: TLabel
                    Left = 411
                    Top = 147
                    Width = 100
                    Height = 24
                    Anchors = []
                    Caption = #48708#48264#54869#51064
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 336
                    ExplicitTop = 94
                  end
                  object dt_r_pw2: TEdit
                    Left = 562
                    Top = 143
                    Width = 137
                    Height = 31
                    Anchors = []
                    PasswordChar = '*'
                    TabOrder = 6
                  end
                  object Label7: TLabel
                    Left = 72
                    Top = 213
                    Width = 102
                    Height = 24
                    Anchors = []
                    Caption = #54617'    '#44368
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 55
                    ExplicitTop = 138
                  end
                  object dt_school: TEdit
                    Left = 224
                    Top = 210
                    Width = 137
                    Height = 31
                    Anchors = []
                    PasswordChar = '*'
                    TabOrder = 7
                  end
                  object Label8: TLabel
                    Left = 410
                    Top = 213
                    Width = 102
                    Height = 24
                    Anchors = []
                    Caption = #54617'    '#45380
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 323
                    ExplicitTop = 138
                  end
                  object cb_grade: TComboBox
                    Left = 562
                    Top = 210
                    Width = 137
                    Height = 31
                    Anchors = []
                    TabOrder = 8
                    Text = #54617#45380' '#49440#53469
                  end
                  object Label9: TLabel
                    Left = 111
                    Top = 280
                    Width = 25
                    Height = 24
                    Anchors = []
                    Caption = #48152
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 93
                    ExplicitTop = 182
                  end
                  object cb_ban: TComboBox
                    Left = 224
                    Top = 276
                    Width = 137
                    Height = 31
                    Anchors = []
                    TabOrder = 9
                    Text = #48152' '#49440#53469
                  end
                  object Label10: TLabel
                    Left = 410
                    Top = 280
                    Width = 102
                    Height = 24
                    Anchors = []
                    Caption = #51060'    '#47492
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 579
                    ExplicitTop = 8
                  end
                  object dt_name: TEdit
                    Left = 562
                    Top = 276
                    Width = 137
                    Height = 31
                    Anchors = []
                    TabOrder = 10
                  end
                end
              end
            end
            object ts_modify: TTabSheet
              Caption = #51221#48372#49688#51221
              ImageIndex = 2
            end
          end
        end
      end
      object ts_balmoon: TTabSheet
        Caption = #49688#50629#51088#47308#51228#49884
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        object Splitter2: TSplitter
          Left = 225
          Top = 0
          Width = 7
          Height = 608
          MinSize = 50
          OnCanResize = Splitter2CanResize
          ExplicitHeight = 464
        end
        object pnl_bottom: TPanel
          Left = 0
          Top = 608
          Width = 1274
          Height = 117
          Align = alBottom
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object pc_bottom: TPageControl
            Left = 2
            Top = 2
            Width = 1270
            Height = 113
            ActivePage = tab_studentexam
            Align = alClient
            TabOrder = 0
            object Tab_Attendance: TTabSheet
              Caption = #52636#49437' '#54869#51064
              object pnl_attendance: TPanel
                Left = 0
                Top = 0
                Width = 89
                Height = 82
                Align = alLeft
                BevelInner = bvLowered
                TabOrder = 0
                object btn_videoattendanceconfirm: TButton
                  Left = 2
                  Top = 2
                  Width = 85
                  Height = 78
                  Align = alClient
                  Caption = #52636#49437' '#54869#51064
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnClick = btn_videoattendanceconfirmClick
                end
              end
              object sg_attendance: TStringGrid
                Left = 89
                Top = 0
                Width = 1173
                Height = 82
                Align = alClient
                ColCount = 18
                DefaultRowHeight = 18
                FixedCols = 0
                FixedRows = 0
                TabOrder = 1
                OnDrawCell = sg_attendanceDrawCell
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  18
                  18
                  18
                  18
                  18)
              end
            end
            object Tab_responConfirm: TTabSheet
              Caption = #51025#45813' '#54869#51064
              ImageIndex = 2
              object mm_senderlist: TMemo
                Left = 0
                Top = 0
                Width = 1262
                Height = 82
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Tab_event: TTabSheet
              Caption = #51060#48292#53944
              ImageIndex = 1
              object GridPanel5: TGridPanel
                Left = 0
                Top = 0
                Width = 1262
                Height = 82
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
                    Column = 9
                    Control = btn_send_event1
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = Label11
                    Row = 0
                  end
                  item
                    Column = 1
                    ColumnSpan = 8
                    Control = dt_event1
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = Label14
                    Row = 1
                  end
                  item
                    Column = 1
                    ColumnSpan = 8
                    Control = dt_event2
                    Row = 1
                  end
                  item
                    Column = 9
                    Control = btn_send_event2
                    Row = 1
                  end>
                RowCollection = <
                  item
                    Value = 50.000000000000000000
                  end
                  item
                    Value = 50.000000000000000000
                  end>
                TabOrder = 0
                DesignSize = (
                  1262
                  82)
                object btn_send_event1: TButton
                  Left = 1135
                  Top = 1
                  Width = 126
                  Height = 40
                  Align = alClient
                  Caption = #51060#48292#53944'1 '#51204#49569
                  TabOrder = 0
                  OnClick = btn_send_event1Click
                end
                object Label11: TLabel
                  Left = 29
                  Top = 13
                  Width = 69
                  Height = 15
                  Anchors = []
                  Caption = #51060#48292#53944' 1'
                  ExplicitLeft = 26
                  ExplicitTop = 11
                end
                object dt_event1: TEdit
                  Left = 251
                  Top = 9
                  Width = 760
                  Height = 23
                  Anchors = []
                  TabOrder = 1
                end
                object Label14: TLabel
                  Left = 29
                  Top = 53
                  Width = 69
                  Height = 15
                  Anchors = []
                  Caption = #51060#48292#53944' 2'
                  ExplicitLeft = 26
                  ExplicitTop = 46
                end
                object dt_event2: TEdit
                  Left = 251
                  Top = 49
                  Width = 760
                  Height = 23
                  Anchors = []
                  TabOrder = 2
                end
                object btn_send_event2: TButton
                  Left = 1135
                  Top = 41
                  Width = 126
                  Height = 40
                  Align = alClient
                  Caption = #51060#48292#53944'2 '#51204#49569
                  TabOrder = 3
                  OnClick = btn_send_event1Click
                end
              end
            end
            object Tab_action: TTabSheet
              Caption = #54617#49373' '#54876#46041' '#50504#45236
              ImageIndex = 3
              object gpnl_action: TGridPanel
                Left = 0
                Top = 0
                Width = 1262
                Height = 82
                Align = alClient
                ColumnCollection = <
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end
                  item
                    Value = 4.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 17
                    Control = btn_order
                    Row = 1
                  end
                  item
                    Column = 0
                    ColumnSpan = 2
                    Control = Panel8
                    Row = 1
                  end
                  item
                    Column = 12
                    ColumnSpan = 5
                    Control = pnl_opt
                    Row = 1
                  end
                  item
                    Column = 18
                    Control = btn_quit
                    Row = 1
                  end
                  item
                    Column = 10
                    ColumnSpan = 2
                    Control = gpnl_letter
                    Row = 1
                  end
                  item
                    Column = 2
                    ColumnSpan = 7
                    Control = gpnl_responsetype
                    Row = 1
                  end
                  item
                    Column = 24
                    Control = btn_zoomfix
                    Row = 1
                  end
                  item
                    Column = 19
                    Control = btn_ElecPen
                    Row = 1
                  end
                  item
                    Column = 20
                    Control = btn_MovieViewOff
                    Row = 1
                  end>
                RowCollection = <
                  item
                    Value = 5.000000000000000000
                  end
                  item
                    Value = 90.000000000000000000
                  end
                  item
                    Value = 5.000000000000000000
                  end>
                TabOrder = 0
                object btn_order: TButton
                  Left = 858
                  Top = 5
                  Width = 50
                  Height = 72
                  Align = alClient
                  Caption = #54876#46041' '#49884#51089
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  WordWrap = True
                  OnClick = btn_orderClick
                end
                object Panel8: TPanel
                  Left = 1
                  Top = 5
                  Width = 101
                  Height = 72
                  Align = alClient
                  BevelInner = bvLowered
                  Caption = #51025#45813#50976#54805
                  Color = clMoneyGreen
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
                object pnl_opt: TPanel
                  Left = 606
                  Top = 5
                  Width = 252
                  Height = 72
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 2
                  Visible = False
                  object pnl_dapji: TPanel
                    Left = 65
                    Top = 2
                    Width = 185
                    Height = 68
                    Align = alClient
                    Color = clMoneyGreen
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -19
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 0
                    object mm_dapji: TMemo
                      Left = 1
                      Top = 1
                      Width = 183
                      Height = 66
                      Align = alClient
                      TabOrder = 0
                    end
                  end
                  object pnl_dapjititle: TPanel
                    Left = 2
                    Top = 2
                    Width = 63
                    Height = 68
                    Align = alLeft
                    Caption = #45813#51648
                    Color = clMoneyGreen
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -19
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 1
                  end
                end
                object btn_quit: TButton
                  Left = 908
                  Top = 5
                  Width = 51
                  Height = 72
                  Align = alClient
                  Caption = #51025#45813' '#51333#47308
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  WordWrap = True
                  OnClick = btn_quitClick
                end
                object gpnl_letter: TGridPanel
                  Left = 505
                  Top = 5
                  Width = 101
                  Height = 72
                  Align = alClient
                  BevelInner = bvLowered
                  ColumnCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      Control = cb_numletter
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = pnl_numletter
                      Row = 1
                    end>
                  RowCollection = <
                    item
                      Value = 50.000000000000000000
                    end
                    item
                      Value = 50.000000000000000000
                    end>
                  TabOrder = 4
                  Visible = False
                  object cb_numletter: TCheckBox
                    Left = 2
                    Top = 2
                    Width = 97
                    Height = 17
                    Align = alTop
                    Caption = #44544#51088#49688
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    Visible = False
                    WordWrap = True
                    OnClick = cb_numletterClick
                  end
                  object pnl_numletter: TPanel
                    Left = 2
                    Top = 39
                    Width = 97
                    Height = 31
                    Align = alBottom
                    BevelInner = bvLowered
                    TabOrder = 1
                    Visible = False
                    object spinbtn: TSpinButton
                      Left = 75
                      Top = 2
                      Width = 20
                      Height = 27
                      Align = alRight
                      DownGlyph.Data = {
                        0E010000424D0E01000000000000360000002800000009000000060000000100
                        200000000000D800000000000000000000000000000000000000008080000080
                        8000008080000080800000808000008080000080800000808000008080000080
                        8000008080000080800000808000000000000080800000808000008080000080
                        8000008080000080800000808000000000000000000000000000008080000080
                        8000008080000080800000808000000000000000000000000000000000000000
                        0000008080000080800000808000000000000000000000000000000000000000
                        0000000000000000000000808000008080000080800000808000008080000080
                        800000808000008080000080800000808000}
                      TabOrder = 0
                      UpGlyph.Data = {
                        0E010000424D0E01000000000000360000002800000009000000060000000100
                        200000000000D800000000000000000000000000000000000000008080000080
                        8000008080000080800000808000008080000080800000808000008080000080
                        8000000000000000000000000000000000000000000000000000000000000080
                        8000008080000080800000000000000000000000000000000000000000000080
                        8000008080000080800000808000008080000000000000000000000000000080
                        8000008080000080800000808000008080000080800000808000000000000080
                        8000008080000080800000808000008080000080800000808000008080000080
                        800000808000008080000080800000808000}
                      OnDownClick = spinbtnDownClick
                      OnUpClick = spinbtnUpClick
                    end
                    object dt_numletter: TEdit
                      Left = 2
                      Top = 2
                      Width = 73
                      Height = 27
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      Text = '7'
                      ExplicitHeight = 24
                    end
                  end
                end
                object gpnl_responsetype: TGridPanel
                  Left = 102
                  Top = 5
                  Width = 353
                  Height = 72
                  Align = alClient
                  BevelInner = bvLowered
                  ColumnCollection = <
                    item
                      Value = 5.266404481816732000
                    end
                    item
                      Value = 31.577529892508210000
                    end
                    item
                      Value = 31.577866985293420000
                    end
                    item
                      Value = 31.578198640381630000
                    end>
                  ControlCollection = <
                    item
                      Column = 1
                      Control = rbtn_response0
                      Row = 0
                    end
                    item
                      Column = 2
                      Control = rbtn_response1
                      Row = 0
                    end
                    item
                      Column = 3
                      Control = rbtn_response2
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = rbtn_response3
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = rbtn_response4
                      Row = 1
                    end
                    item
                      Column = 3
                      Control = rbtn_response5
                      Row = 1
                    end>
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  RowCollection = <
                    item
                      Value = 50.002001355532660000
                    end
                    item
                      Value = 49.997998644467330000
                    end>
                  TabOrder = 5
                  DesignSize = (
                    353
                    72)
                  object rbtn_response0: TRadioButton
                    Left = 24
                    Top = 9
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #52268#48152#54805
                    TabOrder = 0
                    OnClick = rbtn_response0Click
                  end
                  object rbtn_response1: TRadioButton
                    Tag = 1
                    Left = 135
                    Top = 9
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #49440#53469#54805
                    TabOrder = 1
                    OnClick = rbtn_response0Click
                  end
                  object rbtn_response2: TRadioButton
                    Tag = 2
                    Left = 245
                    Top = 9
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #45233#47568#54805
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -19
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    OnClick = rbtn_response0Click
                  end
                  object rbtn_response3: TRadioButton
                    Tag = 3
                    Left = 24
                    Top = 43
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #47928#51109#54805
                    TabOrder = 3
                    OnClick = rbtn_response0Click
                  end
                  object rbtn_response4: TRadioButton
                    Tag = 4
                    Left = 135
                    Top = 43
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #54869#49888#46020
                    TabOrder = 4
                    OnClick = rbtn_response0Click
                  end
                  object rbtn_response5: TRadioButton
                    Tag = 5
                    Left = 245
                    Top = 43
                    Width = 102
                    Height = 20
                    Anchors = []
                    Caption = #53664#47200#54805
                    TabOrder = 5
                    OnClick = rbtn_response0Click
                  end
                end
                object btn_zoomfix: TButton
                  Left = 1211
                  Top = 5
                  Width = 50
                  Height = 72
                  Align = alClient
                  Caption = 'Zoom '#44256#51221
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 6
                  WordWrap = True
                  OnClick = btn_zoomfixClick
                end
                object btn_ElecPen: TButton
                  Left = 959
                  Top = 5
                  Width = 50
                  Height = 72
                  Align = alClient
                  Caption = 'pen '#49892#54665
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 7
                  WordWrap = True
                  OnClick = btn_ElecPenClick
                end
                object btn_MovieViewOff: TButton
                  Left = 1009
                  Top = 5
                  Width = 50
                  Height = 72
                  Align = alClient
                  Caption = #44053#51032' '#54868#47732
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 8
                  WordWrap = True
                  OnClick = btn_MovieViewOffClick
                end
              end
            end
            object Tab_Layer: TTabSheet
              Caption = #47112#51060#50612' '#44288#47144
              ImageIndex = 4
              object Panel68: TPanel
                Left = 0
                Top = 3
                Width = 1262
                Height = 79
                Align = alBottom
                TabOrder = 0
                object GridPanel26: TGridPanel
                  Left = 1
                  Top = 1
                  Width = 1260
                  Height = 77
                  Align = alClient
                  ColumnCollection = <
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      ColumnSpan = 5
                      Control = Panel70
                      Row = 0
                      RowSpan = 2
                    end
                    item
                      Column = 6
                      ColumnSpan = 4
                      Control = Panel71
                      Row = 0
                      RowSpan = 2
                    end
                    item
                      Column = 11
                      ColumnSpan = 4
                      Control = Panel72
                      Row = 0
                      RowSpan = 2
                    end
                    item
                      Column = 16
                      ColumnSpan = 4
                      Control = Panel73
                      Row = 0
                      RowSpan = 2
                    end>
                  RowCollection = <
                    item
                      Value = 50.000000000000000000
                    end
                    item
                      Value = 50.000000000000000000
                    end>
                  TabOrder = 0
                  object Panel70: TPanel
                    Left = 1
                    Top = 1
                    Width = 314
                    Height = 75
                    Align = alClient
                    BevelInner = bvLowered
                    Color = clMoneyGreen
                    ParentBackground = False
                    TabOrder = 0
                    object GridPanel27: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 310
                      Height = 71
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
                          Column = 1
                          Control = RadioButton2
                          Row = 0
                        end
                        item
                          Column = 2
                          Control = RadioButton3
                          Row = 0
                        end
                        item
                          Column = 3
                          Control = RadioButton4
                          Row = 0
                        end
                        item
                          Column = 4
                          Control = btn_resize
                          Row = 0
                          RowSpan = 2
                        end
                        item
                          Column = 1
                          Control = RadioButton6
                          Row = 1
                        end
                        item
                          Column = 2
                          Control = RadioButton7
                          Row = 1
                        end
                        item
                          Column = 3
                          Control = RadioButton8
                          Row = 1
                        end
                        item
                          Column = 0
                          Control = GridPanel28
                          Row = 0
                          RowSpan = 2
                        end>
                      RowCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 50.000000000000000000
                        end>
                      TabOrder = 0
                      DesignSize = (
                        310
                        71)
                      object RadioButton2: TRadioButton
                        Tag = 1
                        Left = 63
                        Top = 8
                        Width = 60
                        Height = 20
                        Anchors = []
                        Caption = '1/2'#48176
                        TabOrder = 0
                        OnClick = RadioButton2Click
                      end
                      object RadioButton3: TRadioButton
                        Tag = 2
                        Left = 124
                        Top = 8
                        Width = 61
                        Height = 20
                        Anchors = []
                        Caption = '1/4'
                        TabOrder = 1
                        OnClick = RadioButton2Click
                      end
                      object RadioButton4: TRadioButton
                        Tag = 3
                        Left = 186
                        Top = 8
                        Width = 60
                        Height = 20
                        Anchors = []
                        Caption = '10%'#8595
                        TabOrder = 2
                        OnClick = RadioButton2Click
                      end
                      object btn_resize: TButton
                        Left = 247
                        Top = 1
                        Width = 62
                        Height = 69
                        Align = alClient
                        Caption = #53356#44592#51312#51208
                        TabOrder = 3
                        OnClick = btn_resizeClick
                      end
                      object RadioButton6: TRadioButton
                        Tag = 4
                        Left = 63
                        Top = 42
                        Width = 60
                        Height = 20
                        Anchors = []
                        Caption = '2'#48176
                        TabOrder = 4
                        OnClick = RadioButton2Click
                      end
                      object RadioButton7: TRadioButton
                        Tag = 5
                        Left = 124
                        Top = 42
                        Width = 61
                        Height = 20
                        Anchors = []
                        Caption = '4'#48176
                        TabOrder = 5
                        OnClick = RadioButton2Click
                      end
                      object RadioButton8: TRadioButton
                        Tag = 6
                        Left = 186
                        Top = 42
                        Width = 60
                        Height = 20
                        Anchors = []
                        Caption = '10%'#8593
                        TabOrder = 6
                        OnClick = RadioButton2Click
                      end
                      object GridPanel28: TGridPanel
                        Left = 1
                        Top = 1
                        Width = 62
                        Height = 69
                        Align = alClient
                        BevelInner = bvLowered
                        ColumnCollection = <
                          item
                            Value = 100.000000000000000000
                          end>
                        ControlCollection = <
                          item
                            Column = 0
                            Control = RadioButton1
                            Row = 0
                          end
                          item
                            Column = 0
                            Control = RadioButton5
                            Row = 1
                          end>
                        RowCollection = <
                          item
                            Value = 50.000000000000000000
                          end
                          item
                            Value = 50.000000000000000000
                          end>
                        TabOrder = 7
                        DesignSize = (
                          62
                          69)
                        object RadioButton1: TRadioButton
                          Tag = 1
                          Left = 2
                          Top = 9
                          Width = 57
                          Height = 17
                          Anchors = []
                          Caption = #44060#48324
                          TabOrder = 0
                          OnClick = RadioButton1Click
                        end
                        object RadioButton5: TRadioButton
                          Tag = 2
                          Left = 2
                          Top = 42
                          Width = 57
                          Height = 17
                          Anchors = []
                          Caption = #51204#52404
                          TabOrder = 1
                          OnClick = RadioButton1Click
                        end
                      end
                    end
                  end
                  object Panel71: TPanel
                    Left = 378
                    Top = 1
                    Width = 252
                    Height = 75
                    Align = alClient
                    BevelInner = bvLowered
                    Color = clGradientActiveCaption
                    ParentBackground = False
                    TabOrder = 1
                    object GridPanel29: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 248
                      Height = 71
                      Align = alClient
                      BevelInner = bvLowered
                      ColumnCollection = <
                        item
                          Value = 30.000000000000010000
                        end
                        item
                          Value = 39.999999999999990000
                        end
                        item
                          Value = 30.000000000000000000
                        end>
                      ControlCollection = <
                        item
                          Column = 2
                          Control = btn_Flip
                          Row = 0
                          RowSpan = 2
                        end
                        item
                          Column = 1
                          Control = RadioButton11
                          Row = 0
                        end
                        item
                          Column = 1
                          Control = RadioButton12
                          Row = 1
                        end
                        item
                          Column = 0
                          Control = GridPanel30
                          Row = 0
                          RowSpan = 2
                        end>
                      RowCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 50.000000000000000000
                        end>
                      TabOrder = 0
                      DesignSize = (
                        248
                        71)
                      object btn_Flip: TButton
                        Left = 173
                        Top = 2
                        Width = 73
                        Height = 67
                        Align = alClient
                        Caption = #46244#51665#44592
                        TabOrder = 0
                        OnClick = btn_FlipClick
                      end
                      object RadioButton11: TRadioButton
                        Tag = 1
                        Left = 89
                        Top = 10
                        Width = 70
                        Height = 17
                        Anchors = []
                        Caption = #49345#54616
                        TabOrder = 1
                        OnClick = RadioButton11Click
                      end
                      object RadioButton12: TRadioButton
                        Tag = 2
                        Left = 89
                        Top = 44
                        Width = 70
                        Height = 17
                        Anchors = []
                        Caption = #51340#50864
                        TabOrder = 2
                        OnClick = RadioButton11Click
                      end
                      object GridPanel30: TGridPanel
                        Left = 2
                        Top = 2
                        Width = 73
                        Height = 67
                        Align = alClient
                        ColumnCollection = <
                          item
                            Value = 100.000000000000000000
                          end>
                        ControlCollection = <
                          item
                            Column = 0
                            Control = RadioButton9
                            Row = 0
                          end
                          item
                            Column = 0
                            Control = RadioButton10
                            Row = 1
                          end>
                        RowCollection = <
                          item
                            Value = 50.000000000000000000
                          end
                          item
                            Value = 50.000000000000000000
                          end>
                        TabOrder = 3
                        DesignSize = (
                          73
                          67)
                        object RadioButton9: TRadioButton
                          Tag = 1
                          Left = 6
                          Top = 8
                          Width = 60
                          Height = 17
                          Anchors = []
                          Caption = #44060#48324
                          TabOrder = 0
                          OnClick = RadioButton9Click
                        end
                        object RadioButton10: TRadioButton
                          Tag = 2
                          Left = 6
                          Top = 41
                          Width = 60
                          Height = 17
                          Anchors = []
                          Caption = #51204#52404
                          TabOrder = 1
                          Visible = False
                        end
                      end
                    end
                  end
                  object Panel72: TPanel
                    Left = 693
                    Top = 1
                    Width = 251
                    Height = 75
                    Align = alClient
                    BevelInner = bvLowered
                    Color = clAqua
                    ParentBackground = False
                    TabOrder = 2
                    object GridPanel31: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 247
                      Height = 71
                      Align = alClient
                      BevelInner = bvLowered
                      ColumnCollection = <
                        item
                          Value = 30.000000000000010000
                        end
                        item
                          Value = 39.999999999999990000
                        end
                        item
                          Value = 30.000000000000000000
                        end>
                      ControlCollection = <
                        item
                          Column = 2
                          Control = btn_rotate
                          Row = 0
                          RowSpan = 2
                        end
                        item
                          Column = 1
                          Control = RadioButton15
                          Row = 0
                        end
                        item
                          Column = 1
                          Control = RadioButton16
                          Row = 1
                        end
                        item
                          Column = 0
                          Control = GridPanel32
                          Row = 0
                          RowSpan = 2
                        end>
                      RowCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 50.000000000000000000
                        end>
                      TabOrder = 0
                      DesignSize = (
                        247
                        71)
                      object btn_rotate: TButton
                        Left = 172
                        Top = 2
                        Width = 73
                        Height = 67
                        Align = alClient
                        Caption = #46028#47532#44592
                        TabOrder = 0
                        OnClick = btn_rotateClick
                      end
                      object RadioButton15: TRadioButton
                        Tag = 1
                        Left = 79
                        Top = 10
                        Width = 88
                        Height = 17
                        Anchors = []
                        Caption = #49884#44228#48169#54693
                        TabOrder = 1
                        OnClick = RadioButton15Click
                      end
                      object RadioButton16: TRadioButton
                        Tag = 2
                        Left = 79
                        Top = 44
                        Width = 88
                        Height = 17
                        Anchors = []
                        Caption = #49884#44228#48152#45824
                        TabOrder = 2
                        OnClick = RadioButton15Click
                      end
                      object GridPanel32: TGridPanel
                        Left = 2
                        Top = 2
                        Width = 73
                        Height = 67
                        Align = alClient
                        ColumnCollection = <
                          item
                            Value = 100.000000000000000000
                          end>
                        ControlCollection = <
                          item
                            Column = 0
                            Control = RadioButton13
                            Row = 0
                          end
                          item
                            Column = 0
                            Control = RadioButton14
                            Row = 1
                          end>
                        RowCollection = <
                          item
                            Value = 50.000000000000000000
                          end
                          item
                            Value = 50.000000000000000000
                          end>
                        TabOrder = 3
                        DesignSize = (
                          73
                          67)
                        object RadioButton13: TRadioButton
                          Tag = 1
                          Left = 6
                          Top = 7
                          Width = 60
                          Height = 20
                          Anchors = []
                          Caption = #44060#48324
                          TabOrder = 0
                          OnClick = RadioButton13Click
                        end
                        object RadioButton14: TRadioButton
                          Tag = 2
                          Left = 6
                          Top = 39
                          Width = 60
                          Height = 20
                          Anchors = []
                          Caption = #51204#52404
                          TabOrder = 1
                          OnClick = RadioButton13Click
                        end
                      end
                    end
                  end
                  object Panel73: TPanel
                    Left = 1007
                    Top = 1
                    Width = 252
                    Height = 75
                    Align = alClient
                    BevelInner = bvLowered
                    Color = clTeal
                    ParentBackground = False
                    TabOrder = 3
                    object GridPanel33: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 248
                      Height = 71
                      Align = alClient
                      BevelInner = bvLowered
                      ColumnCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 50.000000000000000000
                        end>
                      ControlCollection = <
                        item
                          Column = 0
                          Control = Button1
                          Row = 0
                        end
                        item
                          Column = 1
                          Control = Button4
                          Row = 0
                        end>
                      RowCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 50.000000000000000000
                        end>
                      TabOrder = 0
                      object Button1: TButton
                        Left = 2
                        Top = 2
                        Width = 122
                        Height = 34
                        Align = alClient
                        Caption = #54788#51116' '#47112#51060#50612' '#49325#51228
                        TabOrder = 0
                        OnClick = Button1Click
                      end
                      object Button4: TButton
                        Left = 124
                        Top = 2
                        Width = 122
                        Height = 34
                        Align = alClient
                        Caption = #51204#52404' '#47112#51060#50612' '#49325#51228
                        TabOrder = 1
                        OnClick = Button4Click
                      end
                    end
                  end
                end
              end
            end
            object tab_studentexam: TTabSheet
              Caption = #49688#50629' '#50672#44228' '#54876#46041
              ImageIndex = 5
              object GridPanel34: TGridPanel
                Left = 0
                Top = 0
                Width = 1262
                Height = 82
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
                    Control = Label22
                    Row = 1
                  end
                  item
                    Column = 1
                    ColumnSpan = 2
                    Control = cbb_app
                    Row = 1
                  end
                  item
                    Column = 4
                    Control = cbb_level
                    Row = 1
                  end
                  item
                    Column = 3
                    Control = Label23
                    Row = 1
                  end
                  item
                    Column = 5
                    Control = Label24
                    Row = 1
                  end
                  item
                    Column = 6
                    ColumnSpan = 2
                    Control = Panel35
                    Row = 1
                  end
                  item
                    Column = 8
                    ColumnSpan = 2
                    Control = Panel74
                    Row = 1
                  end>
                RowCollection = <
                  item
                    Value = 25.000000000000000000
                  end
                  item
                    Value = 49.921338918014020000
                  end
                  item
                    Value = 25.078661081985980000
                  end>
                TabOrder = 0
                DesignSize = (
                  1262
                  82)
                object Label22: TLabel
                  Left = 1
                  Top = 31
                  Width = 127
                  Height = 19
                  Alignment = taCenter
                  Anchors = []
                  Caption = #54617#49373' '#54876#46041' '#50545
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cbb_app: TComboBox
                  Left = 156
                  Top = 27
                  Width = 193
                  Height = 27
                  Anchors = []
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  Text = #50545' '#49440#53469
                  Items.Strings = (
                    'kswmathquiz.exe'
                    'kswhanja.exe')
                end
                object cbb_level: TComboBox
                  Left = 506
                  Top = 27
                  Width = 124
                  Height = 27
                  Anchors = []
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  Text = #45800#44228' '#49440#53469
                  Items.Strings = (
                    '1'#45800#44228
                    '2'#45800#44228
                    '3'#45800#44228
                    '4'#45800#44228
                    '5'#45800#44228
                    '6'#45800#44228
                    '7'#45800#44228
                    '8'#45800#44228
                    '9'#45800#44228
                    '10'#45800#44228)
                end
                object Label23: TLabel
                  Left = 421
                  Top = 31
                  Width = 42
                  Height = 19
                  Alignment = taCenter
                  Anchors = []
                  Caption = #45800#44228
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitLeft = 423
                end
                object Label24: TLabel
                  Left = 652
                  Top = 31
                  Width = 84
                  Height = 19
                  Alignment = taCenter
                  Anchors = []
                  Caption = #44536#47353#53076#46300
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitLeft = 662
                end
                object Panel35: TPanel
                  Left = 757
                  Top = 21
                  Width = 252
                  Height = 40
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 2
                  object GridPanel35: TGridPanel
                    Left = 2
                    Top = 2
                    Width = 248
                    Height = 36
                    Align = alClient
                    ColumnCollection = <
                      item
                        Value = 50.000000000000000000
                      end
                      item
                        Value = 50.000000000000000000
                      end>
                    ControlCollection = <
                      item
                        Column = 0
                        Control = rbtn_newcode
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = rbtn_oldcode
                        Row = 0
                      end>
                    RowCollection = <
                      item
                        Value = 100.000000000000000000
                      end>
                    TabOrder = 0
                    DesignSize = (
                      248
                      36)
                    object rbtn_newcode: TRadioButton
                      Left = 22
                      Top = 9
                      Width = 80
                      Height = 17
                      Anchors = []
                      Caption = #49352' '#53076#46300
                      Checked = True
                      TabOrder = 0
                      TabStop = True
                    end
                    object rbtn_oldcode: TRadioButton
                      Left = 135
                      Top = 9
                      Width = 100
                      Height = 17
                      Anchors = []
                      Caption = #44592#51316' '#53076#46300
                      TabOrder = 1
                    end
                  end
                end
                object Panel74: TPanel
                  Left = 1009
                  Top = 21
                  Width = 252
                  Height = 40
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 3
                  object GridPanel36: TGridPanel
                    Left = 2
                    Top = 2
                    Width = 248
                    Height = 36
                    Align = alClient
                    ColumnCollection = <
                      item
                        Value = 50.000000000000000000
                      end
                      item
                        Value = 50.000000000000000000
                      end>
                    ControlCollection = <
                      item
                        Column = 0
                        Control = btn_sActivityOn
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = btn_sActivityOff
                        Row = 0
                      end>
                    RowCollection = <
                      item
                        Value = 100.000000000000000000
                      end>
                    TabOrder = 0
                    object btn_sActivityOn: TButton
                      Left = 1
                      Top = 1
                      Width = 123
                      Height = 34
                      Align = alClient
                      Caption = #54876#46041' '#49884#51089
                      TabOrder = 0
                      OnClick = btn_sActivityOnClick
                    end
                    object btn_sActivityOff: TButton
                      Left = 124
                      Top = 1
                      Width = 123
                      Height = 34
                      Align = alClient
                      Caption = #54876#46041' '#51333#47308
                      Enabled = False
                      TabOrder = 1
                      OnClick = btn_sActivityOffClick
                    end
                  end
                end
              end
            end
          end
        end
        object pnl_view: TPanel
          Left = 232
          Top = 0
          Width = 1042
          Height = 608
          Align = alClient
          BevelInner = bvLowered
          Caption = #49440#49373#45784#51032' '#49688#50629' '#51652#54665#50640' '#46020#50880#51060' '#46104#46020#47197' ......'
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object pnl_web: TPanel
            Left = 2
            Top = 100
            Width = 1138
            Height = 400
            TabOrder = 0
            Visible = False
            object Panel25: TPanel
              Left = 1
              Top = 1
              Width = 1136
              Height = 41
              Align = alTop
              BevelInner = bvLowered
              TabOrder = 0
              object GridPanel16: TGridPanel
                Left = 2
                Top = 2
                Width = 1132
                Height = 37
                Align = alClient
                ColumnCollection = <
                  item
                    Value = 0.794678376704234900
                  end
                  item
                    Value = 9.999999999999995000
                  end
                  item
                    Value = 0.794678376704234900
                  end
                  item
                    Value = 9.999999999999995000
                  end
                  item
                    Value = 67.615964869887310000
                  end
                  item
                    Value = 9.999999999999995000
                  end
                  item
                    Value = 0.794678376704234900
                  end>
                ControlCollection = <
                  item
                    Column = 1
                    Control = btn_back
                    Row = 1
                  end
                  item
                    Column = 3
                    Control = btn_forward
                    Row = 1
                  end
                  item
                    Column = 4
                    Control = cbb_url
                    Row = 1
                  end
                  item
                    Column = 5
                    Control = btn_goUrl
                    Row = 1
                  end>
                RowCollection = <
                  item
                    Value = 5.000000000000000000
                  end
                  item
                    Value = 90.000000000000000000
                  end
                  item
                    Value = 5.000000000000000000
                  end>
                TabOrder = 0
                object btn_back: TButton
                  Left = 10
                  Top = 3
                  Width = 113
                  Height = 31
                  Align = alClient
                  Caption = #46244#47196
                  TabOrder = 0
                  OnClick = btn_backClick
                end
                object btn_forward: TButton
                  Left = 132
                  Top = 3
                  Width = 113
                  Height = 31
                  Align = alClient
                  Caption = #50526#51004#47196
                  TabOrder = 1
                  OnClick = btn_forwardClick
                end
                object cbb_url: TComboBox
                  Left = 245
                  Top = 3
                  Width = 764
                  Height = 31
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -23
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  OnKeyPress = cbb_urlKeyPress
                end
                object btn_goUrl: TButton
                  Left = 1009
                  Top = 3
                  Width = 113
                  Height = 31
                  Align = alClient
                  Caption = #51060#46041
                  TabOrder = 3
                  OnClick = btn_goUrlClick
                end
              end
            end
            object Web_view: TWebBrowser
              Left = 1
              Top = 42
              Width = 1136
              Height = 357
              Align = alClient
              TabOrder = 1
              OnCommandStateChange = Web_viewCommandStateChange
              OnDocumentComplete = Web_viewDocumentComplete
              ExplicitWidth = 1420
              ExplicitHeight = 446
              ControlData = {
                4C000000ED5D0000851D00000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E12620A000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
          object pnl_video: TPanel
            Left = -200
            Top = 296
            Width = 185
            Height = 41
            TabOrder = 1
            Visible = False
            OnDblClick = pnl_videoDblClick
            object VLCPlugin21: TVLCPlugin2
              Left = 1
              Top = 1
              Width = 183
              Height = 39
              Align = alClient
              TabOrder = 0
              OnDblClick = VLCPlugin21DblClick
              ExplicitWidth = 229
              ExplicitHeight = 49
              ControlData = {
                07000000280043006F0075006E007400290003000D0000000800000041007500
                74006F004C006F006F0070000B000000080000004100750074006F0050006C00
                610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
                00000000070000004200610073006500550052004C0008000000000008000000
                4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
                6E00740048006500690067006800740003003A0300000B000000450078007400
                65006E007400570069006400740068000300220F000011000000460075006C00
                6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
                030000004D0052004C0008000000000009000000530074006100720074005400
                69006D0065000300000000000700000054006F006F006C006200610072000B00
                FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
                6C0075006D006500030064000000}
            end
          end
          object pnl_image: TPanel
            Left = -200
            Top = 288
            Width = 185
            Height = 41
            TabOrder = 2
            OnDblClick = pnl_imageDblClick
            object imgEnV_view: TImageEnView
              Left = 1
              Top = 1
              Width = 183
              Height = 39
              Background = clBtnFace
              Touch.GestureManager = GestureManager1
              Touch.InteractiveGestures = [igZoom, igTwoFingerTap, igPressAndTap]
              LayerOptions = [loAllowMultiSelect, loAutoUndoChangesByUser, loAutoPromptForImage, loKeyboardShortcuts, loResizeOnRotate, loDragSelection, loSwapBackgroundProps, loShowRichTextToolbar, loAllowReturnsInRichText, loShowRotationGrip]
              AutoStretch = True
              AutoShrink = True
              OnLayerNotifyEx = imgEnV_viewLayerNotifyEx
              Align = alClient
              TabOrder = 0
            end
          end
          object pnl_LoadList: TPanel
            Left = 2
            Top = 2
            Width = 1038
            Height = 43
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 3
            Visible = False
            object GridPanel24: TGridPanel
              Left = 2
              Top = 2
              Width = 1034
              Height = 39
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
                  Control = Panel53
                  Row = 0
                end
                item
                  Column = 1
                  Control = pnl_v_tName
                  Row = 0
                end
                item
                  Column = 2
                  Control = Panel62
                  Row = 0
                end
                item
                  Column = 3
                  Control = cbb_v_lesson
                  Row = 0
                end
                item
                  Column = 4
                  ColumnSpan = 2
                  Control = Panel63
                  Row = 0
                end
                item
                  Column = 6
                  ColumnSpan = 3
                  Control = cbb_v_title
                  Row = 0
                end
                item
                  Column = 9
                  Control = btn_mListOpen
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object Panel53: TPanel
                Left = 1
                Top = 1
                Width = 103
                Height = 37
                Align = alClient
                BevelInner = bvLowered
                Caption = #49440#49373#45784
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 0
              end
              object pnl_v_tName: TPanel
                Left = 104
                Top = 1
                Width = 103
                Height = 37
                Align = alClient
                BevelInner = bvLowered
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 1
              end
              object Panel62: TPanel
                Left = 207
                Top = 1
                Width = 104
                Height = 37
                Align = alClient
                BevelInner = bvLowered
                Caption = #44368#44284
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 2
              end
              object cbb_v_lesson: TComboBox
                Left = 311
                Top = 1
                Width = 103
                Height = 35
                Align = alClient
                TabOrder = 3
                Text = #49440#53469
                OnChange = cbb_v_lessonChange
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
                  #52285#52404)
              end
              object Panel63: TPanel
                Left = 414
                Top = 1
                Width = 206
                Height = 37
                Align = alClient
                BevelInner = bvLowered
                Caption = #49688#50629' '#51452#51228
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 4
              end
              object cbb_v_title: TComboBox
                Left = 620
                Top = 1
                Width = 310
                Height = 35
                Align = alClient
                TabOrder = 5
                Text = #49440#53469
              end
              object btn_mListOpen: TButton
                Left = 930
                Top = 1
                Width = 103
                Height = 37
                Align = alClient
                Caption = #50676#44592
                TabOrder = 6
                OnClick = btn_mListOpenClick
              end
            end
          end
          object pnl_ppt: TPanel
            Left = 4
            Top = 108
            Width = 1138
            Height = 400
            TabOrder = 4
            Visible = False
          end
        end
        object pnl_materialsViewLeft: TPanel
          Left = 0
          Top = 0
          Width = 225
          Height = 608
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 2
          object Panel55: TPanel
            Left = 2
            Top = 2
            Width = 221
            Height = 47
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object GridPanel14: TGridPanel
              Left = 2
              Top = 2
              Width = 217
              Height = 43
              Align = alClient
              BevelInner = bvLowered
              ColumnCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = btn_mList
                  Row = 0
                end
                item
                  Column = 1
                  Control = btn_viewalldel
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object btn_mList: TButton
                Left = 2
                Top = 2
                Width = 106
                Height = 39
                Align = alClient
                Caption = #49688#50629#51452#51228
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnClick = btn_mListClick
              end
              object btn_viewalldel: TButton
                Left = 108
                Top = 2
                Width = 107
                Height = 39
                Align = alClient
                Caption = #51648#50864#44592
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnClick = btn_viewalldelClick
              end
            end
          end
          object pnl_scrlbox: TPanel
            Left = 2
            Top = 49
            Width = 221
            Height = 516
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 1
            object scrlbox: TScrollBox
              Left = 2
              Top = 2
              Width = 217
              Height = 563
              VertScrollBar.Tracking = True
              TabOrder = 0
              object gpnl_scrlbox: TGridPanel
                Left = 0
                Top = 0
                Width = 213
                Height = 559
                Align = alClient
                Color = clGradientInactiveCaption
                ColumnCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                ControlCollection = <>
                ParentBackground = False
                RowCollection = <
                  item
                    SizeStyle = ssAbsolute
                    Value = 100.000000000000000000
                  end>
                TabOrder = 0
              end
            end
          end
          object Panel64: TPanel
            Left = 2
            Top = 565
            Width = 221
            Height = 41
            Align = alBottom
            TabOrder = 2
            object btn_ShownHide: TButton
              Left = 1
              Top = 1
              Width = 219
              Height = 39
              Align = alClient
              Caption = 'Command Hide'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = btn_ShownHideClick
            end
          end
        end
      end
      object ts_response: TTabSheet
        Caption = #54617#49373' '#51025#45813
        ImageIndex = 2
        object Splitter1: TSplitter
          Left = 193
          Top = 0
          Width = 5
          Height = 725
          ExplicitLeft = 195
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 193
          Height = 725
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 0
          object lb_orderlist: TListBox
            Left = 2
            Top = 2
            Width = 189
            Height = 678
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ItemHeight = 21
            ParentFont = False
            TabOrder = 0
            OnClick = lb_orderlistClick
          end
          object Panel30: TPanel
            Left = 2
            Top = 680
            Width = 189
            Height = 43
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 1
            object btn_responseAnalize: TButton
              Left = 2
              Top = 2
              Width = 185
              Height = 39
              Align = alClient
              Caption = #54617#49373#51025#45813' '#48516#49437
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = btn_responseAnalizeClick
            end
          end
        end
        object Panel10: TPanel
          Left = 198
          Top = 0
          Width = 1076
          Height = 725
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object pc_response: TPageControl
            Left = 2
            Top = 2
            Width = 1072
            Height = 721
            ActivePage = Tab_response
            Align = alClient
            TabOrder = 0
            object Tab_choice: TTabSheet
              Caption = #54617#49373#51025#45813
              TabVisible = False
              object pnl_choice: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 678
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object GridPanel7: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 674
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
                      Column = 1
                      Control = pnl_choiceT1
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = pnl_choiceT2
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = pnl_choicename_3
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = pnl_choicename_2
                      Row = 2
                    end
                    item
                      Column = 2
                      Control = pnl_choicenum_3
                      Row = 3
                    end
                    item
                      Column = 1
                      Control = pnl_choicenum_2
                      Row = 3
                    end
                    item
                      Column = 0
                      Control = pnl_choicenum_1
                      Row = 3
                    end
                    item
                      Column = 3
                      Control = pnl_choiceT3
                      Row = 1
                    end
                    item
                      Column = 4
                      Control = pnl_choiceT4
                      Row = 1
                    end
                    item
                      Column = 3
                      Control = pnl_choicenum_4
                      Row = 3
                    end
                    item
                      Column = 4
                      Control = pnl_choicenum_5
                      Row = 3
                    end
                    item
                      Column = 0
                      Control = pnl_choicename_1
                      Row = 2
                    end
                    item
                      Column = 3
                      Control = pnl_choicename_4
                      Row = 2
                    end
                    item
                      Column = 4
                      Control = pnl_choicename_5
                      Row = 2
                    end
                    item
                      Column = 0
                      Control = pnl_choiceT0
                      Row = 1
                    end>
                  RowCollection = <
                    item
                      Value = 8.584905719934973000
                    end
                    item
                      Value = 14.999999999999990000
                    end
                    item
                      Value = 52.830188560130070000
                    end
                    item
                      Value = 14.999999999999990000
                    end
                    item
                      Value = 8.584905719934973000
                    end>
                  TabOrder = 0
                  object pnl_choiceT1: TPanel
                    Left = 213
                    Top = 59
                    Width = 211
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = '2'#48264
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object pnl_choiceT2: TPanel
                    Left = 424
                    Top = 59
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = '3'#48264
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object pnl_choicename_3: TPanel
                    Left = 424
                    Top = 159
                    Width = 212
                    Height = 356
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    object lbl_choicename_3: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_choicename_2: TPanel
                    Left = 213
                    Top = 159
                    Width = 211
                    Height = 356
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    object lbl_choicename_2: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_choicenum_3: TPanel
                    Left = 424
                    Top = 515
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #49440#53469' : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                  end
                  object pnl_choicenum_2: TPanel
                    Left = 213
                    Top = 515
                    Width = 211
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #49440#53469' : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                  end
                  object pnl_choicenum_1: TPanel
                    Left = 1
                    Top = 515
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #49440#53469' : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                  end
                  object pnl_choiceT3: TPanel
                    Left = 636
                    Top = 59
                    Width = 211
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = '4'#48264
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 7
                  end
                  object pnl_choiceT4: TPanel
                    Left = 847
                    Top = 59
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = '5'#48264
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 8
                  end
                  object pnl_choicenum_4: TPanel
                    Left = 636
                    Top = 515
                    Width = 211
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #49440#53469' : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 9
                  end
                  object pnl_choicenum_5: TPanel
                    Left = 847
                    Top = 515
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #49440#53469' : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 10
                  end
                  object pnl_choicename_1: TPanel
                    Left = 1
                    Top = 159
                    Width = 212
                    Height = 356
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 11
                    object lbl_choicename_1: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_choicename_4: TPanel
                    Left = 636
                    Top = 159
                    Width = 211
                    Height = 356
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 12
                    object lbl_choicename_4: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_choicename_5: TPanel
                    Left = 847
                    Top = 159
                    Width = 212
                    Height = 356
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 13
                    object lbl_choicename_5: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_choiceT0: TPanel
                    Left = 1
                    Top = 59
                    Width = 212
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = '1'#48264
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 14
                  end
                end
              end
            end
            object Tab_conviction: TTabSheet
              Caption = #54617#49373#51025#45813
              ImageIndex = 1
              TabVisible = False
              object pnl_conviction: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 678
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object GridPanel8: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 674
                  Align = alClient
                  ColumnCollection = <
                    item
                      Value = 10.000123331679420000
                    end
                    item
                      Value = 29.999937242130570000
                    end
                    item
                      Value = 29.999959262953290000
                    end
                    item
                      Value = 29.999980163236720000
                    end>
                  ControlCollection = <
                    item
                      Column = 1
                      Control = Panel32
                      Row = 0
                    end
                    item
                      Column = 2
                      Control = Panel33
                      Row = 0
                    end
                    item
                      Column = 2
                      Control = pnl_convic2
                      Row = 1
                    end
                    item
                      Column = 1
                      Control = pnl_convic1
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = pnl_convic5
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = pnl_convic4
                      Row = 2
                    end
                    item
                      Column = 0
                      Control = Panel38
                      Row = 2
                    end
                    item
                      Column = 3
                      Control = Panel39
                      Row = 0
                    end
                    item
                      Column = 3
                      Control = pnl_convic6
                      Row = 2
                    end
                    item
                      Column = 0
                      Control = Panel43
                      Row = 1
                    end
                    item
                      Column = 3
                      Control = pnl_convic3
                      Row = 1
                    end
                    item
                      Column = 0
                      Control = Panel46
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 10.020356298522410000
                    end
                    item
                      Value = 44.986269388585520000
                    end
                    item
                      Value = 44.993374312892070000
                    end>
                  TabOrder = 0
                  object Panel32: TPanel
                    Left = 107
                    Top = 1
                    Width = 317
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #53952#47548#50630#51060
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object Panel33: TPanel
                    Left = 424
                    Top = 1
                    Width = 318
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #50500#47560
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object pnl_convic2: TPanel
                    Left = 424
                    Top = 68
                    Width = 318
                    Height = 303
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    object lbl_convic2: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_convic1: TPanel
                    Left = 107
                    Top = 68
                    Width = 317
                    Height = 303
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    object lbl_convic1: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_convic5: TPanel
                    Left = 424
                    Top = 371
                    Width = 318
                    Height = 302
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    object lbl_convic5: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_convic4: TPanel
                    Left = 107
                    Top = 371
                    Width = 317
                    Height = 302
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                    object lbl_convic4: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object Panel38: TPanel
                    Left = 1
                    Top = 371
                    Width = 106
                    Height = 302
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #50500#45768#45796
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                  end
                  object Panel39: TPanel
                    Left = 742
                    Top = 1
                    Width = 317
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #50612#51788#47732
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 7
                  end
                  object pnl_convic6: TPanel
                    Left = 742
                    Top = 371
                    Width = 317
                    Height = 302
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 8
                    object lbl_convic6: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object Panel43: TPanel
                    Left = 1
                    Top = 68
                    Width = 106
                    Height = 303
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #44536#47111#45796
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 9
                  end
                  object pnl_convic3: TPanel
                    Left = 742
                    Top = 68
                    Width = 317
                    Height = 303
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 10
                    object lbl_convic3: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object Panel46: TPanel
                    Left = 1
                    Top = 1
                    Width = 106
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 11
                  end
                end
              end
            end
            object Tab_response: TTabSheet
              Caption = #51204#52404' '#51025#45813' '#48372#44592
              ImageIndex = 2
              object pnl_response: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 635
                Align = alClient
                BevelInner = bvLowered
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -37
                Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object mm_response: TMemo
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 631
                  Align = alClient
                  Font.Charset = HANGEUL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
              object Panel17: TPanel
                Left = 0
                Top = 635
                Width = 1064
                Height = 43
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 1
                object btn_responseSave: TButton
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 39
                  Align = alClient
                  Caption = #48516#49437#51088#47308' '#51200#51109
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnClick = btn_responseSaveClick
                end
              end
            end
            object Tab_ox: TTabSheet
              Caption = #54617#49373#51025#45813
              ImageIndex = 3
              TabVisible = False
              object pnl_ox: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 678
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object GridPanel6: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 674
                  Align = alClient
                  ColumnCollection = <
                    item
                      Value = 10.000001676427440000
                    end
                    item
                      Value = 39.999997708742100000
                    end
                    item
                      Value = 39.999998938403010000
                    end
                    item
                      Value = 10.000001676427440000
                    end>
                  ControlCollection = <
                    item
                      Column = 1
                      Control = Panel11
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = Panel12
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = pnl_ox_x_name
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = pnl_ox_o_name
                      Row = 2
                    end
                    item
                      Column = 2
                      Control = pnl_ox_x_num
                      Row = 3
                    end
                    item
                      Column = 1
                      Control = pnl_ox_o_num
                      Row = 3
                    end>
                  RowCollection = <
                    item
                      Value = 8.584905719934975000
                    end
                    item
                      Value = 14.999999999999990000
                    end
                    item
                      Value = 52.830188560130070000
                    end
                    item
                      Value = 14.999999999999990000
                    end
                    item
                      Value = 8.584905719934975000
                    end>
                  TabOrder = 0
                  object Panel11: TPanel
                    Left = 107
                    Top = 59
                    Width = 423
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #52268#49457'(0)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object Panel12: TPanel
                    Left = 530
                    Top = 59
                    Width = 423
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #48152#45824'(X)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object pnl_ox_x_name: TPanel
                    Left = 530
                    Top = 159
                    Width = 423
                    Height = 356
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    object lbl_ox_x_name: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_ox_o_name: TPanel
                    Left = 107
                    Top = 159
                    Width = 423
                    Height = 356
                    Align = alClient
                    BevelInner = bvLowered
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    object lbl_ox_o_name: TLabel
                      Left = 2
                      Top = 2
                      Width = 19
                      Height = 35
                      Align = alClient
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlue
                      Font.Height = -35
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      WordWrap = True
                    end
                  end
                  object pnl_ox_x_num: TPanel
                    Left = 530
                    Top = 515
                    Width = 423
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #48152#45824'(X) : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                  end
                  object pnl_ox_o_num: TPanel
                    Left = 107
                    Top = 515
                    Width = 423
                    Height = 100
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #52268#49457'(O) : '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -27
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                  end
                end
              end
            end
            object Tab_sentence: TTabSheet
              Caption = #54617#49373#51025#45813
              ImageIndex = 4
              TabVisible = False
              object pnl_sentence: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 635
                Align = alClient
                BevelInner = bvLowered
                PopupMenu = PopupMenu
                TabOrder = 0
              end
              object Panel18: TPanel
                Left = 0
                Top = 635
                Width = 1064
                Height = 43
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 1
                object GridPanel1: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 39
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
                      Control = btn_removesentence
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = Button9
                      Row = 0
                    end
                    item
                      Column = 2
                      Control = Button10
                      Row = 0
                    end
                    item
                      Column = 3
                      Control = Button12
                      Row = 0
                    end
                    item
                      Column = 4
                      Control = Button13
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 0
                  object btn_removesentence: TButton
                    Left = 1
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #54616#45208#47564' '#44256#47476#44592
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    OnClick = btn_removesentenceClick
                  end
                  object Button9: TButton
                    Left = 213
                    Top = 1
                    Width = 211
                    Height = 37
                    Align = alClient
                    Caption = #51025#45813' '#51333#47308
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    OnClick = btn_quitClick
                  end
                  object Button10: TButton
                    Left = 424
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object Button12: TButton
                    Left = 636
                    Top = 1
                    Width = 211
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                  end
                  object Button13: TButton
                    Left = 847
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                  end
                end
              end
            end
            object Tab_word: TTabSheet
              Caption = #54617#49373#51025#45813
              ImageIndex = 5
              TabVisible = False
              object pnl_word: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 635
                Align = alClient
                BevelInner = bvLowered
                PopupMenu = PopupMenu
                TabOrder = 0
              end
              object Panel34: TPanel
                Left = 0
                Top = 635
                Width = 1064
                Height = 43
                Align = alBottom
                BevelInner = bvLowered
                PopupMenu = PopupMenu_sentence
                TabOrder = 1
                object GridPanel17: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 39
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
                      Control = btn_removeword
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = btn_existone
                      Row = 0
                    end
                    item
                      Column = 2
                      Control = Button7
                      Row = 0
                    end
                    item
                      Column = 3
                      Control = Button8
                      Row = 0
                    end
                    item
                      Column = 4
                      Control = Button11
                      Row = 0
                    end>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 0
                  object btn_removeword: TButton
                    Left = 1
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #54616#45208#47564' '#44256#47476#44592
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    OnClick = btn_removewordClick
                  end
                  object btn_existone: TButton
                    Left = 213
                    Top = 1
                    Width = 211
                    Height = 37
                    Align = alClient
                    Caption = #51025#45813' '#51333#47308
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    OnClick = btn_quitClick
                  end
                  object Button7: TButton
                    Left = 424
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object Button8: TButton
                    Left = 636
                    Top = 1
                    Width = 211
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                  end
                  object Button11: TButton
                    Left = 847
                    Top = 1
                    Width = 212
                    Height = 37
                    Align = alClient
                    Caption = #50696#48708
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                  end
                end
              end
            end
            object Tab_wave: TTabSheet
              Caption = #54617#49373#51025#45813
              ImageIndex = 6
              TabVisible = False
              object pnl_wave: TPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 678
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
              end
            end
            object tab_discuss: TTabSheet
              Caption = #53664#47200#54805
              ImageIndex = 7
              TabVisible = False
              object Panel31: TPanel
                Left = 0
                Top = 632
                Width = 1064
                Height = 46
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 0
                object GridPanel20: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1060
                  Height = 42
                  Align = alClient
                  ColumnCollection = <
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
                    end>
                  ControlCollection = <>
                  RowCollection = <
                    item
                      Value = 100.000000000000000000
                    end>
                  TabOrder = 0
                end
              end
              object GridPanel22: TGridPanel
                Left = 0
                Top = 0
                Width = 1064
                Height = 632
                Align = alClient
                ColumnCollection = <
                  item
                    Value = 12.500000000000010000
                  end
                  item
                    Value = 12.500000000000000000
                  end
                  item
                    Value = 12.500000000000000000
                  end
                  item
                    Value = 12.499999999999990000
                  end
                  item
                    Value = 12.500000000000000000
                  end
                  item
                    Value = 12.500000000000000000
                  end
                  item
                    Value = 12.500000000000000000
                  end
                  item
                    Value = 12.500000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    ColumnSpan = 4
                    Control = Panel40
                    Row = 1
                  end
                  item
                    Column = 4
                    ColumnSpan = 4
                    Control = Panel41
                    Row = 1
                  end
                  item
                    Column = 0
                    ColumnSpan = 4
                    Control = mm_chan
                    Row = 2
                  end
                  item
                    Column = 4
                    ColumnSpan = 4
                    Control = mm_ban
                    Row = 2
                  end
                  item
                    Column = 0
                    Control = Panel42
                    Row = 0
                  end
                  item
                    Column = 1
                    ColumnSpan = 7
                    Control = mm_discusssubject
                    Row = 0
                  end>
                RowCollection = <
                  item
                    Value = 13.950003589314390000
                  end
                  item
                    Value = 7.000000000000001000
                  end
                  item
                    Value = 79.049996410685610000
                  end>
                TabOrder = 1
                object Panel40: TPanel
                  Left = 1
                  Top = 89
                  Width = 531
                  Height = 44
                  Align = alClient
                  BevelInner = bvLowered
                  Caption = #52268#49457
                  Color = clMenuHighlight
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -27
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object Panel41: TPanel
                  Left = 532
                  Top = 89
                  Width = 531
                  Height = 44
                  Align = alClient
                  BevelInner = bvLowered
                  Caption = #48152#45824
                  Color = clRed
                  ParentBackground = False
                  TabOrder = 1
                end
                object mm_chan: TMemo
                  Left = 1
                  Top = 133
                  Width = 531
                  Height = 498
                  Align = alClient
                  ScrollBars = ssVertical
                  TabOrder = 2
                end
                object mm_ban: TMemo
                  Left = 532
                  Top = 133
                  Width = 531
                  Height = 498
                  Align = alClient
                  ScrollBars = ssVertical
                  TabOrder = 3
                end
                object Panel42: TPanel
                  Left = 1
                  Top = 1
                  Width = 133
                  Height = 88
                  Align = alClient
                  BevelInner = bvLowered
                  Caption = #53664#47200#51452#51228
                  TabOrder = 4
                end
                object mm_discusssubject: TMemo
                  Left = 134
                  Top = 1
                  Width = 929
                  Height = 88
                  Align = alClient
                  Color = clGradientInactiveCaption
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -29
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 5
                end
              end
            end
          end
        end
      end
      object ts_Cooperation: TTabSheet
        Caption = #54801#50629' '#47928#49436' '#51089#50629
        ImageIndex = 6
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 725
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object GridPanel13: TGridPanel
            Left = 2
            Top = 2
            Width = 1270
            Height = 721
            Align = alClient
            BevelInner = bvLowered
            ColumnCollection = <
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = btn_sendcooperation
                Row = 13
              end
              item
                Column = 0
                ColumnSpan = 8
                Control = Panel44
                Row = 1
                RowSpan = 12
              end
              item
                Column = 2
                Control = btn_confirm
                Row = 13
              end
              item
                Column = 0
                Control = btn_New
                Row = 13
              end>
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            RowCollection = <
              item
                Value = 7.145334038328342000
              end
              item
                Value = 7.144952514492174000
              end
              item
                Value = 7.144571213425569000
              end
              item
                Value = 7.144190131968369000
              end
              item
                Value = 7.143809213625821000
              end
              item
                Value = 7.143428383458464000
              end
              item
                Value = 7.143047571951428000
              end
              item
                Value = 7.142666728972105000
              end
              item
                Value = 7.142285829318867000
              end
              item
                Value = 7.141904871682307000
              end
              item
                Value = 7.141523873052022000
              end
              item
                Value = 7.141142860676204000
              end
              item
                Value = 7.140761863590435000
              end
              item
                Value = 7.140380905457893000
              end>
            TabOrder = 0
            object btn_sendcooperation: TButton
              Left = 160
              Top = 668
              Width = 158
              Height = 51
              Align = alClient
              Caption = #54617#49373#50640#44172
              TabOrder = 0
              OnClick = btn_sendcooperationClick
            end
            object Panel44: TPanel
              Left = 2
              Top = 53
              Width = 1266
              Height = 615
              Align = alClient
              BevelInner = bvLowered
              Color = clInactiveCaption
              ParentBackground = False
              TabOrder = 1
              object Splitter3: TSplitter
                Left = 217
                Top = 2
                Width = 7
                Height = 611
                ExplicitLeft = 201
                ExplicitHeight = 608
              end
              object Panel52: TPanel
                Left = 2
                Top = 2
                Width = 215
                Height = 611
                Align = alLeft
                TabOrder = 0
                object lb_cooplist: TListBox
                  Left = 1
                  Top = 42
                  Width = 213
                  Height = 568
                  Align = alClient
                  ItemHeight = 24
                  TabOrder = 0
                  OnClick = lb_cooplistClick
                end
                object Panel56: TPanel
                  Left = 1
                  Top = 1
                  Width = 213
                  Height = 41
                  Align = alTop
                  Caption = #51652#54665#51473#51064' '#47928#49436
                  TabOrder = 1
                end
              end
              object Panel54: TPanel
                Left = 224
                Top = 2
                Width = 1040
                Height = 611
                Align = alClient
                TabOrder = 1
                object IERdt_cooperation: TIERichEdit
                  Left = 1
                  Top = 1
                  Width = 1038
                  Height = 609
                  AutoToolbar = True
                  RTFText = 
                    '{\rtf1\ansi\deff0\nouicompat{\fonttbl{\f0\fnil\fcharset129 \'#39'b1\' +
                    #39'bc\'#39'b8\'#39'b2\'#39'c3\'#39'bc;}}'#13#10'{\*\generator Riched20 10.0.18362}\viewk' +
                    'ind4\uc1 '#13#10'\pard\b\f0\fs32\lang1042\par'#13#10'}'#13#10#0
                  Align = alClient
                  Font.Charset = HANGEUL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnChange = IERchdtTChange
                end
              end
            end
            object btn_confirm: TButton
              Left = 318
              Top = 668
              Width = 159
              Height = 51
              Align = alClient
              Caption = #54869#51221#54616#44592
              TabOrder = 2
              OnClick = btn_confirmClick
            end
            object btn_New: TButton
              Left = 2
              Top = 668
              Width = 158
              Height = 51
              Align = alClient
              Caption = #49352#47196' '#51089#49457
              Enabled = False
              TabOrder = 3
              OnClick = btn_NewClick
            end
          end
        end
      end
      object ts_inapp: TTabSheet
        Caption = 'In App'
        ImageIndex = 3
        object pnl_inapp: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 725
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object pnl_inappfix: TPanel
            Left = 2
            Top = 57
            Width = 1270
            Height = 666
            Align = alClient
            TabOrder = 0
          end
          object pnl_inappbutton: TPanel
            Left = 2
            Top = 2
            Width = 1270
            Height = 55
            Align = alTop
            TabOrder = 1
            object ScrlBx_inapp: TScrollBox
              Left = 0
              Top = -2
              Width = 1089
              Height = 51
              TabOrder = 0
              object gpnl_inapp: TGridPanel
                Left = 0
                Top = 0
                Width = 1085
                Height = 47
                Align = alClient
                ColumnCollection = <
                  item
                    Value = 50.000000000000000000
                  end
                  item
                    Value = 50.000000000000000000
                  end>
                ControlCollection = <>
                RowCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                TabOrder = 0
              end
            end
          end
        end
      end
      object ts_chatteacher: TTabSheet
        Caption = #52292#54021' '#49688#50629
        ImageIndex = 4
        object Panel45: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 725
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object GridPanel9: TGridPanel
            Left = 2
            Top = 2
            Width = 1270
            Height = 721
            Align = alClient
            ColumnCollection = <
              item
                Value = 65.000000000000000000
              end
              item
                Value = 35.000000000000010000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = GroupBox1
                Row = 0
                RowSpan = 2
              end
              item
                Column = 0
                Control = pc_chatbottom
                Row = 2
              end
              item
                Column = 0
                Control = pc_teacher
                Row = 0
              end
              item
                Column = 0
                Control = GroupBox6
                Row = 1
              end
              item
                Column = 1
                Control = gpnl_command
                Row = 2
              end>
            RowCollection = <
              item
                Value = 59.999999999999990000
              end
              item
                Value = 20.000000000000010000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 825
              Top = 1
              Width = 444
              Height = 575
              Align = alClient
              Caption = #54617#49373' '#52280#50668' '#45236#50857
              TabOrder = 0
              object mm_chat: TMemo
                Left = 2
                Top = 29
                Width = 440
                Height = 544
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object pc_chatbottom: TPageControl
              Left = 1
              Top = 576
              Width = 824
              Height = 144
              ActivePage = Tab_chat
              Align = alClient
              TabOrder = 1
              object Tab_chat: TTabSheet
                Caption = #44368#49324#48156#47928
                object Panel47: TPanel
                  Left = 0
                  Top = 0
                  Width = 816
                  Height = 101
                  Align = alClient
                  BevelInner = bvLowered
                  Color = clGradientActiveCaption
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -24
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                  object GridPanel10: TGridPanel
                    Left = 2
                    Top = 2
                    Width = 812
                    Height = 97
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
                        Control = Label15
                        Row = 0
                      end
                      item
                        Column = 1
                        ColumnSpan = 8
                        Control = dt_tchat
                        Row = 0
                      end
                      item
                        Column = 9
                        Control = btn_send_tchat
                        Row = 0
                      end>
                    RowCollection = <
                      item
                        Value = 100.000000000000000000
                      end>
                    TabOrder = 0
                    DesignSize = (
                      812
                      97)
                    object Label15: TLabel
                      Left = 20
                      Top = 40
                      Width = 43
                      Height = 16
                      Anchors = []
                      Caption = #48156' '#47928
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitLeft = 22
                    end
                    object dt_tchat: TEdit
                      Left = 122
                      Top = 36
                      Width = 568
                      Height = 24
                      Anchors = []
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      OnKeyPress = dt_tchatKeyPress
                    end
                    object btn_send_tchat: TButton
                      Left = 733
                      Top = 32
                      Width = 75
                      Height = 33
                      Anchors = []
                      Caption = #48372#45236#44592
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                      OnClick = btn_send_tchatClick
                    end
                  end
                end
              end
              object Tab_gongu: TTabSheet
                Caption = #51088#47308#51228#49884
                ImageIndex = 1
                object Panel48: TPanel
                  Left = 0
                  Top = 0
                  Width = 816
                  Height = 101
                  Align = alClient
                  BevelInner = bvLowered
                  Color = clGradientActiveCaption
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -24
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                  object GridPanel11: TGridPanel
                    Left = 2
                    Top = 2
                    Width = 812
                    Height = 97
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
                        Control = Label16
                        Row = 0
                      end
                      item
                        Column = 1
                        ColumnSpan = 8
                        Control = dt_gonguImg
                        Row = 0
                      end
                      item
                        Column = 9
                        Control = btn_sendImg
                        Row = 0
                      end
                      item
                        Column = 0
                        Control = Label17
                        Row = 1
                      end
                      item
                        Column = 1
                        ColumnSpan = 8
                        Control = dt_gonguMovie
                        Row = 1
                      end
                      item
                        Column = 9
                        Control = btn_sendMovie
                        Row = 1
                      end>
                    RowCollection = <
                      item
                        Value = 50.000000000000000000
                      end
                      item
                        Value = 50.000000000000000000
                      end>
                    TabOrder = 0
                    DesignSize = (
                      812
                      97)
                    object Label16: TLabel
                      Left = 7
                      Top = 17
                      Width = 68
                      Height = 16
                      Anchors = []
                      Caption = #44536#47548#51088#47308
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitLeft = 14
                      ExplicitTop = 16
                    end
                    object dt_gonguImg: TEdit
                      Left = 122
                      Top = 13
                      Width = 568
                      Height = 24
                      Anchors = []
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      OnClick = dt_gonguImgClick
                    end
                    object btn_sendImg: TButton
                      Left = 733
                      Top = 9
                      Width = 75
                      Height = 32
                      Anchors = []
                      Caption = #48372#45236#44592
                      Enabled = False
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                      OnClick = btn_sendImgClick
                    end
                    object Label17: TLabel
                      Left = 7
                      Top = 64
                      Width = 68
                      Height = 16
                      Anchors = []
                      Caption = #50689#49345#51088#47308
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitLeft = 14
                      ExplicitTop = 62
                    end
                    object dt_gonguMovie: TEdit
                      Left = 122
                      Top = 60
                      Width = 568
                      Height = 24
                      Anchors = []
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 2
                      OnChange = dt_gonguMovieChange
                    end
                    object btn_sendMovie: TButton
                      Left = 733
                      Top = 60
                      Width = 75
                      Height = 25
                      Anchors = []
                      Caption = #48372#45236#44592
                      Enabled = False
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 3
                      OnClick = btn_sendMovieClick
                    end
                  end
                end
              end
              object Tab_ChatAttendance: TTabSheet
                Caption = #52636#49437#54869#51064
                ImageIndex = 2
                object mm_ChatAttendance: TMemo
                  Left = 0
                  Top = 0
                  Width = 816
                  Height = 101
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object pc_teacher: TPageControl
              Left = 1
              Top = 1
              Width = 824
              Height = 431
              ActivePage = Tab_teach
              Align = alClient
              Anchors = []
              TabOrder = 2
              OnChange = pc_teacherChange
              object Tab_teach: TTabSheet
                Caption = #52292#54021#49688#50629#48169
                object Panel49: TPanel
                  Left = 0
                  Top = 0
                  Width = 816
                  Height = 388
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 0
                  object Panel50: TPanel
                    Left = 2
                    Top = 2
                    Width = 812
                    Height = 47
                    Align = alTop
                    BevelInner = bvLowered
                    Color = clGradientActiveCaption
                    ParentBackground = False
                    TabOrder = 0
                    object Button2: TButton
                      Left = 169
                      Top = 2
                      Width = 112
                      Height = 43
                      Align = alLeft
                      Caption = #50696#48708'2'
                      Enabled = False
                      TabOrder = 0
                    end
                    object btn_attention: TButton
                      Left = 2
                      Top = 2
                      Width = 167
                      Height = 43
                      Align = alLeft
                      Caption = #49440#49373#45784' '#47568#50432' '#51069#44592
                      Enabled = False
                      TabOrder = 1
                      OnClick = btn_attentionClick
                    end
                  end
                  object GroupBox5: TGroupBox
                    Left = 2
                    Top = 49
                    Width = 812
                    Height = 337
                    Align = alClient
                    Caption = #54617#49373#50640#44172' '#48372#45244' '#51088#47308'('#44536#47548', '#46041#50689#49345')'
                    TabOrder = 1
                    object pnl_img: TPanel
                      Left = 2
                      Top = 29
                      Width = 808
                      Height = 306
                      Align = alClient
                      TabOrder = 0
                      Visible = False
                      object timgenv: TImageEnView
                        Left = 1
                        Top = 1
                        Width = 806
                        Height = 304
                        Background = clBtnFace
                        AutoStretch = True
                        AutoShrink = True
                        Align = alClient
                        TabOrder = 0
                      end
                    end
                    object pnl_movie: TPanel
                      Left = 2
                      Top = 29
                      Width = 808
                      Height = 306
                      Align = alClient
                      BevelInner = bvLowered
                      TabOrder = 1
                      Visible = False
                      object tWeb: TWebBrowser
                        Left = 2
                        Top = 2
                        Width = 804
                        Height = 302
                        Align = alClient
                        TabOrder = 0
                        ExplicitWidth = 790
                        ControlData = {
                          4C00000019530000361F00000000000000000000000000000000000000000000
                          000000004C000000000000000000000001000000E0D057007335CF11AE690800
                          2B2E126208000000000000004C0000000114020000000000C000000000000046
                          8000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000100000000000000000000000000000000000000}
                      end
                    end
                  end
                end
              end
              object Tab_ClassHomet: TTabSheet
                Caption = #54617#44553#54856#54168#51060#51648
                ImageIndex = 1
                object Panel51: TPanel
                  Left = 0
                  Top = 0
                  Width = 816
                  Height = 388
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 0
                  object WebClassHomeT: TWebBrowser
                    Left = 2
                    Top = 2
                    Width = 812
                    Height = 384
                    Align = alClient
                    TabOrder = 0
                    ExplicitWidth = 798
                    ControlData = {
                      4C000000EC530000B02700000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E126208000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
              end
            end
            object GroupBox6: TGroupBox
              Left = 1
              Top = 432
              Width = 824
              Height = 144
              Align = alClient
              Caption = #44368#49324' '#48156#47928' '#47785#47197' '
              TabOrder = 3
              object mm_myorder: TMemo
                Left = 2
                Top = 29
                Width = 820
                Height = 113
                Align = alClient
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object gpnl_command: TGridPanel
              Left = 825
              Top = 576
              Width = 444
              Height = 144
              Align = alClient
              ColumnCollection = <
                item
                  Value = 33.361072706562340000
                end
                item
                  Value = 33.326922443380470000
                end
                item
                  Value = 33.312004850057190000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = btn_ChatAttendanceconfirm
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              TabOrder = 4
              object btn_ChatAttendanceconfirm: TButton
                Left = 1
                Top = 1
                Width = 147
                Height = 71
                Align = alClient
                Caption = #52636#49437' '#54869#51064
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnClick = btn_ChatAttendanceconfirmClick
              end
            end
          end
        end
      end
      object ts_config: TTabSheet
        Caption = #49444#51221'&&'#46321#47197
        ImageIndex = 7
        object pnl_config: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 725
          Align = alClient
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object pc_config: TPageControl
            Left = 1
            Top = 1
            Width = 1272
            Height = 723
            ActivePage = ts_MakeList
            Align = alClient
            TabOrder = 0
            OnChange = pc_configChange
            object ts_MakeList: TTabSheet
              Caption = #49688#50629#51088#47308#47785#47197#47564#46308#44592
              object GridPanel18: TGridPanel
                Left = 0
                Top = 0
                Width = 1264
                Height = 680
                Align = alClient
                ColumnCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    Control = Panel13
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = pnl_previewLeft
                    Row = 1
                  end>
                RowCollection = <
                  item
                    SizeStyle = ssAbsolute
                    Value = 42.000000000000000000
                  end
                  item
                    Value = 100.000000000000000000
                  end>
                TabOrder = 0
                object Panel13: TPanel
                  Left = 1
                  Top = 1
                  Width = 1262
                  Height = 42
                  Align = alClient
                  BevelInner = bvLowered
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object GridPanel19: TGridPanel
                    Left = 2
                    Top = 2
                    Width = 1258
                    Height = 38
                    Align = alClient
                    BevelInner = bvLowered
                    ColumnCollection = <
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end
                      item
                        Value = 5.000000000000000000
                      end>
                    ControlCollection = <
                      item
                        Column = 0
                        Control = Panel14
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = cbb_dl_grade
                        Row = 0
                      end
                      item
                        Column = 2
                        Control = Panel15
                        Row = 0
                      end
                      item
                        Column = 3
                        Control = cbb_dl_lesson
                        Row = 0
                      end
                      item
                        Column = 4
                        Control = Panel16
                        Row = 0
                      end
                      item
                        Column = 12
                        ColumnSpan = 2
                        Control = Panel19
                        Row = 0
                      end
                      item
                        Column = 14
                        ColumnSpan = 5
                        Control = dt_dl_filename
                        Row = 0
                      end
                      item
                        Column = 19
                        Control = btn_dl_add
                        Row = 0
                      end
                      item
                        Column = 5
                        ColumnSpan = 5
                        Control = cbb_dl_title
                        Row = 0
                      end
                      item
                        Column = 10
                        Control = Panel60
                        Row = 0
                      end
                      item
                        Column = 11
                        Control = cbb_dl_pattern
                        Row = 0
                      end>
                    RowCollection = <
                      item
                        Value = 100.000000000000000000
                      end>
                    TabOrder = 0
                    object Panel14: TPanel
                      Left = 2
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      BevelInner = bvLowered
                      Caption = #54617#45380
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 0
                    end
                    object cbb_dl_grade: TComboBox
                      Left = 65
                      Top = 2
                      Width = 62
                      Height = 32
                      Align = alClient
                      TabOrder = 1
                      Text = #49440#53469
                      Items.Strings = (
                        #44277#53685
                        '1'
                        '2'
                        '3'
                        '4'
                        '5'
                        '6')
                    end
                    object Panel15: TPanel
                      Left = 127
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      BevelInner = bvLowered
                      Caption = #44368#44284
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 2
                    end
                    object cbb_dl_lesson: TComboBox
                      Left = 190
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      TabOrder = 3
                      Text = #49440#53469
                      OnChange = cbb_dl_lessonChange
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
                        #52285#52404)
                    end
                    object Panel16: TPanel
                      Left = 253
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      BevelInner = bvLowered
                      Caption = #51228#47785
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 4
                    end
                    object Panel19: TPanel
                      Left = 754
                      Top = 2
                      Width = 126
                      Height = 34
                      Align = alClient
                      BevelInner = bvLowered
                      Caption = #51088#47308#44221#47196
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 5
                    end
                    object dt_dl_filename: TEdit
                      Left = 880
                      Top = 2
                      Width = 313
                      Height = 34
                      Align = alClient
                      TabOrder = 6
                      OnClick = dt_dl_filename1Click
                      ExplicitHeight = 32
                    end
                    object btn_dl_add: TButton
                      Left = 1193
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      Caption = #52628#44032
                      TabOrder = 7
                      OnClick = btn_dl_add1Click
                    end
                    object cbb_dl_title: TComboBox
                      Left = 316
                      Top = 2
                      Width = 313
                      Height = 34
                      Align = alClient
                      TabOrder = 8
                      Text = #49440#53469' '#46608#45716' '#51077#47141
                      OnChange = cbb_dl_titleChange
                    end
                    object Panel60: TPanel
                      Left = 629
                      Top = 2
                      Width = 63
                      Height = 34
                      Align = alClient
                      BevelInner = bvLowered
                      Caption = #50976#54805
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 9
                    end
                    object cbb_dl_pattern: TComboBox
                      Left = 692
                      Top = 2
                      Width = 62
                      Height = 34
                      Align = alClient
                      TabOrder = 10
                      Text = #49440#53469
                      Items.Strings = (
                        'video'
                        'image'
                        'ppt'
                        'youtube'
                        'web')
                    end
                  end
                end
                object pnl_previewLeft: TPanel
                  Left = 1
                  Top = 43
                  Width = 1262
                  Height = 636
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 1
                  object Splitter4: TSplitter
                    Left = 222
                    Top = 2
                    Width = 5
                    Height = 632
                    ExplicitLeft = 202
                  end
                  object pnl_prevewlist: TPanel
                    Left = 2
                    Top = 2
                    Width = 220
                    Height = 632
                    Align = alLeft
                    BevelInner = bvLowered
                    TabOrder = 0
                    object Panel22: TPanel
                      Left = 2
                      Top = 2
                      Width = 216
                      Height = 47
                      Align = alTop
                      BevelInner = bvLowered
                      TabOrder = 0
                      object btn_previewalldel: TButton
                        Left = 2
                        Top = 2
                        Width = 212
                        Height = 43
                        Align = alClient
                        Caption = #47784#46160' '#51648#50864#44592
                        TabOrder = 0
                        OnClick = btn_previewalldelClick
                      end
                    end
                    object Panel23: TPanel
                      Left = 2
                      Top = 49
                      Width = 216
                      Height = 581
                      Align = alClient
                      BevelInner = bvLowered
                      TabOrder = 1
                      object lb_preview: TListBox
                        Left = 2
                        Top = 2
                        Width = 212
                        Height = 534
                        Align = alClient
                        ItemHeight = 27
                        TabOrder = 0
                        OnDblClick = lb_previewDblClick
                        OnKeyPress = lb_previewKeyPress
                      end
                      object Panel20: TPanel
                        Left = 2
                        Top = 536
                        Width = 212
                        Height = 43
                        Align = alBottom
                        TabOrder = 1
                        object BitBtn_del: TBitBtn
                          Left = 76
                          Top = 1
                          Width = 68
                          Height = 41
                          Align = alClient
                          Caption = #49325#51228
                          TabOrder = 0
                          OnClick = BitBtn_delClick
                        end
                        object BitBtn_dn: TBitBtn
                          Left = 144
                          Top = 1
                          Width = 67
                          Height = 41
                          Align = alRight
                          Caption = #50500#47000
                          TabOrder = 1
                          OnClick = BitBtn_dnClick
                        end
                        object BitBtn_up: TBitBtn
                          Left = 1
                          Top = 1
                          Width = 75
                          Height = 41
                          Align = alLeft
                          Caption = #50948
                          TabOrder = 2
                          OnClick = BitBtn_upClick
                        end
                      end
                    end
                  end
                  object Panel36: TPanel
                    Left = 227
                    Top = 2
                    Width = 1033
                    Height = 632
                    Align = alClient
                    BevelInner = bvLowered
                    TabOrder = 1
                    object pnl_previewtitle: TPanel
                      Left = 2
                      Top = 2
                      Width = 1029
                      Height = 47
                      Align = alTop
                      Caption = #44368#49688#51088#47308' '#47785#47197' '#49828#53356#47549#53944
                      TabOrder = 0
                      object btn_scriptsave: TButton
                        Left = 920
                        Top = 1
                        Width = 108
                        Height = 45
                        Align = alRight
                        Caption = #51200#51109
                        TabOrder = 0
                        OnClick = btn_scriptsaveClick
                      end
                      object btn_youtubeview: TButton
                        Left = 145
                        Top = 1
                        Width = 136
                        Height = 45
                        Align = alLeft
                        Caption = 'Youtube'#44160#49353
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -21
                        Font.Name = #44404#47548#52404
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 1
                        OnClick = btn_youtubeviewClick
                      end
                      object btn_scriptview: TButton
                        Left = 1
                        Top = 1
                        Width = 144
                        Height = 45
                        Align = alLeft
                        Caption = #49828#53356#47549#53944#48372#44592
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -21
                        Font.Name = #44404#47548#52404
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 2
                        OnClick = btn_scriptviewClick
                      end
                      object btn_WebSearch: TButton
                        Left = 828
                        Top = 1
                        Width = 92
                        Height = 45
                        Align = alRight
                        Caption = #50937' '#44160#49353
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -21
                        Font.Name = #44404#47548#52404
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 3
                        OnClick = btn_WebSearchClick
                      end
                    end
                    object pnl_makelist: TPanel
                      Left = 2
                      Top = 49
                      Width = 1029
                      Height = 539
                      Align = alClient
                      TabOrder = 1
                      object pnl_youtube: TPanel
                        Left = 0
                        Top = 0
                        Width = 185
                        Height = 41
                        BevelInner = bvLowered
                        TabOrder = 0
                        object Web_preview: TWebBrowser
                          Left = 2
                          Top = 2
                          Width = 181
                          Height = 37
                          Align = alClient
                          TabOrder = 0
                          ExplicitLeft = -4
                          ExplicitTop = -2
                          ControlData = {
                            4C000000B5120000D30300000000000000000000000000000000000000000000
                            000000004C000000000000000000000001000000E0D057007335CF11AE690800
                            2B2E12620A000000000000004C0000000114020000000000C000000000000046
                            8000000000000000000000000000000000000000000000000000000000000000
                            00000000000000000100000000000000000000000000000000000000}
                        end
                      end
                      object pnl_script: TPanel
                        Left = 0
                        Top = 0
                        Width = 185
                        Height = 41
                        TabOrder = 1
                        object mm_scripts: TMemo
                          Left = 1
                          Top = 1
                          Width = 183
                          Height = 39
                          Align = alClient
                          TabOrder = 0
                          WordWrap = False
                        end
                      end
                      object pnl_rWeb: TPanel
                        Left = -9
                        Top = 100
                        Width = 1138
                        Height = 400
                        TabOrder = 2
                        Visible = False
                        object Panel69: TPanel
                          Left = 1
                          Top = 1
                          Width = 1136
                          Height = 41
                          Align = alTop
                          BevelInner = bvLowered
                          TabOrder = 0
                          object GridPanel25: TGridPanel
                            Left = 2
                            Top = 2
                            Width = 1132
                            Height = 37
                            Align = alClient
                            ColumnCollection = <
                              item
                                Value = 0.794678376704234900
                              end
                              item
                                Value = 9.999999999999995000
                              end
                              item
                                Value = 0.794678376704234900
                              end
                              item
                                Value = 9.999999999999995000
                              end
                              item
                                Value = 67.615964869887310000
                              end
                              item
                                Value = 9.999999999999995000
                              end
                              item
                                Value = 0.794678376704234900
                              end>
                            ControlCollection = <
                              item
                                Column = 1
                                Control = btn_sback
                                Row = 1
                              end
                              item
                                Column = 3
                                Control = btn_sforword
                                Row = 1
                              end
                              item
                                Column = 4
                                Control = cbb_surl
                                Row = 1
                              end
                              item
                                Column = 5
                                Control = btn_gosUrl
                                Row = 1
                              end>
                            RowCollection = <
                              item
                                Value = 5.000000000000000000
                              end
                              item
                                Value = 90.000000000000000000
                              end
                              item
                                Value = 5.000000000000000000
                              end>
                            TabOrder = 0
                            object btn_sback: TButton
                              Left = 10
                              Top = 3
                              Width = 113
                              Height = 31
                              Align = alClient
                              Caption = #46244#47196
                              TabOrder = 0
                              OnClick = btn_sbackClick
                            end
                            object btn_sforword: TButton
                              Left = 132
                              Top = 3
                              Width = 113
                              Height = 31
                              Align = alClient
                              Caption = #50526#51004#47196
                              TabOrder = 1
                              OnClick = btn_sforwordClick
                            end
                            object cbb_surl: TComboBox
                              Left = 245
                              Top = 3
                              Width = 764
                              Height = 31
                              Align = alClient
                              Font.Charset = ANSI_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -23
                              Font.Name = #44404#47548#52404
                              Font.Style = [fsBold]
                              ParentFont = False
                              TabOrder = 2
                              OnKeyPress = cbb_urlKeyPress
                            end
                            object btn_gosUrl: TButton
                              Left = 1009
                              Top = 3
                              Width = 113
                              Height = 31
                              Align = alClient
                              Caption = #51060#46041
                              TabOrder = 3
                              OnClick = btn_gosUrlClick
                            end
                          end
                        end
                        object Web_search: TWebBrowser
                          Left = 1
                          Top = 42
                          Width = 1136
                          Height = 357
                          Align = alClient
                          TabOrder = 1
                          OnCommandStateChange = Web_viewCommandStateChange
                          OnDocumentComplete = Web_viewDocumentComplete
                          ExplicitLeft = 4
                          ControlData = {
                            4C00000069750000E62400000000000000000000000000000000000000000000
                            000000004C000000000000000000000001000000E0D057007335CF11AE690800
                            2B2E12620A000000000000004C0000000114020000000000C000000000000046
                            8000000000000000000000000000000000000000000000000000000000000000
                            00000000000000000100000000000000000000000000000000000000}
                        end
                      end
                    end
                    object pnl_materialListSave: TPanel
                      Left = 2
                      Top = 588
                      Width = 1029
                      Height = 42
                      Align = alBottom
                      BevelInner = bvLowered
                      TabOrder = 2
                      object GridPanel23: TGridPanel
                        Left = 2
                        Top = 2
                        Width = 1025
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
                            Control = Panel59
                            Row = 0
                          end
                          item
                            Column = 1
                            Control = Panel61
                            Row = 0
                          end
                          item
                            Column = 2
                            Control = pnl_e_tName
                            Row = 0
                          end
                          item
                            Column = 3
                            Control = cbb_e_lesson
                            Row = 0
                          end
                          item
                            Column = 4
                            Control = Panel65
                            Row = 0
                          end
                          item
                            Column = 5
                            ColumnSpan = 4
                            Control = cbb_e_title
                            Row = 0
                          end
                          item
                            Column = 9
                            Control = btn_scriptopen
                            Row = 0
                          end>
                        RowCollection = <
                          item
                            Value = 100.000000000000000000
                          end>
                        TabOrder = 0
                        object Panel59: TPanel
                          Left = 1
                          Top = 1
                          Width = 102
                          Height = 36
                          Align = alClient
                          BevelInner = bvLowered
                          Caption = #47785#47197#50676#44592
                          Color = clSkyBlue
                          ParentBackground = False
                          TabOrder = 0
                        end
                        object Panel61: TPanel
                          Left = 103
                          Top = 1
                          Width = 103
                          Height = 36
                          Align = alClient
                          BevelInner = bvLowered
                          Caption = #44368#44284
                          Color = clSkyBlue
                          ParentBackground = False
                          TabOrder = 1
                        end
                        object pnl_e_tName: TPanel
                          Left = 206
                          Top = 1
                          Width = 102
                          Height = 36
                          Align = alClient
                          BevelInner = bvLowered
                          Color = clSkyBlue
                          ParentBackground = False
                          TabOrder = 2
                        end
                        object cbb_e_lesson: TComboBox
                          Left = 308
                          Top = 1
                          Width = 102
                          Height = 35
                          Align = alClient
                          TabOrder = 3
                          Text = #49440#53469
                          OnChange = cbb_e_lessonChange
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
                            #52285#52404)
                        end
                        object Panel65: TPanel
                          Left = 410
                          Top = 1
                          Width = 102
                          Height = 36
                          Align = alClient
                          BevelInner = bvLowered
                          Caption = #49688#50629#51452#51228
                          Color = clSkyBlue
                          ParentBackground = False
                          TabOrder = 4
                        end
                        object cbb_e_title: TComboBox
                          Left = 512
                          Top = 1
                          Width = 410
                          Height = 36
                          Align = alClient
                          TabOrder = 5
                          Text = #49440#53469
                        end
                        object btn_scriptopen: TButton
                          Left = 922
                          Top = 1
                          Width = 102
                          Height = 36
                          Align = alClient
                          Caption = #50676#44592
                          TabOrder = 6
                          OnClick = btn_scriptopenClick
                        end
                      end
                    end
                  end
                end
              end
            end
            object ts_DataRegist: TTabSheet
              Caption = #49688#50629#51088#47308' '#46321#47197
              ImageIndex = 3
              object pnl_regist: TPanel
                Left = 0
                Top = 0
                Width = 1264
                Height = 680
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object Splitter5: TSplitter
                  Left = 250
                  Top = 2
                  Width = 5
                  Height = 676
                  ExplicitHeight = 733
                end
                object pnl_r_left: TPanel
                  Left = 2
                  Top = 2
                  Width = 248
                  Height = 676
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  BevelInner = bvLowered
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = #44404#47548#52404
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object Splitter6: TSplitter
                    Left = 2
                    Top = 233
                    Width = 244
                    Height = 5
                    Cursor = crVSplit
                    Align = alTop
                    ExplicitTop = 328
                  end
                  object Panel21: TPanel
                    Left = 2
                    Top = 632
                    Width = 244
                    Height = 42
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alBottom
                    BevelInner = bvLowered
                    TabOrder = 0
                    object btn_fileerase: TButton
                      Left = 2
                      Top = 2
                      Width = 240
                      Height = 38
                      Margins.Left = 2
                      Margins.Top = 2
                      Margins.Right = 2
                      Margins.Bottom = 2
                      Align = alClient
                      Caption = #54028#51068' '#49325#51228
                      TabOrder = 0
                    end
                  end
                  object IEFolderTree1: TIEFolderTree
                    Left = 2
                    Top = 2
                    Width = 244
                    Height = 231
                    AttachedFileList = IEFLB_regist
                    ShowLines = True
                    ShowRoot = True
                    Align = alTop
                    Indent = 19
                    TabOrder = 1
                  end
                  object Panel58: TPanel
                    Left = 2
                    Top = 238
                    Width = 244
                    Height = 69
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alTop
                    BevelInner = bvLowered
                    TabOrder = 2
                    object gpnl_Ext: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 240
                      Height = 65
                      Align = alClient
                      ColumnCollection = <
                        item
                          Value = 100.000000000000000000
                        end>
                      ControlCollection = <
                        item
                          Column = 0
                          Control = Label20
                          Row = 0
                        end
                        item
                          Column = 0
                          Control = Filter_cbb
                          Row = 1
                        end>
                      RowCollection = <
                        item
                          Value = 50.000000000000000000
                        end
                        item
                          Value = 49.999999999999990000
                        end>
                      TabOrder = 0
                      object Label20: TLabel
                        Left = 1
                        Top = 1
                        Width = 127
                        Height = 21
                        Align = alClient
                        Alignment = taCenter
                        Caption = #54869#51109#51088' '#49440#53469
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -21
                        Font.Name = #44404#47548#52404
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Filter_cbb: TFilterComboBox
                        Left = 1
                        Top = 33
                        Width = 238
                        Height = 30
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Align = alClient
                        Filter = 
                          'All files (*.*)|*.*|Image Files|jpg,jpeg,png,bmp,gif|Execute Fil' +
                          'es|exe|Video Files|mp4,avi,wav,mpg,mpeg|PPT Files|ppt,pptx|TXT F' +
                          'iles|txt'
                        Font.Charset = HANGEUL_CHARSET
                        Font.Color = clNavy
                        Font.Height = -22
                        Font.Name = #44404#47548#52404
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 0
                        OnChange = Filter_cbbChange
                      end
                    end
                  end
                  object IEFLB_regist: TIEFileListBox
                    Left = 2
                    Top = 307
                    Width = 244
                    Height = 325
                    FileTypesMask = '*.*'
                    AutoRefresh = False
                    Align = alClient
                    TabOrder = 3
                    OnDblClick = IEFLB_registDblClick
                  end
                end
                object pnl_r_right: TPanel
                  Left = 255
                  Top = 2
                  Width = 1007
                  Height = 676
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelInner = bvLowered
                  TabOrder = 1
                  object Panel37: TPanel
                    Left = 2
                    Top = 2
                    Width = 1003
                    Height = 33
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alTop
                    BevelInner = bvLowered
                    Caption = #48120#47532#48372#44592
                    TabOrder = 0
                  end
                  object Panel57: TPanel
                    Left = 2
                    Top = 568
                    Width = 1003
                    Height = 106
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alBottom
                    BevelInner = bvLowered
                    Color = clInactiveCaption
                    ParentBackground = False
                    TabOrder = 1
                    object gpnl_regist: TGridPanel
                      Left = 2
                      Top = 2
                      Width = 999
                      Height = 102
                      Margins.Left = 2
                      Margins.Top = 2
                      Margins.Right = 2
                      Margins.Bottom = 2
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
                          Control = Label1
                          Row = 0
                        end
                        item
                          Column = 2
                          Control = Label12
                          Row = 0
                        end
                        item
                          Column = 4
                          Control = Label18
                          Row = 0
                        end
                        item
                          Column = 0
                          Control = Label19
                          Row = 1
                        end
                        item
                          Column = 0
                          ColumnSpan = 10
                          Control = prgrs_upload
                          Row = 2
                        end
                        item
                          Column = 1
                          Control = cbb_grade
                          Row = 0
                        end
                        item
                          Column = 3
                          Control = cbb_lesson
                          Row = 0
                        end
                        item
                          Column = 5
                          Control = cbb_pattern
                          Row = 0
                        end
                        item
                          Column = 6
                          Control = Label21
                          Row = 0
                        end
                        item
                          Column = 7
                          ColumnSpan = 3
                          Control = dt_materialsName
                          Row = 0
                        end
                        item
                          Column = 1
                          ColumnSpan = 7
                          Control = dt_materialsComment
                          Row = 1
                        end
                        item
                          Column = 8
                          ColumnSpan = 2
                          Control = btn_materialsRegist
                          Row = 1
                        end>
                      Font.Charset = HANGEUL_CHARSET
                      Font.Color = clNavy
                      Font.Height = -22
                      Font.Name = #44404#47548#52404
                      Font.Style = [fsBold]
                      ParentFont = False
                      RowCollection = <
                        item
                          Value = 50.763406100034640000
                        end
                        item
                          Value = 49.236593899965360000
                        end
                        item
                          SizeStyle = ssAuto
                        end>
                      TabOrder = 0
                      DesignSize = (
                        999
                        102)
                      object Label1: TLabel
                        Left = 28
                        Top = 10
                        Width = 46
                        Height = 22
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #54617#45380
                        ExplicitLeft = 53
                      end
                      object Label12: TLabel
                        Left = 227
                        Top = 10
                        Width = 46
                        Height = 22
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #44368#44284
                        ExplicitLeft = 262
                      end
                      object Label18: TLabel
                        Left = 427
                        Top = 10
                        Width = 46
                        Height = 22
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #50976#54805
                        ExplicitLeft = 480
                      end
                      object Label19: TLabel
                        Left = 5
                        Top = 50
                        Width = 92
                        Height = 22
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #51088#47308#49444#47749
                        ExplicitLeft = 9
                        ExplicitTop = 54
                      end
                      object prgrs_upload: TProgressBar
                        Left = 1
                        Top = 81
                        Width = 997
                        Height = 20
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Align = alClient
                        TabOrder = 0
                      end
                      object cbb_grade: TComboBox
                        Left = 102
                        Top = 6
                        Width = 97
                        Height = 30
                        Anchors = []
                        TabOrder = 1
                        Text = #49440#53469
                        Items.Strings = (
                          '1'
                          '2'
                          '3'
                          '4'
                          '5'
                          '6'
                          #44277#53685)
                      end
                      object cbb_lesson: TComboBox
                        Left = 301
                        Top = 6
                        Width = 97
                        Height = 30
                        Anchors = []
                        TabOrder = 2
                        Text = #49440#53469
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
                          #52285#52404)
                      end
                      object cbb_pattern: TComboBox
                        Left = 501
                        Top = 6
                        Width = 97
                        Height = 30
                        Anchors = []
                        TabOrder = 3
                        Text = #49440#53469
                        Items.Strings = (
                          'video'
                          'image'
                          'ppt')
                      end
                      object Label21: TLabel
                        Left = 614
                        Top = 10
                        Width = 69
                        Height = 22
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #51088#47308#47749
                        ExplicitLeft = 686
                      end
                      object dt_materialsName: TEdit
                        Left = 751
                        Top = 6
                        Width = 195
                        Height = 30
                        Anchors = []
                        TabOrder = 4
                      end
                      object dt_materialsComment: TEdit
                        Left = 395
                        Top = 46
                        Width = 109
                        Height = 30
                        Anchors = []
                        TabOrder = 5
                      end
                      object btn_materialsRegist: TButton
                        Left = 844
                        Top = 45
                        Width = 109
                        Height = 33
                        Margins.Left = 2
                        Margins.Top = 2
                        Margins.Right = 2
                        Margins.Bottom = 2
                        Anchors = []
                        Caption = #51088#47308' '#46321#47197
                        TabOrder = 6
                        OnClick = btn_materialsRegistClick
                      end
                    end
                  end
                  object pnl_preview: TPanel
                    Left = 2
                    Top = 35
                    Width = 1003
                    Height = 533
                    Align = alClient
                    BevelInner = bvLowered
                    TabOrder = 2
                    object pnl_pimage: TPanel
                      Left = 488
                      Top = 272
                      Width = 185
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 0
                      object ImgEnV_preview: TImageEnView
                        Left = 2
                        Top = 2
                        Width = 181
                        Height = 37
                        Background = clBtnFace
                        AutoStretch = True
                        AutoShrink = True
                        Align = alClient
                        TabOrder = 0
                      end
                    end
                    object pnl_pvideo: TPanel
                      Left = 496
                      Top = 280
                      Width = 185
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 1
                      object VLCPlugin22: TVLCPlugin2
                        Left = 2
                        Top = 2
                        Width = 181
                        Height = 37
                        Align = alClient
                        TabOrder = 0
                        ExplicitLeft = -56
                        ExplicitTop = -88
                        ExplicitWidth = 320
                        ExplicitHeight = 240
                        ControlData = {
                          07000000280043006F0075006E007400290003000D0000000800000041007500
                          74006F004C006F006F0070000B000000080000004100750074006F0050006C00
                          610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
                          00000000070000004200610073006500550052004C0008000000000008000000
                          4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
                          6E0074004800650069006700680074000300D30300000B000000450078007400
                          65006E007400570069006400740068000300B512000011000000460075006C00
                          6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
                          030000004D0052004C0008000000000009000000530074006100720074005400
                          69006D0065000300000000000700000054006F006F006C006200610072000B00
                          FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
                          6C0075006D006500030064000000}
                      end
                    end
                  end
                end
              end
            end
            object ts_videourl: TTabSheet
              Caption = #54868#49345#49688#50629' URL'
              ImageIndex = 1
              object Panel66: TPanel
                Left = 0
                Top = 0
                Width = 1264
                Height = 680
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object gpnl_url: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1260
                  Height = 676
                  Align = alClient
                  ColumnCollection = <
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 12.645856475117470000
                    end
                    item
                      Value = 34.831537439891510000
                    end
                    item
                      Value = 7.691068645099500000
                    end
                    item
                      Value = 34.831537439891510000
                    end
                    item
                      Value = 5.000000000000000000
                    end>
                  ControlCollection = <
                    item
                      Column = 1
                      ColumnSpan = 4
                      Control = Panel67
                      Row = 0
                    end
                    item
                      Column = 4
                      Control = lb_VideoRoom
                      Row = 2
                      RowSpan = 17
                    end
                    item
                      Column = 1
                      Control = pnl_urlgrade
                      Row = 1
                    end
                    item
                      Column = 2
                      Control = pnl_url
                      Row = 1
                    end
                    item
                      Column = 4
                      Control = Panel88
                      Row = 1
                    end
                    item
                      Column = 1
                      ColumnSpan = 2
                      Control = sg_videourl
                      Row = 2
                      RowSpan = 17
                    end
                    item
                      Column = 1
                      ColumnSpan = 2
                      Control = Panel29
                      Row = 19
                    end
                    item
                      Column = 4
                      Control = Panel24
                      Row = 19
                    end>
                  RowCollection = <
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end
                    item
                      Value = 5.000000000000000000
                    end>
                  TabOrder = 0
                  object Panel67: TPanel
                    Left = 64
                    Top = 1
                    Width = 1132
                    Height = 34
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #54617#44553#48324' '#54868#49345' '#49688#50629' '#44053#51032#49892' '#47532#49828#53944
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 0
                  end
                  object lb_VideoRoom: TListBox
                    Left = 758
                    Top = 68
                    Width = 438
                    Height = 573
                    Align = alClient
                    DragMode = dmAutomatic
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ItemHeight = 21
                    Items.Strings = (
                      '')
                    ParentFont = False
                    TabOrder = 1
                  end
                  object pnl_urlgrade: TPanel
                    Left = 64
                    Top = 35
                    Width = 159
                    Height = 33
                    Align = alClient
                    Caption = #54617#45380' - '#48152
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 2
                  end
                  object pnl_url: TPanel
                    Left = 223
                    Top = 35
                    Width = 438
                    Height = 33
                    Align = alClient
                    Caption = #48152#48324' '#54868#49345#49688#50629' URL'
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 3
                  end
                  object Panel88: TPanel
                    Left = 758
                    Top = 35
                    Width = 438
                    Height = 33
                    Align = alClient
                    Caption = #44368#49324#48324' '#54868#49345#49688#50629' URL'
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 4
                  end
                  object sg_videourl: TStringGrid
                    Left = 64
                    Top = 68
                    Width = 597
                    Height = 573
                    Align = alClient
                    ColCount = 2
                    DefaultRowHeight = 36
                    FixedCols = 0
                    FixedRows = 0
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
                    ScrollBars = ssVertical
                    TabOrder = 5
                    OnDragDrop = sg_videourlDragDrop
                    OnDragOver = sg_videourlDragOver
                    ColWidths = (
                      64
                      64)
                    RowHeights = (
                      36
                      36
                      36
                      36
                      36)
                  end
                  object Panel29: TPanel
                    Left = 64
                    Top = 641
                    Width = 597
                    Height = 34
                    Align = alClient
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 6
                    object GridPanel15: TGridPanel
                      Left = 1
                      Top = 1
                      Width = 595
                      Height = 32
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
                          Column = 1
                          Control = cbb_gradeurl
                          Row = 0
                        end
                        item
                          Column = 2
                          Control = cbb_banurl
                          Row = 0
                        end
                        item
                          Column = 3
                          Control = btn_insertgradeban
                          Row = 0
                        end
                        item
                          Column = 0
                          Control = btn_addline
                          Row = 0
                        end
                        item
                          Column = 4
                          Control = btn_save
                          Row = 0
                        end>
                      RowCollection = <
                        item
                          Value = 100.000000000000000000
                        end>
                      TabOrder = 0
                      DesignSize = (
                        595
                        32)
                      object cbb_gradeurl: TComboBox
                        Left = 121
                        Top = 1
                        Width = 116
                        Height = 29
                        Anchors = []
                        TabOrder = 0
                        Text = #54617#45380
                        Items.Strings = (
                          '1'#54617#45380
                          '2'#54617#45380
                          '3'#54617#45380
                          '4'#54617#45380
                          '5'#54617#45380
                          '6'#54617#45380
                          #50689#50612
                          #49569#50896#48169#49569#44397)
                      end
                      object cbb_banurl: TComboBox
                        Left = 239
                        Top = 1
                        Width = 117
                        Height = 29
                        Anchors = []
                        TabOrder = 1
                        Text = #48152
                        Items.Strings = (
                          '1'#48152
                          '2'#48152
                          '3'#48152
                          '4'#48152
                          '5'#48152
                          '6'#48152
                          '7'#48152
                          '8'#48152
                          '9'#48152
                          '10'#48152)
                      end
                      object btn_insertgradeban: TButton
                        Left = 362
                        Top = 1
                        Width = 108
                        Height = 30
                        Anchors = []
                        Caption = #54617#48152#51077#47141
                        TabOrder = 2
                        OnClick = btn_insertgradebanClick
                      end
                      object btn_addline: TButton
                        Left = 13
                        Top = 1
                        Width = 95
                        Height = 30
                        Anchors = []
                        Caption = #54665' '#52628#44032
                        TabOrder = 3
                        OnClick = btn_addlineClick
                      end
                      object btn_save: TButton
                        Left = 477
                        Top = 1
                        Width = 115
                        Height = 30
                        Anchors = []
                        Caption = 'DB'#50640' '#51200#51109
                        TabOrder = 4
                        OnClick = btn_saveClick
                      end
                    end
                  end
                  object Panel24: TPanel
                    Left = 758
                    Top = 641
                    Width = 438
                    Height = 34
                    Align = alClient
                    Color = clActiveCaption
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -21
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 7
                    object GridPanel12: TGridPanel
                      Left = 1
                      Top = 1
                      Width = 436
                      Height = 32
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
                          ColumnSpan = 5
                          Control = btn_videourlopen
                          Row = 0
                        end>
                      RowCollection = <
                        item
                          Value = 100.000000000000000000
                        end>
                      TabOrder = 0
                      DesignSize = (
                        436
                        32)
                      object btn_videourlopen: TButton
                        Left = 29
                        Top = 1
                        Width = 377
                        Height = 30
                        Anchors = []
                        Caption = #44368#49324#48324' '#54868#49345#54924#51032' URL '#48520#47084#50724#44592
                        TabOrder = 0
                        OnClick = btn_videourlopenClick
                      end
                    end
                  end
                end
              end
            end
            object ts_appregist: TTabSheet
              Caption = #50545' '#46321#47197
              ImageIndex = 2
              object Panel26: TPanel
                Left = 0
                Top = 0
                Width = 1264
                Height = 680
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object GridPanel21: TGridPanel
                  Left = 2
                  Top = 2
                  Width = 1260
                  Height = 676
                  Align = alClient
                  BevelInner = bvLowered
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
                      Column = 1
                      Control = cbb_app3
                      Row = 3
                    end
                    item
                      Column = 1
                      Control = cbb_app2
                      Row = 2
                    end
                    item
                      Column = 1
                      Control = cbb_app4
                      Row = 4
                    end
                    item
                      Column = 1
                      Control = cbb_app1
                      Row = 1
                    end
                    item
                      Column = 1
                      Control = Panel27
                      Row = 0
                    end
                    item
                      Column = 2
                      ColumnSpan = 7
                      Control = Panel28
                      Row = 0
                    end
                    item
                      Column = 2
                      ColumnSpan = 6
                      Control = dt_app1
                      Row = 1
                    end
                    item
                      Column = 2
                      ColumnSpan = 6
                      Control = dt_app2
                      Row = 2
                    end
                    item
                      Column = 2
                      ColumnSpan = 6
                      Control = dt_app3
                      Row = 3
                    end
                    item
                      Column = 2
                      ColumnSpan = 6
                      Control = dt_app4
                      Row = 4
                    end
                    item
                      Column = 8
                      Control = btn_app4
                      Row = 4
                    end
                    item
                      Column = 8
                      Control = btn_app1
                      Row = 1
                    end
                    item
                      Column = 8
                      Control = btn_app3
                      Row = 3
                    end
                    item
                      Column = 8
                      Control = btn_app2
                      Row = 2
                    end
                    item
                      Column = 1
                      ColumnSpan = 8
                      Control = Panel1
                      Row = 6
                    end
                    item
                      Column = 1
                      ColumnSpan = 7
                      Control = mm_InApp
                      Row = 7
                      RowSpan = 3
                    end
                    item
                      Column = 8
                      Control = btn_inappsearch
                      Row = 7
                    end
                    item
                      Column = 8
                      Control = btn_inappsave
                      Row = 9
                    end>
                  RowCollection = <
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
                  TabOrder = 0
                  object cbb_app3: TComboBox
                    Left = 128
                    Top = 239
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    Text = #50976#54805' '#49440#53469
                    Items.Strings = (
                      'movie'
                      'web'
                      'ppt'
                      'pdf'
                      'pen')
                  end
                  object cbb_app2: TComboBox
                    Left = 128
                    Top = 172
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    Text = #50976#54805' '#49440#53469
                    Items.Strings = (
                      'movie'
                      'web'
                      'ppt'
                      'pdf'
                      'pen')
                  end
                  object cbb_app4: TComboBox
                    Left = 128
                    Top = 306
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    Text = #50976#54805' '#49440#53469
                    Items.Strings = (
                      'movie'
                      'web'
                      'ppt'
                      'pdf'
                      'pen')
                  end
                  object cbb_app1: TComboBox
                    Left = 128
                    Top = 104
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    Text = #50976#54805' '#49440#53469
                    Items.Strings = (
                      'movie'
                      'web'
                      'ppt'
                      'pdf'
                      'pen')
                  end
                  object Panel27: TPanel
                    Left = 128
                    Top = 2
                    Width = 125
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #51088#47308' '#50976#54805
                    Color = clActiveCaption
                    ParentBackground = False
                    TabOrder = 4
                  end
                  object Panel28: TPanel
                    Left = 253
                    Top = 2
                    Width = 879
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = #51088#47308' '#51228#49884#50640' '#49324#50857#54624' '#48624#50612#51032' '#44221#47196#50752' '#49892#54665#54028#51068#47749
                    Color = clActiveCaption
                    ParentBackground = False
                    TabOrder = 5
                  end
                  object dt_app1: TEdit
                    Left = 253
                    Top = 104
                    Width = 754
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    TextHint = #53364#47533#54616#50668' '#54260#45908#47484' '#49440#53469#54616#49464#50836'.'
                    OnClick = dt_app11Click
                  end
                  object dt_app2: TEdit
                    Left = 253
                    Top = 172
                    Width = 754
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 7
                    TextHint = #53364#47533#54616#50668' '#54260#45908#47484' '#49440#53469#54616#49464#50836'.'
                    OnClick = dt_app11Click
                  end
                  object dt_app3: TEdit
                    Left = 253
                    Top = 239
                    Width = 754
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 8
                    TextHint = #53364#47533#54616#50668' '#54260#45908#47484' '#49440#53469#54616#49464#50836'.'
                    OnClick = dt_app11Click
                  end
                  object dt_app4: TEdit
                    Left = 253
                    Top = 306
                    Width = 754
                    Height = 32
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 9
                    TextHint = #53364#47533#54616#50668' '#54260#45908#47484' '#49440#53469#54616#49464#50836'.'
                    OnClick = dt_app11Click
                  end
                  object btn_app4: TButton
                    Left = 1007
                    Top = 306
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Caption = #46321#47197
                    TabOrder = 10
                    OnClick = btn_app1Click
                  end
                  object btn_app1: TButton
                    Left = 1007
                    Top = 104
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Caption = #46321#47197
                    TabOrder = 11
                    OnClick = btn_app1Click
                  end
                  object btn_app3: TButton
                    Left = 1007
                    Top = 239
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Caption = #46321#47197
                    TabOrder = 12
                    OnClick = btn_app1Click
                  end
                  object btn_app2: TButton
                    Left = 1007
                    Top = 172
                    Width = 125
                    Height = 32
                    Align = alBottom
                    Caption = #46321#47197
                    TabOrder = 13
                    OnClick = btn_app1Click
                  end
                  object Panel1: TPanel
                    Left = 128
                    Top = 405
                    Width = 1004
                    Height = 67
                    Align = alClient
                    BevelInner = bvLowered
                    Caption = 'InApp '#46321#47197'('#54805#49885' - exe'#54028#51068#47749','#54532#47196#44536#47016' '#53945#51669')'
                    Color = clActiveCaption
                    ParentBackground = False
                    TabOrder = 14
                  end
                  object mm_InApp: TMemo
                    Left = 128
                    Top = 472
                    Width = 879
                    Height = 202
                    Align = alClient
                    TabOrder = 15
                  end
                  object btn_inappsearch: TButton
                    Left = 1007
                    Top = 472
                    Width = 125
                    Height = 68
                    Align = alClient
                    Caption = 'InApp '#44160#49353
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 16
                    OnClick = btn_inappsearchClick
                  end
                  object btn_inappsave: TButton
                    Left = 1007
                    Top = 607
                    Width = 125
                    Height = 67
                    Align = alClient
                    Caption = 'InApp '#46321#47197
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -24
                    Font.Name = #44404#47548#52404
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 17
                    OnClick = btn_inappsaveClick
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=210.218.83.98'
      'Port=80'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 912
    Top = 48
    UniqueId = '{F725A4E6-1165-4699-8C68-6D603221E4CB}'
  end
  object DSClientCallbackChannelManager1: TDSClientCallbackChannelManager
    DSHostname = '210.218.83.98'
    DSPort = '80'
    CommunicationProtocol = 'http'
    ManagerId = '98108.475974.509078'
    Left = 696
    Top = 2
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 728
    Top = 216
  end
  object PopupMenu: TPopupMenu
    Left = 568
    Top = 344
    object toChoice: TMenuItem
      Caption = #49440#53469#54805' '#45813#51648#47196' '#48372#45236#44592
      OnClick = toChoiceClick
    end
  end
  object OImgD: TOpenImageEnDialog
    ShowAllFrames = False
    Left = 1080
    Top = 16
  end
  object IdHTTP_upload: TIdHTTP
    OnWork = IdHTTP_uploadWork
    OnWorkBegin = IdHTTP_uploadWorkBegin
    OnWorkEnd = IdHTTP_uploadWorkEnd
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 1248
    Top = 184
  end
  object sqlcon_98: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=210.218.83.98'
      'Port=80'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 1000
    Top = 48
  end
  object tmr_attendance: TTimer
    Enabled = False
    Left = 816
    Top = 216
  end
  object tmr_chatattendance: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = tmr_chatattendanceTimer
    Left = 816
    Top = 272
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'TXT|*.txt|EXE|*.exe|PDF|*.pdf|PPT|*.ppt;*.pptx|Image|*.jpg;*.png' +
      ';*.bmp|Video|*.mp4;*.avi;*.wmv;*.mpg|ALL|*.*'
    Left = 1232
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'TXT|*.txt'
    Left = 1168
    Top = 16
  end
  object PopupMenu_sentence: TPopupMenu
    Left = 568
    Top = 400
    object sentenceToChoice: TMenuItem
      Caption = #49440#53469#54805' '#45813#51648#47196' '#48372#45236#44592
      OnClick = sentenceToChoiceClick
    end
  end
  object Popup_preview: TPopupMenu
    Left = 792
    Top = 352
    object N1: TMenuItem
      Caption = #47112#51060#50612' '#51060#48120#51648#47196' '#52628#44032
      OnClick = N1Click
    end
  end
  object GestureManager1: TGestureManager
    Left = 896
    Top = 112
    GestureData = <
      item
        Control = imgEnV_view
        Collection = <
          item
            GestureID = sgiDownRightLong
          end>
      end>
  end
  object IdHTTP_download: TIdHTTP
    OnWork = IdHTTP_downloadWork
    OnWorkBegin = IdHTTP_downloadWorkBegin
    OnWorkEnd = IdHTTP_downloadWorkEnd
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 1248
    Top = 232
  end
end
