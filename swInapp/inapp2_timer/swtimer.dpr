program swtimer;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {fm_inapp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_inapp, fm_inapp);
  Application.Run;
end.
