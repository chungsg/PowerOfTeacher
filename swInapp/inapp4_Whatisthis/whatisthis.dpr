program whatisthis;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {fm_main},
  u_Manual in 'u_Manual.pas' {fm_youtube},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Stellar');
  Application.CreateForm(Tfm_main, fm_main);
  Application.CreateForm(Tfm_youtube, fm_youtube);
  Application.Run;
end.
