unit u_youtube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WebView2, Winapi.ActiveX, Vcl.Edge,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.OleCtrls, AXVLC_TLB,
  System.ImageList, Vcl.ImgList, System.UITypes, SHDocVw, Winapi.ShellAPI,
  Vcl.Menus, Data.DBXDataSnap, Data.DBXCommon, Data.DbxHTTPLayer, Data.DB,
  Data.SqlExpr;

type
  Tfm_youtube = class(TForm)
    Page_Main: TPageControl;
    TS_ViewYoutube: TTabSheet;
    TS_Youtube: TTabSheet;
    TS_YoutubeList: TTabSheet;
    pnl_Top: TPanel;
    GridPanel2: TGridPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GridPanel1: TGridPanel;
    gpnl_bottom: TGridPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ImageList1: TImageList;
    cbb_subject: TComboBox;
    dt_url: TEdit;
    dt_title: TEdit;
    btn_Save: TButton;
    Panel4: TPanel;
    Panel6: TPanel;
    mm_youtubeurl: TMemo;
    cbb_vsubject: TComboBox;
    cbb_vyoutubelist: TComboBox;
    Edge_youtube: TEdgeBrowser;
    Panel5: TPanel;
    lb_youtubetitle: TListBox;
    Splitter1: TSplitter;
    pnl_search: TPanel;
    GridPanel4: TGridPanel;
    dt_search: TEdit;
    btn_search: TButton;
    pnl_youtube: TPanel;
    pnl_Web: TPanel;
    pnl_ViewYoutube: TPanel;
    PopupMenu1: TPopupMenu;
    pu_AutoPlay: TMenuItem;
    VLCPlugin21: TVLCPlugin2;
    Web_Notice: TWebBrowser;
    pu_theReplay: TMenuItem;
    SQLCon_public: TSQLConnection;
    cbb_authority: TComboBox;
    chb_search: TCheckBox;
    Panel10: TPanel;
    GridPanel8: TGridPanel;
    btn_StopNStart: TButton;
    GridPanel3: TGridPanel;
    cbb_mSubject: TComboBox;
    dt_mUrl: TEdit;
    dt_mTitle: TEdit;
    btn_mSave: TButton;
    cbb_mAuthority: TComboBox;
    btn_mDelete: TButton;
    procedure Page_MainChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_vsubjectChange(Sender: TObject);
    procedure cbb_vyoutubelistChange(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chb_searchClick(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure VLCPlugin21MediaPlayerEndReached(Sender: TObject);
    procedure pu_AutoPlayClick(Sender: TObject);
    procedure pu_theReplayClick(Sender: TObject);
    procedure btn_StopNStartClick(Sender: TObject);
    procedure lb_youtubetitleDblClick(Sender: TObject);
    procedure btn_mSaveClick(Sender: TObject);
    procedure btn_mDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowNHidePanel(ParentPanel: TPanel; ShowPanel: TPanel);
    Function Delete_DirnFiles(DirFN : String) : Boolean;
    procedure PlayMovie(MovieUrl: String);
    procedure LoadLesson(sid: String);       // 등록된 활용 동영상의 교과리스트 불러오는 부분
    procedure LoadYoutubeAllList(sid: String);  // 등록된 소유자의 동영상 목록을 불러오는 부분
  public
    { Public declarations }
  end;

var
  fm_youtube: Tfm_youtube;
  Youtube, Title, Movie, Lesson: TStringList;
  AutoReplay : Integer;
  tid, tname, tgrade, tban, tbunho, tiphak, tconnectip : String;

implementation

{$R *.dfm}

uses u_servermethods;

var
  Server : TServerMethods1Client;

procedure Tfm_youtube.BitBtn12Click(Sender: TObject);
begin
  Youtube.Clear;
  mm_youtubeurl.Lines.SaveToFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini');
  Youtube.LoadFromFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini');
end;

procedure Tfm_youtube.BitBtn1Click(Sender: TObject);
begin
  Edge_youtube.GoBack;
end;

procedure Tfm_youtube.BitBtn2Click(Sender: TObject);
begin
  Edge_youtube.GoForward;
end;

procedure Tfm_youtube.BitBtn3Click(Sender: TObject);
begin
  Edge_youtube.Refresh;
end;

procedure Tfm_youtube.BitBtn4Click(Sender: TObject);
begin
   Edge_youtube.Navigate('https://www.daum.net');
end;

procedure Tfm_youtube.BitBtn7Click(Sender: TObject);
var
  ItemPos: Integer;
begin
//  if (lb_youtubetitle.ItemIndex <> -1) then
//  begin
//    ItemPos := lb_youtubetitle.ItemIndex;
//    lb_youtubetitle.Items.Delete(ItemPos);
//    mm_youtubeurl.Lines.Delete(ItemPos);
//    if ItemPos < lb_youtubetitle.Items.Count - 1 then
//      lb_youtubetitle.ItemIndex := ItemPos
//    else lb_youtubetitle.ItemIndex := ItemPos - 1;
//  end;
end;

procedure Tfm_youtube.btn_AddClick(Sender: TObject);
begin
//  if (cbb_subject.ItemIndex <> -1) and (dt_url.Text <> '') and (dt_title.Text <> '') then
//  begin
//    Youtube.Values[cbb_subject.Text+'='+Trim(dt_title.text)] := (Trim(dt_url.Text));
//    Youtube.Sort;
//    lbl_count.Caption := Youtube.Count.ToString + '개';
//    cbb_subject.Text := '';
//    dt_url.Text := '';
//    dt_title.Text := '';
//  end else Showmessage('저장에 필요한 조건을 확인하세요.');
end;

procedure Tfm_youtube.btn_mDeleteClick(Sender: TObject);
var
  tf: Boolean;
begin
  if (cbb_mSubject.Text <> '') and (dt_mTitle.Text <> '') and (dt_mUrl.Text <> '') and (cbb_mAuthority.Text <> '') then
    begin
      if not sqlcon_public.Connected then sqlcon_public.Connected := True;
      server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
      tf := Server.swm_DeleteYoutube(tid,cbb_mSubject.Text,Trim(dt_mTitle.Text),Trim(dt_mUrl.Text));
      if sqlcon_public.Connected then sqlcon_public.Connected := False;
      FreeAndNil(Server);

      if not tf then  // 삭제가 되었으면
      begin
        Showmessage('선택하신 자료를 삭제하였습니다.');
        cbb_mSubject.ItemIndex := -1;
        dt_mTitle.text := '';
        dt_mUrl.Text := '';
        cbb_mAuthority.ItemIndex := -1;

        mm_youtubeurl.Lines.Clear;
        lb_youtubetitle.Items.Clear;

        LoadYoutubeAllList(tid);  // 본인이 등록한 동영상 자료를 모두 불러오는 부분

      end else Showmessage('선택하신 자료를 삭제하지 못하였습니다.');

    end;
end;

procedure Tfm_youtube.btn_mSaveClick(Sender: TObject);
begin
  if (cbb_mSubject.Text <> '') and (dt_mTitle.Text <> '') and (dt_mUrl.Text <> '') and (cbb_mAuthority.Text <> '') then
    begin
      if not sqlcon_public.Connected then sqlcon_public.Connected := True;
      server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
      Server.swm_InsertYoutube(tid,cbb_mSubject.Text,Trim(dt_mTitle.Text),Trim(dt_mUrl.Text),cbb_mAuthority.text);
      if sqlcon_public.Connected then sqlcon_public.Connected := False;
    end;
end;

procedure Tfm_youtube.btn_SaveClick(Sender: TObject);

begin
  if (cbb_subject.Text <> '') and (dt_title.Text <> '') and (dt_url.Text <> '') and (cbb_authority.Text <> '') then
    begin
      if not sqlcon_public.Connected then sqlcon_public.Connected := True;
      server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
      Server.swm_InsertYoutube(tid,cbb_subject.Text,Trim(dt_title.Text),Trim(dt_url.Text),cbb_authority.text);
      if sqlcon_public.Connected then sqlcon_public.Connected := False;
    end;

//  if Youtube.Count > 0 then
//  begin
//    Youtube.SaveToFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini')
//  end;
end;

procedure Tfm_youtube.btn_searchClick(Sender: TObject);
var
  mList: TStringList;
  i: Integer;
  Keyword: String;
begin
  ShowNHidePanel(pnl_ViewYoutube, pnl_Web);

  //동영상의 제목으로 검색하여 관련 링크를 불러오는 부분
  if dt_search.Text <> '' then
  begin
    VLCPlugin21.playlist.stop;
    VLCPlugin21.playlist.clear;

    if not sqlcon_public.Connected then sqlcon_public.Connected := True;
    server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
    Keyword := Server.swm_LoadKeyWordYoutube(tid, Trim(dt_Search.Text));
    if sqlcon_public.Connected then sqlcon_public.Connected := False;

    Movie.Clear;
    cbb_vYoutubelist.Text := '';
    cbb_vyoutubelist.Items.Clear;

    mList := TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(Keyword),mList);
    for i := 0 to (mList.Count - 1) div 2 do
    begin
      cbb_vyoutubelist.Items.Add(mList.Strings[i*2]);
      Title.Add(mList.Strings[i*2]);
      Movie.Add(mList.Strings[i*2+1]);
      mList.Clear;
    end;
    FreeAndNil(mList);
    cbb_vYoutubeList.TextHint := '제시할 유튜브 영상이 ' + cbb_vYoutubeList.Items.Count.ToString + '개 검색되었습니다.';
  end;

//  if Youtube.Count > 0 then
//  begin
//    VLCPlugin21.playlist.stop;
//    VLCPlugin21.playlist.clear;
//
//    Movie.Clear;
//    cbb_vYoutubelist.Text := '';
//    cbb_vyoutubelist.Items.Clear;
//    mList:= TStringList.Create;
//    for i := 0 to Youtube.Count - 1 do
//    begin
//      ExtractStrings(['='],[' '],PChar(Youtube.Strings[i]),mList);
//      if Pos(Trim(dt_Search.Text), mList.Strings[1]) > 0 then
//      begin
//        cbb_vyoutubelist.Items.Add(mList.Strings[1]);
//        Movie.Add(mList.Strings[2])
//      end;
//      mList.Clear;
//    end;
//    FreeAndNil(mList);
//
//    cbb_vYoutubeList.TextHint := '제시할 유튜브 영상이 ' + cbb_vYoutubeList.Items.Count.ToString + '개 검색되었습니다.';
//  end;
end;

procedure Tfm_youtube.btn_StopNStartClick(Sender: TObject);
begin
  if (VLCPlugin21.playlist.isPlaying) and (btn_StopNStart.Caption = '여기서 멈추기') then
  begin
    VLCPlugin21.playlist.togglePause;
    btn_StopNStart.Caption := '현재부터 시작'
  end else
  begin
    VLCPlugin21.playlist.togglePause;
    btn_StopNStart.Caption := '여기서 멈추기'
  end;
end;

procedure Tfm_youtube.cbb_vsubjectChange(Sender: TObject);
var
  mList: TStringList;
  i: Integer;
  TitleLink: String;
begin
  //과목을 선택하면 등록된 과목의 영상 제목과 링크를 불러오는 부분
  if cbb_vsubject.ItemIndex <> -1 then
  begin
    VLCPlugin21.playlist.stop;
    VLCPlugin21.playlist.clear;

    if not sqlcon_public.Connected then sqlcon_public.Connected := True;
    server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
    TitleLink := Server.swm_LoadLessonYoutube(tid, cbb_vSubject.Text);
    if sqlcon_public.Connected then sqlcon_public.Connected := False;

    Movie.Clear;
    cbb_vYoutubelist.Text := '';
    cbb_vyoutubelist.Items.Clear;

    mList := TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(TitleLink),mList);
    for i := 0 to (mList.Count - 1) div 2 do
    begin
      cbb_vyoutubelist.Items.Add(mList.Strings[i*2]);
      Title.Add(mList.Strings[i*2]);
      Movie.Add(mList.Strings[i*2+1])
    end;
    FreeAndNil(mList);
  end;

  cbb_vYoutubeList.TextHint := '제시할 유튜브 영상이 ' + cbb_vYoutubeList.Items.Count.ToString + '개 검색되었습니다.';

  pnl_Youtube.Visible := False;
  pnl_Youtube.Align := alNone;
