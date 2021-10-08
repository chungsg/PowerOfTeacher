object fm_inapp: Tfm_inapp
  Left = 0
  Top = 0
  Caption = #53440#51060#47672
  ClientHeight = 611
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 611
    Align = alClient
    BevelInner = bvLowered
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 424
    ExplicitTop = 304
    ExplicitWidth = 185
    ExplicitHeight = 41
    object GridPanel1: TGridPanel
      Left = 2
      Top = 2
      Width = 1014
      Height = 607
      Align = alClient
      ColumnCollection = <
        item
          Value = 16.714395023460200000
        end
        item
          Value = 16.695274279962200000
        end
        item
          Value = 16.676175708005540000
        end
        item
          Value = 16.657099189800620000
        end
        item
          Value = 16.638044439895460000
        end
        item
          Value = 16.619011358875980000
        end>
      ControlCollection = <
        item
          Column = 1
          ColumnSpan = 4
          Control = Label1
          Row = 0
        end
        item
          Column = 1
          Control = btn_1
          Row = 1
        end
        item
          Column = 4
          Control = btn_5
          Row = 1
        end
        item
          Column = 5
          Control = btn_clear
          Row = 1
        end
        item
          Column = 0
          Control = btn_1_2
          Row = 1
        end
        item
          Column = 2
          Control = btn_2
          Row = 1
        end
        item
          Column = 3
          Control = btn_3
          Row = 1
        end
        item
          Column = 2
          ColumnSpan = 2
          Control = chkb_hap
          Row = 2
        end
        item
          Column = 1
          ColumnSpan = 4
          Control = pnl_time
          Row = 3
        end>
      RowCollection = <
        item
          Value = 12.749820210669280000
        end
        item
          Value = 13.000418723737370000
        end
        item
          Value = 13.249762143629900000
        end
        item
          Value = 60.999998921963460000
        end>
      TabOrder = 0
      ExplicitLeft = 4
      DesignSize = (
        1014
        607)
      object Label1: TLabel
        Left = 170
        Top = 1
        Width = 672
        Height = 77
        Align = alClient
        Alignment = taCenter
        Caption = 'Time is Gold'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clPurple
        Font.Height = -64
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitTop = 0
        ExplicitWidth = 676
      end
      object btn_1: TButton
        Left = 204
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = '1'#48516
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_1Click
        ExplicitTop = 84
      end
      object btn_5: TButton
        Left = 708
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = '5'#48516
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn_5Click
        ExplicitTop = 84
      end
      object btn_clear: TButton
        Left = 877
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = #52488#44592#54868
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn_clearClick
        ExplicitTop = 89
      end
      object btn_1_2: TButton
        Left = 35
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = '30'#52488
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn_1_2Click
        ExplicitTop = 104
      end
      object btn_2: TButton
        Left = 372
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = '2'#48516
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btn_2Click
        ExplicitTop = 84
      end
      object btn_3: TButton
        Left = 540
        Top = 87
        Width = 100
        Height = 60
        Anchors = []
        Caption = '3'#48516
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #55092#47676#50715#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btn_3Click
        ExplicitTop = 84
      end
      object chkb_hap: TCheckBox
        Left = 442
        Top = 181
        Width = 128
        Height = 30
        Anchors = []
        Caption = #49884#44036#45572#51201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ExplicitTop = 187
      end
      object pnl_time: TPanel
        Left = 170
        Top = 236
        Width = 672
        Height = 370
        Align = alClient
        BevelInner = bvLowered
        Caption = '00:00'
        Color = clInfoText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -200
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        ExplicitLeft = 416
        ExplicitTop = 280
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 792
    Top = 184
  end
end
