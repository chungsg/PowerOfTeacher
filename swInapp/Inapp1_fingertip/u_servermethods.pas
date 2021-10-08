// 
// Created by the DataSnap proxy generator.
// 2019-05-24 ¿ÀÀü 6:59:30
// 

unit u_servermethods;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FTITTH_StatusSetCommand: TDBXCommand;
    FTITTH_StatusReadCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure TITTH_StatusSet(order: Integer);
    function TITTH_StatusRead: string;
  end;

implementation

procedure TServerMethods1Client.TITTH_StatusSet(order: Integer);
begin
  if FTITTH_StatusSetCommand = nil then
  begin
    FTITTH_StatusSetCommand := FDBXConnection.CreateCommand;
    FTITTH_StatusSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTITTH_StatusSetCommand.Text := 'TServerMethods1.TITTH_StatusSet';
    FTITTH_StatusSetCommand.Prepare;
  end;
  FTITTH_StatusSetCommand.Parameters[0].Value.SetInt32(order);
  FTITTH_StatusSetCommand.ExecuteUpdate;
end;

function TServerMethods1Client.TITTH_StatusRead: string;
begin
  if FTITTH_StatusReadCommand = nil then
  begin
    FTITTH_StatusReadCommand := FDBXConnection.CreateCommand;
    FTITTH_StatusReadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTITTH_StatusReadCommand.Text := 'TServerMethods1.TITTH_StatusRead';
    FTITTH_StatusReadCommand.Prepare;
  end;
  FTITTH_StatusReadCommand.ExecuteUpdate;
  Result := FTITTH_StatusReadCommand.Parameters[0].Value.GetWideString;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods1Client.Destroy;
begin
  FTITTH_StatusSetCommand.DisposeOf;
  FTITTH_StatusReadCommand.DisposeOf;
  inherited;
end;

end.
