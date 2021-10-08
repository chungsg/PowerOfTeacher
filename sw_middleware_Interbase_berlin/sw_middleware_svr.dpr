program sw_middleware_svr;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  u_main in 'u_main.pas' {fm_datasnapSvr},
  u_ServerMethods in 'u_ServerMethods.pas' {ServerMethods1: TDSServerModule},
  u_ServerContainer in 'u_ServerContainer.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_datasnapSvr, fm_datasnapSvr);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

