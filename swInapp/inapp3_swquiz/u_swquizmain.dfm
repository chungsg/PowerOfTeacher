object fm_inapp: Tfm_inapp
  Left = 0
  Top = 0
  Caption = #44305#51452#49569#50896#52488' '#53300#51592' '#50545'(ver 0.9)'
  ClientHeight = 716
  ClientWidth = 1086
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pc_quizmain: TPageControl
    Left = 0
    Top = 0
    Width = 1086
    Height = 716
    ActivePage = ts_media
    Align = alClient
    TabOrder = 0
    object ts_main: TTabSheet
      Caption = #53300#51592' '#47700#51064
    end
    object ts_make: TTabSheet
      Caption = #53300#51592' '#47564#46308#44592
      ImageIndex = 1
      object gpnl_makequiz: TGridPanel
        Left = 0
        Top = 0
        Width = 1078
        Height = 681
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
            Column = 3
            ColumnSpan = 4
            Control = Label1
            Row = 0
            RowSpan = 2
          end
          item
            Column = 0
            ColumnSpan = 2
            Control = Panel1
            Row = 3
          end
          item
            Column = 2
            ColumnSpan = 8
            Control = Edit1
            Row = 3
          end
          item
            Column = 0
            ColumnSpan = 2
            Control = Panel2
            Row = 4
          end
          item
            Column = 2
            Control = cbb_grade
            Row = 4
          end
          item
            Column = 3
            Control = cbb_term
            Row = 4
          end
          item
            Column = 4
            Control = cbb_lesson
            Row = 4
          end
          item
            Column = 5
            Control = cbb_unit
            Row = 4
          end
          item
            Column = 6
            Control = cbb_time
            Row = 4
          end
          item
            Column = 0
            ColumnSpan = 2
            Control = Panel3
            Row = 5
          end
          item
            Column = 0
            ColumnSpan = 10
            Control = pc_exam
            Row = 6
            RowSpan = 14
          end
          item
            Column = 3
            Control = rdb_ox
            Row = 5
          end
          item
            Column = 4
            Control = rdb_choice
            Row = 5
          end
          item
            Column = 5
            Control = rdb_short
            Row = 5
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
        DesignSize = (
          1078
          681)
        object Label1: TLabel
          Left = 322
          Top = 1
          Width = 428
          Height = 66
          Align = alClient
          Alignment = taCenter
          Caption = #49888#45208#45716' '#53300#51592
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clYellow
          Font.Height = -48
          Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          StyleElements = [seClient, seBorder]
          ExplicitWidth = 264
          ExplicitHeight = 50
        end
        object Panel1: TPanel
          Left = 1
          Top = 100
          Width = 214
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #53300#51592' '#51228#47785
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 215
          Top = 100
          Width = 862
          Height = 33
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitHeight = 32
        end
        object Panel2: TPanel
          Left = 1
          Top = 133
          Width = 214
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #53300#51592' '#48516#47448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cbb_grade: TComboBox
          Left = 215
          Top = 133
          Width = 107
          Height = 35
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = #54617#45380
          OnChange = cbb_gradeChange
          Items.Strings = (
            #44277#53685
            '1'#54617#45380
            '2'#54617#45380
            '3'#54617#45380
            '4'#54617#45380
            '5'#54617#45380
            '6'#54617#45380)
        end
        object cbb_term: TComboBox
          Left = 322
          Top = 133
          Width = 107
          Height = 35
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = #54617#44592
          Visible = False
          OnChange = cbb_termChange
          Items.Strings = (
            '1'#54617#44592
            '2'#54617#44592)
        end
        object cbb_lesson: TComboBox
          Left = 429
          Top = 133
          Width = 107
          Height = 35
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = #44368#44284
          Visible = False
          OnChange = cbb_lessonChange
          OnDropDown = cbb_lessonDropDown
        end
        object cbb_unit: TComboBox
          Left = 536
          Top = 133
          Width = 107
          Height = 35
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = #45800#50896
          Visible = False
          OnChange = cbb_unitChange
          Items.Strings = (
            '1'#45800#50896
            '2'#45800#50896
            '3'#45800#50896
            '4'#45800#50896
            '5'#45800#50896
            '6'#45800#50896
            '7'#45800#50896
            '8'#45800#50896
            '9'#45800#50896
            '10'#45800#50896)
        end
        object cbb_time: TComboBox
          Left = 643
          Top = 133
          Width = 107
          Height = 35
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = #52264#49884
          Visible = False
          Items.Strings = (
            '1'#52264#49884
            '2'#52264#49884
            '3'#52264#49884
            '4'#52264#49884
            '5'#52264#49884
            '6'#52264#49884
            '7'#52264#49884
            '8'#52264#49884
            '9'#52264#49884
            '10'#52264#49884
            '11'#52264#49884
            '12'#52264#49884
            '13'#52264#49884
            '14'#52264#49884
            '15'#52264#49884
            '16'#52264#49884
            '17'#52264#49884
            '18'#52264#49884
            '19'#52264#49884
            '20'#52264#49884)
        end
        object Panel3: TPanel
          Left = 1
          Top = 166
          Width = 214
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #47928#51228' '#50976#54805
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object pc_exam: TPageControl
          Left = 1
          Top = 199
          Width = 1076
          Height = 481
          ActivePage = ts_ox
          Align = alClient
          TabOrder = 9
          object ts_ox: TTabSheet
            Caption = 'OX'#54805
            object GridPanel1: TGridPanel
              Left = 0
              Top = 0
              Width = 1068
              Height = 446
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
                  Control = Panel5
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 1
                  ColumnSpan = 6
                  Control = Memo1
                  Row = 0
                  RowSpan = 4
                end
                item
                  Column = 7
                  ColumnSpan = 3
                  Control = Panel7
                  Row = 0
                  RowSpan = 4
                end
                item
                  Column = 1
                  ColumnSpan = 3
                  Control = Panel8
                  Row = 4
                end
                item
                  Column = 5
                  ColumnSpan = 5
                  Control = Edit2
                  Row = 4
                end
                item
                  Column = 4
                  Control = btn_MediaAdd
                  Row = 4
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
              object Panel5: TPanel
                Left = 1
                Top = 1
                Width = 106
                Height = 88
                Align = alClient
                BevelInner = bvLowered
                Caption = '1'
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -48
                Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Memo1: TMemo
                Left = 107
                Top = 1
                Width = 636
                Height = 176
                Hint = #47928#51228' '#48376#47928#51012' '#51077#47141#54616#49464#50836'.'
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -37
                Font.Name = #44404#47548#52404
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ScrollBars = ssVertical
                ShowHint = True
                TabOrder = 1
              end
              object Panel7: TPanel
                Left = 743
                Top = 1
                Width = 324
                Height = 176
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 2
                object ImageEnView1: TImageEnView
                  Left = 2
                  Top = 2
                  Width = 320
                  Height = 172
                  Background = clBtnFace
                  Align = alClient
                  TabOrder = 0
                end
                object VLCPlugin21: TVLCPlugin2
                  Left = 2
                  Top = 2
                  Width = 320
                  Height = 172
                  Align = alClient
                  TabOrder = 1
                  ExplicitLeft = 0
                  ExplicitTop = -32
                  ExplicitHeight = 240
                  ControlData = {
                    07000000280043006F0075006E007400290003000D0000000800000041007500
                    74006F004C006F006F0070000B000000080000004100750074006F0050006C00
                    610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
                    00000000070000004200610073006500550052004C0008000000000008000000
                    4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
                    6E0074004800650069006700680074000300C71100000B000000450078007400
                    65006E0074005700690064007400680003001321000011000000460075006C00
                    6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
                    030000004D0052004C0008000000000009000000530074006100720074005400
                    69006D0065000300000000000700000054006F006F006C006200610072000B00
                    FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
                    6C0075006D006500030064000000}
                end
              end
              object Panel8: TPanel
                Left = 107
                Top = 194
                Width = 318
                Height = 27
                Align = alBottom
                BevelInner = bvLowered
                Caption = #51656#47928#50640' '#49324#51652', '#46041#50689#49345' '#52628#44032
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = #44404#47548#52404
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object Edit2: TEdit
                Left = 531
                Top = 194
                Width = 536
                Height = 27
                Align = alBottom
                TabOrder = 4
              end
              object btn_MediaAdd: TButton
                Left = 425
                Top = 194
                Width = 106
                Height = 27
                Align = alBottom
                Caption = #48120#46356#50612' '#52628#44032
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #44404#47548#52404
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnClick = btn_MediaAddClick
                ExplicitTop = 196
              end
            end
          end
          object ts_choice: TTabSheet
            Caption = #49440#53469#54805
            ImageIndex = 1
            object GridPanel2: TGridPanel
              Left = 0
              Top = 0
              Width = 1068
              Height = 446
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
                  Control = Panel6
                  Row = 0
                  RowSpan = 2
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
              object Panel6: TPanel
                Left = 1
                Top = 1
                Width = 106
                Height = 88
                Align = alClient
                BevelInner = bvLowered
                Caption = '1'
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -48
                Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object ts_short: TTabSheet
            Caption = #45800#45813#54805
            ImageIndex = 2
            object GridPanel3: TGridPanel
              Left = 0
              Top = 0
              Width = 1068
              Height = 446
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
                  Control = Panel4
                  Row = 0
                  RowSpan = 2
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
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 106
                Height = 88
                Align = alClient
                BevelInner = bvLowered
                Caption = '1'
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -48
                Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object rdb_ox: TRadioButton
          Tag = 1
          Left = 322
          Top = 174
          Width = 107
          Height = 17
          Anchors = []
          Caption = 'OX'#54805
          TabOrder = 10
          OnClick = rdb_oxClick
        end
        object rdb_choice: TRadioButton
          Tag = 2
          Left = 429
          Top = 174
          Width = 107
          Height = 17
          Anchors = []
          Caption = #49440#53469#54805
          TabOrder = 11
          OnClick = rdb_oxClick
        end
        object rdb_short: TRadioButton
          Tag = 3
          Left = 536
          Top = 174
          Width = 107
          Height = 17
          Anchors = []
          Caption = #45800#45813#54805
          TabOrder = 12
          OnClick = rdb_oxClick
        end
      end
    end
    object ts_solve: TTabSheet
      Caption = #53300#51592' '#54644#44208#54616#44592
      ImageIndex = 2
    end
    object ts_control: TTabSheet
      Caption = #53300#51592' '#44288#47532#54616#44592
      ImageIndex = 3
    end
    object ts_result: TTabSheet
      Caption = #53300#51592' '#44208#44284#48372#44592
      ImageIndex = 4
    end
    object ts_media: TTabSheet
      Caption = #48120#46356#50612' '#52286#44592
      ImageIndex = 5
      object GridPanel4: TGridPanel
        Left = 0
        Top = 0
        Width = 1078
        Height = 681
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
            Column = 3
            ColumnSpan = 7
            Control = pnl_view
            Row = 6
            RowSpan = 13
          end
          item
            Column = 0
            ColumnSpan = 10
            Control = Panel9
            Row = 0
            RowSpan = 2
          end
          item
            Column = 0
            ColumnSpan = 2
            Control = Panel10
            Row = 3
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = cbb_media
            Row = 3
          end
          item
            Column = 4
            ColumnSpan = 5
            Control = dt_searchword
            Row = 3
          end
          item
            Column = 9
            Control = btn_search
            Row = 3
          end
          item
            Column = 0
            ColumnSpan = 3
            Control = lb_result
            Row = 6
            RowSpan = 13
          end
          item
            Column = 0
            ColumnSpan = 3
            Control = Panel11
            Row = 5
          end
          item
            Column = 3
            ColumnSpan = 7
            Control = Panel12
            Row = 5
          end
          item
            Column = 4
            ColumnSpan = 2
            Control = Button1
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
        ExplicitWidth = 1068
        ExplicitHeight = 446
        object pnl_view: TPanel
          Left = 322
          Top = 199
          Width = 755
          Height = 429
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          ExplicitLeft = 743
          ExplicitTop = 1
          ExplicitWidth = 324
          ExplicitHeight = 176
          object ImageEnView2: TImageEnView
            Left = 2
            Top = 2
            Width = 751
            Height = 425
            Background = clBtnFace
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 320
            ExplicitHeight = 172
          end
          object VLCPlugin22: TVLCPlugin2
            Left = 2
            Top = 2
            Width = 751
            Height = 425
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 0
            ExplicitTop = -32
            ExplicitWidth = 320
            ExplicitHeight = 240
            ControlData = {
              07000000280043006F0075006E007400290003000D0000000800000041007500
              74006F004C006F006F0070000B000000080000004100750074006F0050006C00
              610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
              00000000070000004200610073006500550052004C0008000000000008000000
              4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
              6E0074004800650069006700680074000300ED2B00000B000000450078007400
              65006E0074005700690064007400680003009E4D000011000000460075006C00
              6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
              030000004D0052004C0008000000000009000000530074006100720074005400
              69006D0065000300000000000700000054006F006F006C006200610072000B00
              FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
              6C0075006D006500030064000000}
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1076
          Height = 66
          Align = alClient
          BevelInner = bvLowered
          Caption = #53300#51592#50640' '#54252#54632#49884#53420' '#48120#46356#50612'('#49324#51652', '#46041#50689#49345') '#52286#44592
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 9
          ExplicitTop = 9
          ExplicitWidth = 107
          ExplicitHeight = 67
        end
        object Panel10: TPanel
          Left = 1
          Top = 100
          Width = 214
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #44160#49353' '#45824#49345
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = -5
          ExplicitTop = 67
          ExplicitWidth = 107
        end
        object cbb_media: TComboBox
          Left = 215
          Top = 100
          Width = 214
          Height = 32
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = #49440#53469
          OnCloseUp = cbb_mediaCloseUp
          Items.Strings = (
            #51088#52404' '#49436#48260' '#46041#50689#49345
            #51088#52404' '#49436#48260' '#49324#51652
            #45236#52980#54504#53552' '#49324#51652
            #50976#53916#48652' '#46041#50689#49345)
          ExplicitLeft = 108
          ExplicitTop = 67
          ExplicitWidth = 107
        end
        object dt_searchword: TEdit
          Left = 429
          Top = 100
          Width = 535
          Height = 33
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = dt_searchwordChange
          ExplicitTop = 70
          ExplicitWidth = 107
          ExplicitHeight = 32
        end
        object btn_search: TButton
          Left = 964
          Top = 100
          Width = 113
          Height = 33
          Align = alClient
          Caption = 'Search'
          Enabled = False
          TabOrder = 5
          ExplicitLeft = 504
          ExplicitTop = 328
          ExplicitWidth = 75
          ExplicitHeight = 25
        end
        object lb_result: TListBox
          Left = 1
          Top = 199
          Width = 321
          Height = 429
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = []
          ItemHeight = 21
          ParentFont = False
          TabOrder = 6
          ExplicitLeft = -3
          ExplicitTop = 205
        end
        object Panel11: TPanel
          Left = 1
          Top = 166
          Width = 321
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #44160#49353' '#44208#44284
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ExplicitLeft = -5
          ExplicitTop = 67
          ExplicitWidth = 107
        end
        object Panel12: TPanel
          Left = 322
          Top = 166
          Width = 755
          Height = 33
          Align = alClient
          BevelInner = bvLowered
          Caption = #48120#47532' '#48372#44592
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          ExplicitLeft = -5
          ExplicitTop = 67
          ExplicitWidth = 107
        end
        object Button1: TButton
          Left = 429
          Top = 628
          Width = 214
          Height = 52
          Align = alClient
          Caption = #54252#54632#49884#53412#44592
          TabOrder = 9
          OnClick = Button1Click
          ExplicitLeft = 504
          ExplicitTop = 328
          ExplicitWidth = 75
          ExplicitHeight = 25
        end
      end
    end
  end
  object OImgDlg: TOpenImageEnDialog
    Left = 1028
    Top = 167
  end
end
