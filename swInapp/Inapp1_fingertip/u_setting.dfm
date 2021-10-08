object fm_setting: Tfm_setting
  Left = 0
  Top = 0
  Caption = 'fm_setting'
  ClientHeight = 711
  ClientWidth = 1204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1204
    Height = 225
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 1017
      Top = 2
      Width = 185
      Height = 221
      Align = alRight
      BevelInner = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 32
        Width = 104
        Height = 21
        Caption = #44544#44852' '#53356#44592
      end
      object UpDown1: TUpDown
        Left = 123
        Top = 59
        Width = 27
        Height = 29
        Associate = dt_size
        TabOrder = 0
        OnChanging = UpDown1Changing
      end
      object dt_size: TEdit
        Left = 42
        Top = 59
        Width = 81
        Height = 29
        TabOrder = 1
        Text = '0'
      end
      object btn_add: TButton
        Left = 40
        Top = 94
        Width = 105
        Height = 49
        Caption = #52628#44032
        Enabled = False
        TabOrder = 2
        OnClick = btn_addClick
      end
      object btn_save: TButton
        Left = 40
        Top = 158
        Width = 105
        Height = 49
        Caption = #51200#51109
        Enabled = False
        TabOrder = 3
        OnClick = btn_saveClick
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 1015
      Height = 221
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object mm_text: TMemo
        Left = 2
        Top = 2
        Width = 1011
        Height = 217
        Align = alClient
        TabOrder = 0
        OnChange = mm_textChange
      end
    end
  end
  object mm_total: TMemo
    Left = 0
    Top = 225
    Width = 1204
    Height = 486
    Align = alClient
    TabOrder = 1
    OnChange = mm_totalChange
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'txt|*.txt'
    Left = 600
    Top = 360
  end
end