end;

procedure Tfm_youtube.cbb_vyoutubelistChange(Sender: TObject);
var
  id: Integer;
begin
  AutoReplay := cbb_vyoutubelist.ItemIndex;

  ShowNHidePanel(pnl_ViewYoutube, pnl_youtube);

  pnl_Youtube.Align := alClient;
  pnl_Youtube.Visible := True;

  VLCPlugin21.playlist.stop;
  VLCPlugin21.playlist.clear;

  id := VLCPlugin21.playlist.add(PChar(Movie.Strings[cbb_vyoutubelist.ItemIndex]),null,null);
  VLCPlugin21.playlist.playItem(id);
  Caption := '광고없는 유튜브 영상보기 - ' + Title.Strings[cbb_vYoutubelist.itemIndex];
end;

procedure Tfm_youtube.chb_searchClick(Sender: TObject);
begin
  if chb_search.Checked then
  begin
    pnl_Search.Visible := True;
    cbb_vsubject.Visible := False;
  end
  else
  begin
    pnl_Search.Visible := False;
    cbb_vsubject.Visible := True;
  end
end;

function Tfm_youtube.Delete_DirnFiles(DirFN: String): Boolean;
var
  SHFileOpStruct: TSHFileOpStruct;
  DirBuf: array [0..255] of char;
  Directory: string;
