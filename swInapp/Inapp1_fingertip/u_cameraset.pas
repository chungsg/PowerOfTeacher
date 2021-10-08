unit u_cameraset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  Tfm_cameraset = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    ComboBox2: TComboBox;
    Button3: TButton;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Connect;
    procedure Disconnect;
    procedure ShowVideoFormats;
  end;

var
  fm_cameraset: Tfm_cameraset;

implementation

{$R *.dfm}

uses
  u_main;

{ Tfm_cameraset }

procedure Tfm_cameraset.Connect;
var
  w, h: integer;
begin
  if (not fm_FingersTipMain.ImageEnView1.IO.DShowParams.Connected) then
  begin
    // set video source as index of IO.DShowParams.VideoInputs
    w := 0; h := 0;
    if ListBox1.ItemIndex > -1 then
    begin
      w := fm_FingersTipMain.ImageEnView1.IO.DShowParams.VideoFormats[ ListBox1.ItemIndex ].MaxWidth;
      h := fm_FingersTipMain.ImageEnView1.IO.DShowParams.VideoFormats[ ListBox1.ItemIndex ].MaxHeight;
    end;
    fm_FingersTipMain.ImageEnView1.IO.DShowParams.SetVideoInput(ComboBox1.ItemIndex,
                                              StrToIntDef(edit4.Text,0), // set this parameter if you have more than one camera with same name
                                              w, // capture width
                                              h, // capture height
                                              ''    // format
                                              );
    // enable frame grabbing
    fm_FingersTipMain.ImageEnView1.IO.DShowParams.EnableSampleGrabber := true;
    // connect to the video input
    fm_FingersTipMain.ImageEnView1.IO.DShowParams.Connect;
  end;
end;

procedure Tfm_cameraset.Disconnect;
begin
  fm_FingersTipMain.ImageEnView1.IO.DShowParams.Disconnect;
end;

procedure Tfm_cameraset.FormActivate(Sender: TObject);
begin
  // Fill video source combobox
  ComboBox1.Items.Assign(fm_FingersTipMain.ImageEnView1.IO.DShowParams.VideoInputs);

  // Select first item
  ComboBox1.ItemIndex := 0;

  ShowVideoFormats;
end;

procedure Tfm_cameraset.ShowVideoFormats;
var
  i: integer;
  s: string;
begin
  Connect;

  // fills video formats list box
  ListBox1.Clear;
  with fm_FingersTipMain.ImageEnView1.IO.DShowParams do
    for i := 0 to VideoFormatsCount - 1 do
    begin
      with VideoFormats[i] do
        s := system.SysUtils.Format('%s %dx%d', [Format, MaxWidth, MaxHeight]);
      ListBox1.Items.Add(s);
    end;
  ListBox1.ItemIndex:=0;

  // fills video source inputs
  ComboBox2.Items.Assign(fm_FingersTipMain.ImageEnView1.IO.DShowParams.VideoInputSources);
  // set current video source input
  ComboBox2.ItemIndex := fm_FingersTipMain.ImageEnView1.IO.DShowParams.VideoInputSource;

  Disconnect;
end;

procedure Tfm_cameraset.SpeedButton1Click(Sender: TObject);
begin
  if SpeedButton1.Caption = 'Show Video' then
  begin
    Connect;
    // start capture
    fm_FingersTipMain.ImageEnView1.IO.DShowParams.Run;
    fm_FingersTipMain.btn_Shot.Enabled := True;
  end
  else
    Disconnect;
  close;
end;

end.
