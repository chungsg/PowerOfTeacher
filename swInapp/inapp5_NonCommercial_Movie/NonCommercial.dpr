program NonCommercial;

uses
  Vcl.Forms,
  u_youtube in 'u_youtube.pas' {fm_youtube},
  u_servermethods in 'u_servermethods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_youtube, fm_youtube);
  Application.Run;
end.
