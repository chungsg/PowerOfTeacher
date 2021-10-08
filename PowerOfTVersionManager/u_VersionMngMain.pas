unit u_VersionMngMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdMultipartFormData;

type

//---------------------------------------------------------------------------
 { TRunThread }

   TRunThread = class(TThread)
     private
     OnEvent: TNotifyEvent;
     Sender: TObject;
     public
     constructor Create(event: TNotifyEvent; _sender: TObject);
     procedure Execute(); override;
   end;
 //---------------------------------------------------------------------------

  Tfm_powerofswsupload = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    pgbar_up: TProgressBar;
    btn_Start: TButton;
    dt_uploadfilename: TEdit;
    fod_up: TFileOpenDialog;
    IdHTTP_up: TIdHTTP;
    Panel1: TPanel;
    GridPanel2: TGridPanel;
    rdbtn_execute: TRadioButton;
    rdbtn_choice: TRadioButton;
    dt_folder: TEdit;
    procedure dt_uploadfilenameClick(Sender: TObject);
    procedure btn_StartClick(Sender: TObject);
    procedure IdHTTP_upWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP_upWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    { Private declarations }
    procedure Upload_Files(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fm_powerofswsupload: Tfm_powerofswsupload;

implementation

{$R *.dfm}

procedure Tfm_powerofswsupload.btn_StartClick(Sender: TObject);
var
  MyThread : TRunThread;
begin

  //�����带 �̿��Ͽ� �ð��� ���� �ɸ��� �۾��� ó��
  Mythread := TRunThread.Create(Upload_Files,Sender);

//  if UpperCase(ExtractFileExt(dt_uploadfilename.Text)) = '.INI' then
//  begin
//     idhttp_up.Post('http://210.218.83.97:8088/fileupdate/powerofsws.ini',Trim(dt_uploadfilename.Text))
//  end;
//  if UpperCase(ExtractFileExt(dt_uploadfilename.Text)) = '.EXE' then
//  begin
////   showmessage('http://210.218.83.98:8088/fileupdate/' + ExtractFilename(dt_uploadfilename.Text));
//    idhttp_up.Post('http://210.218.83.97:8088/fileupdate/' + ExtractFilename(dt_uploadfilename.Text),Trim(dt_uploadfilename.Text))
//  end;
end;

procedure Tfm_powerofswsupload.dt_uploadfilenameClick(Sender: TObject);
begin
  if rdbtn_execute.Checked then
  begin
    fod_up.DefaultFolder := ExtractFilePath(ParamStr(0));
    if fod_up.Execute then
    begin
      dt_uploadfilename.Text := fod_up.FileName;
      btn_Start.Enabled := True;
    end;
  end;

  if rdbtn_Choice.Checked then
  begin
    fod_up.DefaultFolder := dt_folder.Text;
    if fod_up.Execute then
    begin
      dt_uploadfilename.Text := fod_up.FileName;
      btn_Start.Enabled := True;
    end;
  end;

end;

procedure Tfm_powerofswsupload.IdHTTP_upWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  if AWorkMode = wmRead then pgBar_up.Position := AWorkCount;
end;

procedure Tfm_powerofswsupload.IdHTTP_upWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
 if AWorkMode = wmRead then
   begin
      pgBar_up.Max := AWorkCountMax;
      pgBar_up.Position := 0;
   end;
end;

procedure Tfm_powerofswsupload.Upload_Files(Sender: TObject);
var
  RetStr : String;
  RetStringList : TSTringList;
  DataStream: TIdMultiPartFormDataStream; // php CGI�� ���� ���ε忡 ���
  rs: TStringStream;                      // php CGI�� ���� ���ε忡 ���
begin
  // ����ġ ����, PHP ���α׷������� ���õ� ������ ���� �����ϴ� �κ�
  if ((dt_uploadfilename.Text <> '') and (LowerCase(ExtractFileExt(dt_uploadfilename.Text)) = '.ini'))
    or ((dt_uploadfilename.Text <> '') and (LowerCase(ExtractFileExt(dt_uploadfilename.Text)) = '.exe')) then
  begin
    DataStream:= TIdMultiPartFormDataStream.Create;
    rs:= TStringStream.Create;
    try
      IdHTTP_up.Request.ContentType := DataStream.RequestContentType;

  // Post �� folder, filename ���� �����մϴ�.
  //    if cbb_pattern.Text = 'video' then
  //      DataStream.AddFormField('folder','swmaterials/video'); // ������ ����� video ����
  //    if cbb_pattern.Text = 'image' then
  //      DataStream.AddFormField('folder','swmaterials/image'); // ������ ����� image ����
      DataStream.AddFormField('folder','fileupdate'); // ������ ����� ���� �̸�

      DataStream.AddFormField('filename',ExtractFileName(dt_uploadfilename.Text));
      DataStream.AddFile('upfile',dt_uploadfilename.Text,'application/octet-stream');

      DataStream.Position := 0;

  //  IdHTTP_upload.Post('http://210.218.83.97:8088/kswvod/intro.png',Trim(dt_filename.Text));
      IdHTTP_up.Post('http://210.218.83.97:8088/swmfileup.php', DataStream, rs);
    finally
      RetStr := LowerCase(rs.DataString);
      FreeAndNil(DataStream);
      FreeAndNil(rs);
    end;
  end else Showmessage('������ ������ �����ϼ���.');
end;

{ TRunThread }

constructor TRunThread.Create(event: TNotifyEvent; _sender: TObject);
begin
  inherited Create(false);
  FreeOnTerminate := true;
  OnEvent := event;
  Sender := _sender;
end;

procedure TRunThread.Execute;
begin
  OnEvent(Sender);
end;

end.