begin
  // 폴더와 폴더 안의 파일을 한꺼번에 삭제하는 부분
  Directory := ExcludeTrailingPathDelimiter(DirFN);
  Fillchar(SHFileOpStruct, sizeof(SHFileOpStruct), 0);
  FillChar(DirBuf, sizeof(DirBuf), 0);
  StrPCopy(DirBuf, Directory);
  with SHFileOpStruct do
  begin
      Wnd := 0;
      pFrom := @DirBuf;
      wFunc := FO_DELETE;
     // fFlags := fFlags or FOF_ALLOWUNDO; // 휴지통에 담기
      fFlags := fFlags or FOF_NOCONFIRMATION;
      fFlags := fFlags or FOF_SILENT;
  end;
  Result := (SHFileOperation(SHFileOpStruct) = 0);
end;

procedure Tfm_youtube.FormClose(Sender: TObject; var Action: TCloseAction);
var
  mList: TStringList;
begin
  if Youtube.Count > 0 then
  begin
    mList:= TStringList.Create;
    if FileExists(ExtractFilePath(ParamStr(0))+'NonCommercial.ini') then
    begin
      mList.LoadFromFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini');
      if Youtube.Count > mList.Count then
      begin
        if MessageDlg('유튜브 영상자료 목록을 저장할까요?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
        begin
          Youtube.SaveToFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini');
        end else Action := caFree;
      end;
    end;
  end;

  FreeAndNil(Youtube);
  FreeAndNil(Title);
  FreeAndNil(Movie);
  FreeAndNil(Lesson);

//  Delete_DirnFiles(ParamStr(0) + '.WebView2');
  ShellExecute(handle, 'open','poweroftmain.exe',PChar(tid+'|'+tname+'|'+tgrade+'|'+tban+'|'+tbunho+'|'+tiphak+'|'+tconnectip),nil,SW_NORMAL);
end;

procedure Tfm_youtube.FormCreate(Sender: TObject);
var
  mList : TStringList;
  i : integer;
  person : TStringList;
begin
  if ParamStr(1) <> '' then
  begin
    Person := TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(ParamStr(1)),Person);
    tid := Person.Strings[0];
    tname := Person.Strings[1];
    tgrade := Person.Strings[2];
    tban := Person.Strings[3];
    tbunho := Person.Strings[4];
    tiphak := Person.Strings[5];
    tconnectip := Person.Strings[6];
    FreeAndNil(Person);
  end else
  begin
    Showmessage('PowerOfTeacher.exe를 실행하시기 바랍니다.');
    Application.Terminate;
  end;

  Youtube:= TStringList.Create;
  Title:= TStringList.Create;
  Movie:= TStringList.Create;
  Lesson := TStringList.Create;

