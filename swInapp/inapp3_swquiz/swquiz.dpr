program swquiz;

uses
  Vcl.Forms,
  u_swquizmain in 'u_swquizmain.pas' {fm_inapp},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(Tfm_inapp, fm_inapp);
  Application.Run;
end.
