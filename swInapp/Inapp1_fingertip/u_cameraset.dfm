object fm_cameraset: Tfm_cameraset
  Left = 0
  Top = 0
  Caption = #52852#47700#46972' '#49444#51221
  ClientHeight = 439
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #44404#47548#52404
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object SpeedButton1: TSpeedButton
    Left = 246
    Top = 373
    Width = 129
    Height = 44
    AllowAllUp = True
    GroupIndex = 1
    Caption = 'Show Video'
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 641
    Height = 345
    Caption = #52852#47700#46972' '#49444#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 32
      Width = 121
      Height = 19
      Caption = 'Video Input'
    end
    object Label5: TLabel
      Left = 9
      Top = 72
      Width = 77
      Height = 19
      Caption = 'Formats'
    end
    object Label8: TLabel
      Left = 9
      Top = 210
      Width = 132
      Height = 19
      Caption = 'Video Source'
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 29
      Width = 321
      Height = 27
      Style = csDropDownList
      TabOrder = 0
    end
    object Button1: TButton
      Left = 32
      Top = 287
      Width = 161
      Height = 34
      Caption = 'Video Dialog'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 440
      Top = 287
      Width = 177
      Height = 34
      Caption = 'Format Dialog'
      TabOrder = 2
    end
    object ListBox1: TListBox
      Left = 144
      Top = 97
      Width = 361
      Height = 96
      ItemHeight = 19
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 32
      Top = 243
      Width = 161
      Height = 27
      Style = csDropDownList
      TabOrder = 4
    end
    object Button3: TButton
      Left = 206
      Top = 287
      Width = 211
      Height = 34
      Caption = 'Video Input Source'
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 483
      Top = 29
      Width = 22
      Height = 27
      TabOrder = 6
      Text = '0'
    end
  end
end