//  if FileExists(ExtractFilePath(ParamStr(0))+'NonCommercial.ini') then
//  begin
//    Youtube.LoadFromFile(ExtractFilePath(ParamStr(0))+'NonCommercial.ini');
//    lbl_count.Caption := Youtube.Count.ToString + '개';
//
//    mList:= TStringList.Create;
//    for i := 0 to Youtube.Count - 1 do
//    begin
//      ExtractStrings(['='],[' '],PChar(Youtube.Strings[i]),mList);
//      if cbb_vsubject.items.IndexOf(mList.Strings[0]) = -1 then  cbb_vsubject.Items.Add(mList.Strings[0]);
//      mList.Clear;
//    end;
//    FreeAndNil(mList);
//  end;
end;

procedure Tfm_youtube.FormShow(Sender: TObject);
begin
//  Page_Main.ActivePage := TS_ViewYoutube;
//  pnl_Search.Visible := False;

//  ShowNHidePanel(pnl_ViewYoutube, pnl_Web);

//  WebBrowser1.Navigate('https://blog.daum.net/chungsg/');
//  Edge_youtube.Navigate('https://www.youtube.com');

  TS_Youtube.TabVisible := True;
  TS_YoutubeList.TabVisible := True;
  TS_ViewYoutube.TabVisible := True;

  Page_Main.ActivePage := TS_ViewYoutube;
  ShowNHidePanel(pnl_ViewYoutube, pnl_Web);
  Web_Notice.Navigate('https://blog.daum.net/chungsg');
  LoadLesson(tid);
