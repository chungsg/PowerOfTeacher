program POTVersionMng;

uses
  Vcl.Forms,
  u_VersionMngMain in 'u_VersionMngMain.pas' {fm_powerofswsupload},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(Tfm_powerofswsupload, fm_powerofswsupload);
  Application.Run;
end.
