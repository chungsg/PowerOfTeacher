unit u_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfm_inapp = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    Panel1: TPanel;
    btn_1: TButton;
    btn_5: TButton;
    btn_clear: TButton;
    btn_1_2: TButton;
    btn_2: TButton;
    btn_3: TButton;
    chkb_hap: TCheckBox;
    pnl_time: TPanel;
    Timer: TTimer;
    procedure btn_1_2Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_inapp: Tfm_inapp;
  Total_time : Integer;

implementation

{$R *.dfm}

procedure Tfm_inapp.btn_1Click(Sender: TObject);
begin
  if chkb_hap.Checked then
  begin
    Total_Time := Total_Time + (60 * 1);
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end else
  begin
    Total_Time := 60 * 1;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end;
end;

procedure Tfm_inapp.btn_1_2Click(Sender: TObject);
begin
  if chkb_hap.Checked then
  begin
    Total_Time := Total_Time + 30;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end else
  begin
    Total_Time := 30;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end;
end;

procedure Tfm_inapp.btn_2Click(Sender: TObject);
begin
  if chkb_hap.Checked then
  begin
    Total_Time := Total_Time + (60 * 2);
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end else
  begin
    Total_Time := 60 * 2;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end;
end;

procedure Tfm_inapp.btn_3Click(Sender: TObject);
begin
  if chkb_hap.Checked then
  begin
    Total_Time := Total_Time + (60 * 3);
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end else
  begin
    Total_Time := 60 * 3;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end;
end;

procedure Tfm_inapp.btn_5Click(Sender: TObject);
begin
  if chkb_hap.Checked then
  begin
    Total_Time := Total_Time + (60 * 5);
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end else
  begin
    Total_Time := 60 * 5;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    Timer.Enabled := True;
  end;
end;

procedure Tfm_inapp.btn_clearClick(Sender: TObject);
begin
  Total_Time := 0;
  pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
  Timer.Enabled := False;
  chkb_hap.Checked := False;
end;

procedure Tfm_inapp.TimerTimer(Sender: TObject);
begin
  if Total_Time <> 0 then
  begin
    Total_Time := Total_Time - 1;
    pnl_time.caption := format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    if Total_Time < 5 then Beep;

  end else
  begin
    Timer.Enabled := False;
  end;
end;

end.
