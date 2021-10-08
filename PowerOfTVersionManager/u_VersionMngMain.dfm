object fm_powerofswsupload: Tfm_powerofswsupload
  Left = 0
  Top = 0
  Caption = #49440#49373#45784#44284' '#54617#49373#54876#46041#50640' '#53076#46377#51012' '#51217#47785#54616#51088
  ClientHeight = 299
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 299
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 0
        Control = pgbar_up
        Row = 2
      end
      item
        Column = 0
        Control = btn_Start
        Row = 3
      end
      item
        Column = 0
        Control = dt_uploadfilename
        Row = 1
      end
      item
        Column = 0
        Control = Panel1
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
      748
      299)
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 746
      Height = 59
      Align = alClient
      Alignment = taCenter
      Caption = 'Power of Teacher '#48260#51204' '#44288#47532'(Ver 1.0)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 416
      ExplicitHeight = 21
    end
    object pgbar_up: TProgressBar
      Left = 1
      Top = 162
      Width = 746
      Height = 17
      Align = alBottom
      TabOrder = 0
    end
    object btn_Start: TButton
      Left = 313
      Top = 188
      Width = 121
      Height = 41
      Anchors = []
      Caption = #49884#51089
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_StartClick
    end
    object dt_uploadfilename: TEdit
      Left = 10
      Top = 75
      Width = 727
      Height = 29
      Anchors = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TextHint = 'ini'#50752' exe'#54028#51068#47564' '#51204#49569#44032#45733
      OnClick = dt_uploadfilenameClick
    end
    object Panel1: TPanel
      Left = 1
      Top = 239
      Width = 746
      Height = 59
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 3
      object GridPanel2: TGridPanel
        Left = 2
        Top = 2
        Width = 742
        Height = 55
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
            Control = rdbtn_execute
            Row = 1
          end
          item
            Column = 1
            Control = rdbtn_choice
            Row = 1
          end
          item
            Column = 2
            ColumnSpan = 3
            Control = dt_folder
            Row = 1
          end>
        RowCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 60.133957313703800000
          end
          item
            Value = 19.866042686296200000
          end>
        TabOrder = 0
        DesignSize = (
          742
          55)
        object rdbtn_execute: TRadioButton
          Left = 18
          Top = 19
          Width = 113
          Height = 17
          Anchors = []
          Caption = #49892#54665' '#54260#45908
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object rdbtn_choice: TRadioButton
          Left = 166
          Top = 19
          Width = 113
          Height = 17
          Anchors = []
          Caption = #51648#51221' '#54260#45908
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
        end
        object dt_folder: TEdit
          Left = 297
          Top = 12
          Width = 444
          Height = 31
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'C:\Users\user\Desktop\'#49569#50896#50728#46972#51064#54617#49845#53552'-'#54617#49373#50857
          ExplicitHeight = 27
        end
      end
    end
  end
  object fod_up: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 576
    Top = 24
  end
  object IdHTTP_up: TIdHTTP
    OnWork = IdHTTP_upWork
    OnWorkBegin = IdHTTP_upWorkBegin
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
    Left = 528
    Top = 24
  end
end
