program PowerOfTMain;

uses
  Vcl.Forms,
  u_powerofswtmain in 'u_powerofswtmain.pas' {fm_mainteacher},
  Vcl.Themes,
  Vcl.Styles,
  u_servermethods in 'u_servermethods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(Tfm_mainteacher, fm_mainteacher);
  Application.Run;
end.
