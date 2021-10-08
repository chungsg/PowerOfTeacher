object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 605
  Width = 427
  object fdc_goldenbell: TFDConnection
    Params.Strings = (
      'Database=goldenbell'
      'User_Name=chungsg'
      'Password=19941032'
      'DriverID=MySQL'
      'CharacterSet=utf8')
    FetchOptions.AssignedValues = [evRowsetSize, evUnidirectional]
    FetchOptions.RowsetSize = 1000
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object qry_gb_hanja_dic: TFDQuery
    FieldOptions.UpdatePersistent = True
    CachedUpdates = True
    Connection = fdc_goldenbell
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    Left = 144
    Top = 24
  end
  object dsp_qry_db_hanja_dic: TDataSetProvider
    DataSet = qry_gb_hanja_dic
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 248
    Top = 24
  end
  object tbl_member: TFDTable
    Connection = fdc_goldenbell
    UpdateOptions.UpdateTableName = 'smartedu.member'
    TableName = 'smartedu.member'
    Left = 112
    Top = 320
  end
  object tbl_member_Provider: TDataSetProvider
    DataSet = tbl_member
    Left = 232
    Top = 320
  end
  object fdc_public: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'User_Name=chungsg'
      'Password=19941032'
      'Server=localhost'
      'Database=congpublic'
      'POOL_MaximumItems=512')
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 512
    LoginPrompt = False
    Left = 40
    Top = 96
  end
  object qry_public: TFDQuery
    Connection = fdc_public
    Left = 144
    Top = 96
  end
  object dsp_public: TDataSetProvider
    DataSet = qry_public
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 248
    Top = 96
  end
  object fdc_swmm: TFDConnection
    Params.Strings = (
      'User_Name=chungsg'
      'Password=19941032'
      'Server=localhost'
      'Database=swmeeting'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 512
    LoginPrompt = False
    Left = 40
    Top = 192
  end
  object dsp_swmm: TDataSetProvider
    DataSet = qry_swmm
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 192
  end
  object qry_swmm: TFDQuery
    Connection = fdc_swmm
    SQL.Strings = (
      'select * from swmm_share')
    Left = 136
    Top = 192
  end
  object fdc_theonedc: TFDConnection
    Params.Strings = (
      'User_Name=chungsg'
      'Password=19941032'
      'Server=localhost'
      'Database=theonedc'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 512
    LoginPrompt = False
    Left = 40
    Top = 256
  end
  object dsp_theonedc: TDataSetProvider
    DataSet = qry_theonedc
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 256
  end
  object qry_theonedc: TFDQuery
    Connection = fdc_theonedc
    SQL.Strings = (
      'select * from themember')
    Left = 136
    Top = 256
  end
  object fdc_ksongwones: TFDConnection
    Params.Strings = (
      'Database=C:\Program Files\Embarcadero\InterBase\KSONGWONES.IB'
      'User_Name=chungsg'
      'Password=19941032'
      'Server=localhost/instance2'
      'DriverID=IB')
    FetchOptions.AssignedValues = [evRowsetSize, evUnidirectional]
    FetchOptions.RowsetSize = 1000
    LoginPrompt = False
    Left = 48
    Top = 392
  end
  object fqry_ksongwones: TFDQuery
    Connection = fdc_ksongwones
    Transaction = FDTransaction1
    Left = 136
    Top = 392
  end
  object dsp_ksongwones: TDataSetProvider
    DataSet = fqry_ksongwones
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 392
  end
  object FDTransaction1: TFDTransaction
    Connection = fdc_ksongwones
    Left = 336
    Top = 392
  end
end