end;

procedure Tfm_youtube.lb_youtubetitleDblClick(Sender: TObject);
var
  mList: TStringList;
begin
  if lb_youtubetitle.ItemIndex <> -1 then
  begin
    mList := TStringList.Create;
    ExtractStrings(['|'],[' '], PChar(mm_youtubeurl.Lines.Strings[lb_youtubeTitle.ItemIndex]), mList);
    cbb_mSubject.ItemIndex := cbb_mSubject.Items.IndexOf(mList.Strings[0]);
    dt_mTitle.text := mList.Strings[1];
    dt_mUrl.Text := mList.Strings[2];
    cbb_mAuthority.ItemIndex := cbb_mAuthority.Items.IndexOf(mList.Strings[3]);
  end;
end;

procedure Tfm_youtube.LoadLesson(sid: String);
var
  mList: TStringList;
  i: Integer;
  Subject: String;
begin
  cbb_vSubject.Items.Clear;
  if not sqlcon_public.Connected then sqlcon_public.Connected := True;
  server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
  Subject := Server.swm_loadlessonList(sid);
  if sqlcon_public.Connected then sqlcon_public.Connected := False;

  mList := TStringList.Create;
  ExtractStrings(['|'],[' '],PChar(Subject),mList);
  for i := 0 to mList.Count - 1 do
    if cbb_vSubject.Items.IndexOf(mList.Strings[i]) = -1 then
      cbb_vsubject.Items.Add(mList.Strings[i]);
end;

procedure Tfm_youtube.LoadYoutubeAllList(sid: String);
var
  mList: TStringList;
  i: Integer;
  Subject: String;
begin

  if not sqlcon_public.Connected then sqlcon_public.Connected := True;
  server := TServerMethods1Client.Create(sqlcon_public.DBXConnection);
  Subject := Server.swm_loadYoutubeAllList(sid);
  if sqlcon_public.Connected then sqlcon_public.Connected := False;

//  Showmessage(subject); exit;
  if Subject <> '' then
  begin
    mList:= TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(Subject),mList);
    for i := 0 to (mList.Count - 1) div 4 do
    begin
      lb_youtubetitle.Items.Add( mList.Strings[i*4+1] );
      mm_Youtubeurl.Lines.Add( mList.Strings[i*4] + '|' + mList.Strings[i*4+1] + '|' +
                               mList.Strings[i*4+2] + '|' + mList.Strings[i*4+3]);
    end;
    FreeAndNil(mList);
  end;

end;

procedure Tfm_youtube.pu_AutoPlayClick(Sender: TObject);
begin
  if pu_AutoPlay.Checked then pu_AutoPlay.Checked := False else
  begin
    pu_AutoPlay.Checked := True;
    pu_TheReplay.Checked := False;
    AutoReplay := cbb_vyoutubelist.ItemIndex;
  end;
end;

procedure Tfm_youtube.pu_theReplayClick(Sender: TObject);
begin
  if pu_TheRePlay.Checked then pu_TheRePlay.Checked := False else
  begin
    pu_TheRePlay.Checked := True;
    pu_Autoplay.Checked := False;
    AutoReplay := cbb_vyoutubelist.ItemIndex;
  end;
end;

procedure Tfm_youtube.Page_MainChange(Sender: TObject);
var
  i: Integer;
  mList: TStringList;
begin
  VLCPlugin21.playlist.stop;
  VLCPlugin21.playlist.clear;

  Case TPageControl(Sender).ActivePageIndex of
  0 : begin
        LoadLesson(tid);
//        mList:= TStringList.Create;
//        for i := 0 to Youtube.Count - 1 do
//        begin
//          ExtractStrings(['='],[' '],PChar(Youtube.Strings[i]),mList);
//          if cbb_vsubject.items.IndexOf(mList.Strings[0]) = -1 then  cbb_vsubject.Items.Add(mList.Strings[0]);
//          mList.Clear;
//        end;
        Web_Notice.Navigate('https://blog.daum.net/chungsg');
      end;
  1 : begin
        Edge_youtube.Navigate('https://www.youtube.com');
      end;
  2 : begin
        mm_youtubeurl.Lines.Clear;
        lb_youtubetitle.Items.Clear;

        LoadYoutubeAllList(tid);  // 본인이 등록한 동영상 자료를 모두 불러오는 부분


      end;
  End;

