program fingertips;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {fm_InApp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfm_InApp, fm_InApp);
  Application.Run;
end.
