unit u_setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfm_setting = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    mm_text: TMemo;
    Label1: TLabel;
    UpDown1: TUpDown;
    dt_size: TEdit;
    btn_add: TButton;
    mm_total: TMemo;
    btn_save: TButton;
    SaveDialog1: TSaveDialog;
    procedure mm_textChange(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure mm_totalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_setting: Tfm_setting;

implementation

{$R *.dfm}

uses
  u_main;

procedure Tfm_setting.btn_addClick(Sender: TObject);
begin
  fm_FingersTipMain.lbxText.Items.Add(mm_text.Text + '|' + dt_size.Text);
  mm_total.Lines.Add(mm_text.Text + '|' + dt_size.Text);
  mm_text.Clear;
  mm_text.SetFocus;
end;

procedure Tfm_setting.btn_saveClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    mm_total.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure Tfm_setting.FormShow(Sender: TObject);
begin
  dt_size.Text := IntToStr(mm_text.Font.Size);
end;

procedure Tfm_setting.mm_textChange(Sender: TObject);
begin
  if mm_text.Lines.Count > 0 then
    btn_add.Enabled := True;

end;

procedure Tfm_setting.mm_totalChange(Sender: TObject);
begin
  if mm_total.Lines.Count > 0 then
    btn_save.Enabled := True;
end;

procedure Tfm_setting.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  mm_text.Font.Size := StrToInt(dt_size.Text);
end;

end.