end;

procedure Tfm_youtube.PlayMovie(MovieUrl: String);
var
  id : Integer;
begin
  ShowNHidePanel(pnl_ViewYoutube, pnl_Youtube);

  VLCPlugin21.playlist.stop;
  VLCPlugin21.playlist.clear;
//  id := VLCPlugin21.playlist.add(PChar(Movie.Strings[cbb_vyoutubelist.ItemIndex]),null,null);
  id := VLCPlugin21.playlist.add(PChar(MovieUrl),null,null);
  VLCPlugin21.playlist.playItem(id);

end;

procedure Tfm_youtube.ShowNHidePanel(ParentPanel, ShowPanel: TPanel);
var
  i: Integer;
begin
//  if (DataStatus = 'video') or (DataStatus = 'youtube' )  then
//  begin
//    VLCPlugin21.playlist.stop;
//    VLCPlugin21.playlist.clear;
//  end;

  for i := 0 to TPanel(ParentPanel).ControlCount - 1 do
    if TPanel(ParentPanel).Controls[i] is TPanel then
    begin
      TPanel(ParentPanel).Controls[i].Visible := False;
      TPanel(ParentPanel).Controls[i].Align := alNone;
    end;
  TPanel(ShowPanel).Visible := True;
  TPanel(ShowPanel).Align := alClient;
end;

procedure Tfm_youtube.VLCPlugin21MediaPlayerEndReached(Sender: TObject);
var
  id: Integer;
begin

  if (not VLCPlugin21.playlist.isPlaying) and (pu_AutoPlay.Checked = True) then
  begin
    if (AutoReplay < (Movie.Count - 1)) then
    begin
      AutoReplay := AutoReplay + 1;
      cbb_vyoutubelist.ItemIndex := AutoReplay;
      Caption := '광고없는 유튜브 영상보기 - ' + Title.Strings[cbb_vYoutubelist.itemIndex];
//      PlayMovie(Movie.Strings[AutoReplay]);
      ShowNHidePanel(pnl_ViewYoutube, pnl_youtube);

      pnl_Youtube.Align := alClient;
      pnl_Youtube.Visible := True;
// 아래 라인을 실행하면 현재 이벤트가 한번 더 실행되어 주석처리 함.
//      VLCPlugin21.playlist.stop;
//      VLCPlugin21.playlist.clear;

      id := VLCPlugin21.playlist.add(PChar(Movie.Strings[cbb_vyoutubelist.ItemIndex]),null,null);
      VLCPlugin21.playlist.playItem(id);

      sleep(2000);
    end else
    begin
      AutoReplay := 0;
      cbb_vyoutubelist.ItemIndex := AutoReplay;
      Caption := '광고없는 유튜브 영상보기 - ' + Title.Strings[cbb_vYoutubelist.itemIndex];
//      PlayMovie(Movie.Strings[AutoReplay]);

      ShowNHidePanel(pnl_ViewYoutube, pnl_youtube);

      pnl_Youtube.Align := alClient;
      pnl_Youtube.Visible := True;

// 아래 라인을 실행하면 현재 이벤트가 한번 더 실행되어 주석처리 함.
//      VLCPlugin21.playlist.stop;
//      VLCPlugin21.playlist.clear;

      id := VLCPlugin21.playlist.add(PChar(Movie.Strings[cbb_vyoutubelist.ItemIndex]),null,null);
      VLCPlugin21.playlist.playItem(id);

      sleep(2000);
    end;
  end;

  if (not VLCPlugin21.playlist.isPlaying) and (pu_TheRePlay.Checked = True) then
  begin
      cbb_vyoutubelist.ItemIndex := AutoReplay;
      Caption := '광고없는 유튜브 영상보기 - ' + Title.Strings[cbb_vYoutubelist.itemIndex];
//      PlayMovie(Movie.Strings[AutoReplay]);
      ShowNHidePanel(pnl_ViewYoutube, pnl_youtube);

      pnl_Youtube.Align := alClient;
      pnl_Youtube.Visible := True;
// 아래 라인을 실행하면 현재 이벤트가 한번 더 실행되어 주석처리 함.
//      VLCPlugin21.playlist.stop;
//      VLCPlugin21.playlist.clear;

      id := VLCPlugin21.playlist.add(PChar(Movie.Strings[cbb_vyoutubelist.ItemIndex]),null,null);
      VLCPlugin21.playlist.playItem(id);

      sleep(2000);
  end;

end;

end.
