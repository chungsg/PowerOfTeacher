unit U_ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.Provider,
  Vcl.Dialogs, DBXJSONCommon, Vcl.Imaging.jpeg, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, PngImage, Vcl.Graphics, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Data.DBXInterBase, Data.FMTBcd, Data.SqlExpr;

type
  TServerMethods1 = class(TDSServerModule)
    fdc_goldenbell: TFDConnection;
    qry_gb_hanja_dic: TFDQuery;
    dsp_qry_db_hanja_dic: TDataSetProvider;
    tbl_member: TFDTable;
    tbl_member_Provider: TDataSetProvider;
    fdc_public: TFDConnection;
    qry_public: TFDQuery;
    dsp_public: TDataSetProvider;
    qry_swmm: TFDQuery;
    fdc_theonedc: TFDConnection;
    dsp_theonedc: TDataSetProvider;
    qry_theonedc: TFDQuery;
    fdc_ksongwones: TFDConnection;
    fqry_ksongwones: TFDQuery;
    dsp_ksongwones: TDataSetProvider;
    FDTransaction1: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
    // 회원 가입, 인증, 수정
    function Member_AddUser(name,userid,userpw,grade,ban,bunho,iphak : String):string;
    function Member_Confirm(userid: string): string;
    function Member_Login(userid, userpw: string): string;
    function Member_SaveAttendance(userid, username, grade, ban, bunho, ldate, lcount, lstay: String) : string;
    function Member_LoadAttendance(grade, ban, ldate: String):String;
    function Member_LoginPhonenum(PhoneNum: String): String;
    procedure Member_ModifyUser(name,userid,school,grade,ban : String);
    function Member_IDPWSchool(grade, ban, name: String):String;
    function Member_Present(username,userid,grade,ban,bunho: String) : string;
    function Member_LoadPresent(grade, ban, presentDate : String): String;
    function Member_IsPresent(userid,presentDate: String): Boolean;
    function Member_LessonAll(grade, ban: String): String;
    function Member_Conversion: String;
    procedure Member_SaveInterbase(username,userid,userpw,grade,ban,bunho: String);

    function member_AddNotice(grade, title, notice: String): String;
    function Member_LoadNotice(grade : String): String;

    function Member_AddHealth(grade, ban, bunho, username, student, family, ampm: String):String;
    function Member_LoadHealth(grade, ban, medicheckdate: String): String;
    function Member_IsHealth(grade,ban,bunho,username,ampm: String): Boolean;

    procedure Member_update_cbi(userid, cbi : String);
    procedure Member_delete_cbi(userid: String);

    procedure Online_OrderSave(sigak, grade, chasi, balnum, baltype: String);
    procedure Online_OrderClear(sigak, grade: String);
    function Online_OrderLoad(sigak, grade, chasi: String): String;
    procedure Online_ResponseSave(gencode, baltype, username, response: String);
    function Online_ResponseLoad(gencode: String): String;
    procedure Online_UrlSave(sigak, grade, url: String);
    function Online_UrlLoad(sigak,grade: String): String;

    procedure Online_UrlSaveTeacher(url: String);
    function Online_UrlLoadStudent(grade, ban: String): String;
    function Online_UrlLoadTeacher: String;
    function Online_StudentLoad(grade, ban: String) : String;

    procedure pub_SaveYoutubeAddress(url: String);
    function pub_LoadYoutubeAddress : String;

    // 한자자료 중 이미지로 된 부수자료 입력 함수
    function HGB_hanja_busu_Insert(level, sublevel, hun, um, busu, linenum, comment:String; Hanjaimg:TMemoryStream) : Boolean;
    // 한자자료 중 텍스로 된 급수자료 입력 함수
    function HGB_hanja_gubsu_Insert(level, sublevel, hun, um, hanja, busu, linenum, comment:String): Boolean;
    function HGB_ReadSubLevelTitle(level: String) : String;                                            // level에 포함된 sublevel의 단계를 반환
    function HGB_AddHanja(level, sublevel, hun, um, busu, word, filename, comment: String) : String;
    function HGB_ReadLevelData(level, sublevel : String) : String;
    function HGB_ReadLevelTitle : String;                                                              // 등록된 한자의 레벨만 반환
    function HGB_ReadHanja(hun, um: String) : Integer;
    function HGB_ReadBusu(busu : String) : String;
    function HGB_AddExcept(Level, SubLevel, Userid, HanjaId : String) : Boolean;
    function HGB_ReadExcept(Level, SubLevel, Userid : String) : String;
    function HGB_ReadGoldenbell(range : Integer) : String;
    procedure HGB_SaveHanjaContestScore(id, name, grade, ban, level, score, sigak : String);
    function HGB_ReadHanjaContestScore(id, level : String) : String;
    function HGB_SaveHanjaPracticeScore(id, name, grade, ban, level, score, sigak : String): String;
    function HGB_ReadHanjaPracticeScore(id : String): String;
    procedure HGB_SaveHanjaError(ErrorData : String);
    function HGB_ReadHanjaError(id : String): String;

    function puzzle_SaveScore(id, name, grade, ban, puzzle, level, score, sigak: String): String;
    function puzzle_LoadScore(id, puzzle: String): String;

    //송원 회의자료 공유 서비스
    function swmm_Regist(title, author, filename, mdate: String) : Boolean;
    function swmm_Meetinglist(mdate: String) : String;

    // 신더원 공사진행상황 서비스
    function theone_AddUser(name, phone, area, atype : String): String;
    function theone_UpdateUser(name, phone, area, atype: String; num:Integer): String;
    function theone_Login(PhoneNum: String): String;
    function theone_AddArea(area, comment: String): String;
    function theone_LoadArea: String;
    function theone_LoadUserArea(PhoneNum: String):String;
    function theone_LoadPhone(num: String): String;
    function theone_AddProcess(area, title, pdate, progress, FileName: String) : String;
    function theone_LoadProcessImg(area, title, pdate: String) : String;

    //데이터스냅을 이용한 파일 전송
    function SendFile(fType, fName : String; AValue : TJSONArray) : String;
    function LoadFile(AValue : String) : TJSONArray;
    procedure SetPath(path : String);

    //문자발송 서버 메소드
    function swsmslogin(phone : String) : String;
    function swsmsloadcategory : String;
    function swsmsloaddata(Cate,parent : String) : String;
    procedure swsmssavedata(grade,ban, name, phonenum1,phonenum2,cate : String);
    procedure swsmsaddcate(grade,ban,name,cate : String);
    procedure swsmsdelcate(grade,ban,name,cate : String);
    procedure swsmsallerase;
    Function swsmsalldata : String;
    function swsms_conversion: String;
    procedure swsms_saveInterbase(grade,ban, name, phonenum1,phonenum2,cate : String);

    //송원 질문 Project 메소드
    function question_addquestion(quserid, qtitle, question, qfilename : String) : String;
    function question_LoadQuestionlist(rType, code : String) : String;
    function question_LoadCurrentItemData(qNum : String) : String;
    function question_addcomment(qnum, cuserid, comment, cfilename, cdate: String) : String;


    //광주송원 CyberLibrary
    function kswlibrary_addbook(btitle, category, comment,filename,rdate, userid, permit: String) : String;
    function kswlibrary_loadcategoryname : String;
    function kswlibrary_loadkeyword(keyword, userid: String; condition: Integer) : String;

    //퍼즐관련 메소드
    function puzzle_adddata(part, filenames: String): String;
    function puzzle_loaddata(part: String):String;


    function swm_DataSave(grade,lesson,pattern,mname,filename,comment: String): Boolean;
    function swm_DataLoad(grade,lesson: String):String;
    function swm_DataLoad_OnlyName(Name: String):String;
    function swm_LessonSave(tname,lesson,lname,Contents:String): Boolean;
    function swm_LessonLoad(tname,lesson:String):String;

    //kswvod methods - 송원초에서 제작한 동영상
    function vod_InsertData(mname, mcate, myear, filename, mgrade, cnt: String) : String;
    function vod_LoadYear: String;
    function vod_LoadCate(myear, mgrade: String) : String;
    function vod_LoadMovieList(myear, mcate, Level: String) : String;
    function vod_SaveCount(num: Integer; userid: String): String;

    //kswslide methods - 송원초에서 촬영한 사진 슬라이드
    function kswslide_InsertData(year,grade,ban,subject,path,filenames,cnt : String) : String;
    function kswslide_LoadYear: String;
    function kswslide_LoadSubject(year, grade, level : string) : String;
    function kswslide_subject_read_num(year: string) : integer;
    function kswslide_LoadFilenames(year, grade, subject : String) : String;

    // 독서내용 저장하기 위한 메소도
    function kswreading_InsertData(InsertType, userid, bookname, bookkey, contents, regidate: String) : String;
    function kswreading_LoadBookName(userid:String): String;
    function kswreading_LoadBookKey(BookName:String):String;
    function kswreading_LoadContents(bookname, BookKey:String):String;

  end;

var
  grade, ban, VideoRoom : String;

implementation

{$R *.dfm}

uses System.StrUtils, midaslib;

var
  FilePath : String;

function TServerMethods1.HGB_AddExcept(Level, SubLevel, Userid,
  HanjaId: String): Boolean;
begin

end;

function TServerMethods1.HGB_AddHanja(level, sublevel, hun, um, busu, word,
  filename, comment: String): String;
begin

end;

function TServerMethods1.HGB_ReadBusu(busu: String): String;
begin

end;

function TServerMethods1.HGB_ReadExcept(Level, SubLevel,
  Userid: String): String;
begin

end;

function TServerMethods1.HGB_ReadGoldenbell(range: Integer): String;
var
  i : integer;
  Str : string;
begin
  Str := '';
  case Range of

  1 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o8l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;

        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o7l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;

        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o6l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;

        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"s5l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  2 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o5l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  3 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"s4l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  4 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o4l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  5 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"s3l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  6 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o3l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  7 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"s2l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  8 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"o2l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  9 : begin
        qry_gb_hanja_dic.Close;
        qry_gb_hanja_dic.SQL.Clear;
        qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = ' + '"s1l"');
        qry_gb_hanja_dic.Open();

        qry_gb_hanja_dic.First;
        for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
        begin
            Str := Str + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
            qry_gb_hanja_dic.Next;
        end;
        result := Str;
  end;
  end;
end;

function TServerMethods1.HGB_ReadHanja(hun, um: String): Integer;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select num from hanja_dic where (level = "busu") and (hun =:hun) and (um = :um)');
  qry_gb_hanja_dic.Params[0].AsString := hun;
  qry_gb_hanja_dic.Params[1].AsString := um;
  qry_gb_hanja_dic.Open();

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    result := qry_gb_hanja_dic.FieldByName('num').AsInteger;
  end;
end;

function TServerMethods1.HGB_ReadHanjaContestScore(id, level: String): String;
var
  ScoreData : String;
  i : integer;
begin
  ScoreData := '';
  //상위 50명의 데이타 읽는 부분
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from hcontestscore where userid = :id and level = :level order by sigak asc');
  qry_gb_hanja_dic.Params[0].AsString := id;
  qry_gb_hanja_dic.Params[1].AsString := level;
  qry_gb_hanja_dic.Open();

  qry_gb_hanja_dic.First;
  for i := 0 to qry_gb_hanja_dic.RecordCount - 1 do
  begin
    ScoreData := ScoreData + qry_gb_hanja_dic.fieldbyname('userid').AsString + '|' + qry_gb_hanja_dic.fieldbyname('username').AsString + '|' +
                             qry_gb_hanja_dic.fieldbyname('grade').AsString + '|' + qry_gb_hanja_dic.fieldbyname('ban').AsString + '|' +
                             qry_gb_hanja_dic.fieldbyname('level').AsString + '|' + IntToStr(qry_gb_hanja_dic.fieldbyname('score').AsInteger) + '|' +
                             qry_gb_hanja_dic.fieldbyname('sigak').AsString + '|';
    qry_gb_hanja_dic.Next;
  end;

  result := ScoreData;
end;

function TServerMethods1.HGB_ReadHanjaError(id: String): String;
begin

end;

function TServerMethods1.HGB_ReadHanjaPracticeScore(id: String): String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select sum(score) as sumscore from hpracticescore where userid = :id');
  qry_gb_hanja_dic.Params[0].AsString := id;

  qry_gb_hanja_dic.Open();

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    result := qry_gb_hanja_dic.fieldbyname('sumscore').AsString;
  end;
end;

function TServerMethods1.HGB_ReadLevelData(level, sublevel: String): String;
var
  i : integer;
  LogData : String;
begin
  LogData := '';
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  if sublevel = '0' then
  begin
    qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = :level');
    qry_gb_hanja_dic.Params[0].AsString := level;
  end else
  begin
    qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where level = :level and sublevel = :sublevel');
    qry_gb_hanja_dic.Params[0].AsString := level;
    qry_gb_hanja_dic.Params[1].AsString := sublevel;
  end;

  qry_gb_hanja_dic.Open();

  qry_gb_hanja_dic.First;
  for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
  begin
    LogData := LogData + qry_gb_hanja_dic.fieldbyname('num').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hun').AsString + '|' + qry_gb_hanja_dic.fieldbyname('um').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('hanja').AsString + '|' + qry_gb_hanja_dic.fieldbyname('busu').AsString + '|' +
                         qry_gb_hanja_dic.fieldbyname('linenum').AsString  + '|' + qry_gb_hanja_dic.fieldbyname('comment').AsString + '|';
    qry_gb_hanja_dic.Next;
  end;
  result := LogData;
end;

function TServerMethods1.HGB_ReadLevelTitle: String;
begin

end;


function TServerMethods1.HGB_ReadSubLevelTitle(level: String): String;
var
  i : integer;
  SubLevelTitle : String;
begin
  SubLevelTitle := '';
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select distinct(sublevel) from hanja_dic where level = :level');
  qry_gb_hanja_dic.Params[0].AsString := level;
  qry_gb_hanja_dic.Open();

  qry_gb_hanja_dic.First;
  for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
  begin
    SubLevelTitle := SubLevelTitle + qry_gb_hanja_dic.fieldbyname('sublevel').AsString + '|' ;
    qry_gb_hanja_dic.Next;
  end;
  result := SubLevelTitle;
end;

procedure TServerMethods1.HGB_SaveHanjaContestScore(id, name, grade, ban, level,
  score, sigak: String);
var
  RegiNum, RegiScore : Integer;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from hcontestscore where userid = :id and level = :level');
  qry_gb_hanja_dic.Params[0].AsString := id;
  qry_gb_hanja_dic.Params[1].AsString := level;
  qry_gb_hanja_dic.Open();

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin  // 등록되어 있을 때
    qry_gb_hanja_dic.First;
    RegiNum := qry_gb_hanja_dic.FieldByName('num').AsInteger;
    RegiScore := qry_gb_hanja_dic.FieldByName('score').AsInteger;
    if StrToInt(Score) > RegiScore then
    begin
      qry_gb_hanja_dic.Close;
      qry_gb_hanja_dic.SQL.Clear;
      qry_gb_hanja_dic.Sql.Add('update hcontestscore set score = :score, sigak = :sigak where num = :reginum');
      qry_gb_hanja_dic.Params[0].AsInteger := StrToInt(score);
      qry_gb_hanja_dic.Params[1].AsString := sigak;
      qry_gb_hanja_dic.Params[2].AsInteger := reginum;
      qry_gb_hanja_dic.ExecSQL;
    end;
  end
  else
  begin  // 등록되어 있지 않을 때
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into hcontestscore(userid, username, grade, ban, level, score, sigak)' +
                            ' values(:id, :name, :grade, :ban, :level, :score, :sigak)');
    qry_gb_hanja_dic.Params[0].AsString := id;
    qry_gb_hanja_dic.Params[1].AsString := name;
    qry_gb_hanja_dic.Params[2].AsString := grade;
    qry_gb_hanja_dic.Params[3].AsString := ban;
    qry_gb_hanja_dic.Params[4].AsString := level;
    qry_gb_hanja_dic.Params[5].AsInteger := StrToInt(score);
    qry_gb_hanja_dic.Params[6].AsString := sigak;
    qry_gb_hanja_dic.ExecSQL;
  end;
end;

procedure TServerMethods1.HGB_SaveHanjaError(ErrorData: String);
begin

end;

function TServerMethods1.HGB_SaveHanjaPracticeScore(id, name, grade, ban, level,
  score, sigak: String): String;
var
  RegiNum, RegiScore : Integer;
begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('select * from hpracticescore where userid = :id and level = :level and sigak = :sigak');
    qry_gb_hanja_dic.Params[0].AsString := id;
    qry_gb_hanja_dic.Params[1].AsString := level;
    qry_gb_hanja_dic.Params[2].AsString := sigak;
    qry_gb_hanja_dic.Open();

    if qry_gb_hanja_dic.RecordCount < 10 then
    begin  // 등록되어 있지 않을 때
      qry_gb_hanja_dic.Close;
      qry_gb_hanja_dic.SQL.Clear;
      qry_gb_hanja_dic.Sql.Add('insert into hpracticescore(userid, username, grade, ban, level, score, sigak)' +
                              ' values(:id, :name, :grade, :ban, :level, :score, :sigak)');
      qry_gb_hanja_dic.Params[0].AsString := id;
      qry_gb_hanja_dic.Params[1].AsString := name;
      qry_gb_hanja_dic.Params[2].AsString := grade;
      qry_gb_hanja_dic.Params[3].AsString := ban;
      qry_gb_hanja_dic.Params[4].AsString := level;
      qry_gb_hanja_dic.Params[5].AsString := score;
      qry_gb_hanja_dic.Params[6].AsString := sigak;
      qry_gb_hanja_dic.ExecSQL;
    end
    else
      result := '1일 도전 횟수를 초과하였습니다.';
end;

function TServerMethods1.kswlibrary_addbook(btitle, category, comment, filename,
  rdate, userid, permit: String): String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into cyberlibrary(btitle, category, comment, filename, rdate, userid, permit) values(' +
                     ':btitle, :category, :comment, :filename, :rdate, :userid, :permit)');
  qry_public.Params[0].AsString := btitle;
  qry_public.Params[1].AsString := category;
  qry_public.Params[2].AsString := comment;
  qry_public.Params[3].AsString := filename;
  qry_public.Params[4].AsString := rdate;
  qry_public.Params[5].AsString := userid;
  qry_public.Params[6].AsString := permit;

  try
    qry_public.ExecSQL;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select btitle, rdate from cyberlibrary where btitle =' +
                       ':btitle and category = :category and rdate = :rdate and userid = :userid');
    qry_public.Params[0].AsString := btitle;
    qry_public.Params[1].AsString := category;
    qry_public.Params[2].AsString := rdate;
    qry_public.Params[3].AsString := userid;

    qry_public.Open();

    if qry_public.RecordCount > 0 then
      result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.kswlibrary_loadcategoryname: String;
var
  i : integer;
  Str : String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select distinct(category) from cyberlibrary');
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Str := Str + qry_public.fieldbyname('category').AsString + '|';
    qry_public.Next;
  end;
  Result := Str;
end;

function TServerMethods1.kswlibrary_loadkeyword(keyword, userid: String; condition: Integer): String;
var
  i : integer;
  Str : String;
begin
  case condition of
  0 : begin
        qry_public.Close;
        qry_public.SQL.Clear;
        qry_public.Sql.Add('select * from cyberlibrary where userid = :userid or permit ="public"');
        qry_public.Params[0].AsString := userid;
  end;
  1 : begin
        qry_public.Close;
        qry_public.SQL.Clear;
        qry_public.Sql.Add('select * from cyberlibrary where (btitle like "%'+keyword + '%" and permit = "public") or (btitle like "%'+keyword + '%" and userid = :userid)');
        qry_public.Params[0].AsString := userid;
  end;
  2 : begin
        qry_public.Close;
        qry_public.SQL.Clear;
        qry_public.Sql.Add('select * from cyberlibrary where (category = "'+keyword+'" and permit = "public") or (category = "'+keyword +'" and userid = "'+userid+'")');
  end;
  3 : begin
        qry_public.Close;
        qry_public.SQL.Clear;
        qry_public.Sql.Add('select * from cyberlibrary where (comment like "%'+keyword+'%" and permit = "public") or (comment like "%'+keyword +'%" and userid = "'+userid+'")');
  end;
  end;

  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Str := Str + qry_public.fieldbyname('num').AsString + '|' +
                 qry_public.fieldbyname('btitle').AsString + '|' + qry_public.fieldbyname('category').AsString + '|' +
                 qry_public.fieldbyname('comment').AsString + '|' + qry_public.fieldbyname('filename').AsString + '|' +
                 qry_public.fieldbyname('rdate').AsString  + '|';
    qry_public.Next;
  end;
  Result := Str;
end;

function TServerMethods1.kswreading_InsertData(InsertType, userid, bookname, bookkey,
  contents, regidate: String): String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from kswreading where userid = :userid and bookname = :bookname '
    + 'and bookkey = :bookkey');
  fqry_ksongwones.Params[0].AsString := userid;
  fqry_ksongwones.Params[1].AsString := bookname;
  fqry_ksongwones.Params[2].AsString := bookkey;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount < 1 then
  begin  // 등록되어 있을 때
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('insert into kswreading(userid, bookname, bookkey, contents, regidate)' +
    ' values(:userid, :bookname, :bookkey, :contents, :regidate)');
    fqry_ksongwones.Params[0].AsString := userid;
    fqry_ksongwones.Params[1].AsString := bookname;
    fqry_ksongwones.Params[2].AsString := bookkey;
    fqry_ksongwones.Params[3].AsString := contents;
    fqry_ksongwones.Params[4].AsString := regidate;
    fqry_ksongwones.ExecSQL;
    result := 'success';
  end else
  begin
    if InsertType = 'update' then
    begin
      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('update kswreading set contents = :contents where ' +
          'userid = :userid and bookname = :bookname and bookkey = :bookkey');
      fqry_ksongwones.Params[0].AsString := contents;
      fqry_ksongwones.Params[1].AsString := userid;
      fqry_ksongwones.Params[2].AsString := bookname;
      fqry_ksongwones.Params[3].AsString := bookkey;
      fqry_ksongwones.ExecSQL;
      result := 'success';
    end;
  end;
end;

function TServerMethods1.kswreading_LoadBookKey(BookName: String): String;
var
  Str : String;
  i : integer;
begin
  Str := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  begin
    fqry_ksongwones.Sql.Add('select bookkey from kswreading where BookName = :BookName');
    fqry_ksongwones.Params[0].AsString := BookName;
  end;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      Str := Str + fqry_ksongwones.FieldByName('bookkey').AsString + '|';
      fqry_ksongwones.Next;
    end;
    result := Str;
  end else result := 'none';
end;

function TServerMethods1.kswreading_LoadBookName(userid: String): String;
var
  Str : String;
  i : integer;
begin
  Str := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  begin
    fqry_ksongwones.Sql.Add('select distinct bookname from kswreading where userid = :userid');
    fqry_ksongwones.Params[0].AsString := userid;
  end;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      Str := Str + fqry_ksongwones.FieldByName('bookname').AsString + '|';
      fqry_ksongwones.Next;
    end;
    result := Str;
  end else result := 'none';
end;

function TServerMethods1.kswreading_LoadContents(bookname, BookKey: String): String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  begin
    fqry_ksongwones.Sql.Add('select contents from kswreading where bookname = :bookname and bookkey=:bookkey');
    fqry_ksongwones.Params[0].AsString := BookName;
    fqry_ksongwones.Params[1].AsString := bookkey;
  end;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    result := fqry_ksongwones.FieldByName('contents').AsString;
  end else result := 'none';
end;

function TServerMethods1.kswslide_InsertData(year, grade, ban, subject, path,
  filenames, cnt: String): String;
var
  Number : integer;
  regi_filenames : String;
begin
  Regi_Filenames := '';
  if grade = 'public' then  //전체 행사일 때 처리
  begin
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select * from kswphoto where pyear = :year and pgrade = :grade '
      + 'and psubject = :subject');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
    fqry_ksongwones.Params[1].AsInteger := 0;
    fqry_ksongwones.Params[2].AsString := subject;

    fqry_ksongwones.Open();

    if fqry_ksongwones.RecordCount > 0 then
    begin  // 등록되어 있을 때
      Number := fqry_ksongwones.FieldByName('num').AsInteger;
      Regi_Filenames := fqry_ksongwones.FieldByName('pfilenames').AsString;

      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('update kswphoto set pfilenames = :filenames where num = :num');
      fqry_ksongwones.Params[0].AsString := Regi_Filenames + filenames;
      fqry_ksongwones.Params[1].AsInteger := Number;
      fqry_ksongwones.ExecSQL;
      result := 'success';
    end else
    begin  // 등록되어 있지 않을 때
      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('insert into kswphoto(pyear, pgrade, pban, psubject, ppath,pfilenames,pcnt)' +
      ' values(:year, :grade, :ban, :subject, :path, :filenames, :cnt)');
      fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
      fqry_ksongwones.Params[1].AsInteger := 0;
      fqry_ksongwones.Params[2].AsInteger := StrToInt(ban);
      fqry_ksongwones.Params[3].AsString := subject;
      fqry_ksongwones.Params[4].AsString := path;
      fqry_ksongwones.Params[5].AsString := filenames;
      fqry_ksongwones.Params[6].AsInteger := StrToInt(cnt);
      fqry_ksongwones.ExecSQL;
      result := 'success';
    end;
  end
  else  // 학급행사일 때 처리
  begin
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select * from kswphoto where pyear = :year and pgrade = :grade '
      + 'and pban = :ban and psubject = :subject');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
    fqry_ksongwones.Params[1].AsInteger := StrToInt(grade);
    fqry_ksongwones.Params[2].AsInteger := StrToInt(ban);
    fqry_ksongwones.Params[3].AsString := subject;
    fqry_ksongwones.Open();

    if fqry_ksongwones.RecordCount > 0 then
    begin  // 등록되어 있을 때
      fqry_ksongwones.First;
      Number := fqry_ksongwones.FieldByName('num').AsInteger;
      Regi_Filenames := fqry_ksongwones.FieldByName('pfilenames').AsString;
      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('update kswphoto set pfilenames = :filenames where num = :num');
      fqry_ksongwones.Params[0].AsString := Regi_Filenames + filenames;
      qry_public.Params[1].AsString := IntTostr(Number);
      fqry_ksongwones.ExecSQL;
      result := 'success';
    end else
    begin  // 등록되어 있지 않을 때
      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('insert into kswphoto(pyear, pgrade, pban, psubject, ppath, pfilenames, pcnt)' +
      ' values(:year, :grade, :ban, :subject, :path, :filenames, :cnt)');
      fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
      fqry_ksongwones.Params[1].AsInteger := StrToInt(grade);
      fqry_ksongwones.Params[2].AsInteger := StrToInt(ban);
      fqry_ksongwones.Params[3].AsString := subject;
      fqry_ksongwones.Params[4].AsString := path;
      fqry_ksongwones.Params[5].AsString := filenames;
      fqry_ksongwones.Params[6].AsInteger := StrToInt(cnt);
      fqry_ksongwones.ExecSQL;
      result := 'success';
    end;
  end;
end;

function TServerMethods1.kswslide_LoadFilenames(year, grade,
  subject: String): String;
var
  Str : String;
  i : integer;
begin
  Str := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  begin
    fqry_ksongwones.Sql.Add('select num,ppath,pfilenames,pcnt from kswphoto where pyear = :year and pgrade = :grade and '
      + 'psubject = :subject');
    fqry_ksongwones.Params[0].AsString := year;
    fqry_ksongwones.Params[1].AsString := grade;
    fqry_ksongwones.Params[2].AsString := subject;
  end;

  fqry_ksongwones.Open();

  fqry_ksongwones.First;
  for i := 0 to fqry_ksongwones.RecordCount - 1 do
  begin
    Str := Str + fqry_ksongwones.FieldByName('num').AsString + '|' +
       fqry_ksongwones.FieldByName('ppath').AsString + '|' +
       fqry_ksongwones.FieldByName('pfilenames').AsString + '|' +
       fqry_ksongwones.FieldByName('pcnt').AsString + '|';
    fqry_ksongwones.Next;
  end;
  result := Str;
end;

function TServerMethods1.kswslide_LoadSubject(year, grade, level: string): String;
var
  i: Integer;
  Str : String;
begin
  if level = '2' then
  begin
    Str := '';
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select distinct psubject,pgrade from kswphoto where pyear = :year and pgrade = :grade');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
    fqry_ksongwones.Params[1].AsInteger := StrToInt(grade);

    fqry_ksongwones.Open();

    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      Str := Str + fqry_ksongwones.FieldByName('psubject').AsString + '|' + fqry_ksongwones.FieldByName('pgrade').AsString + '|';
      fqry_ksongwones.Next;
    end;

    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select distinct psubject,pgrade from kswphoto where pyear = :year and pgrade = 0');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(year);
    fqry_ksongwones.Open();

    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      Str := Str + fqry_ksongwones.FieldByName('psubject').AsString + '|' + fqry_ksongwones.FieldByName('pgrade').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end else
  begin
    Str := '';
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select distinct psubject,pgrade from kswphoto where pyear = :year');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(year);

    fqry_ksongwones.Open();

    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      Str := Str + fqry_ksongwones.FieldByName('psubject').AsString + '|' + fqry_ksongwones.FieldByName('pgrade').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end;

  if Str <> '' then result := Str else result := 'none';
end;

function TServerMethods1.kswslide_LoadYear: String;
var
  yearList : String;
  i: Integer;
begin
  yearList := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  fqry_ksongwones.Sql.Add('select distinct pyear from kswphoto order by pyear asc');

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      yearList := yearList + IntToStr(fqry_ksongwones.fieldbyname('pyear').AsInteger) + '|';
      fqry_ksongwones.Next;
    end;
    result := yearList;
  end else Result := 'none';
end;

function TServerMethods1.kswslide_subject_read_num(year: string): integer;
var
  i: Integer;
  Str : String;
begin
  Str := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  fqry_ksongwones.Sql.Add('select psubject from kswphoto where pyear = :year');
  fqry_ksongwones.Params[0].AsString := year;

  fqry_ksongwones.Open();

  fqry_ksongwones.First;

  result := fqry_ksongwones.RecordCount;
end;

function TServerMethods1.HGB_hanja_busu_Insert(level, sublevel, hun, um,
  busu, linenum, comment: String; Hanjaimg:TMemoryStream) : Boolean;
var
  HanjaPng : TPngImage;
  wic : TWicImage;
begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into hanja_dic(level, sublevel, hun, um, busu, linenum, comment, hanjaimg) values(' +
                       ':level, :sublevel, :hun, :um, :busu, :linenum, :comment, :hanjaimg)');
    qry_gb_hanja_dic.ParamByName('level').AsString := level;
    qry_gb_hanja_dic.ParamByName('sublevel').AsString := sublevel;
    qry_gb_hanja_dic.ParamByName('hun').AsString := hun;
    qry_gb_hanja_dic.ParamByName('um').AsString := um;
    qry_gb_hanja_dic.ParamByName('busu').AsString := busu;
    qry_gb_hanja_dic.ParamByName('linenum').AsString := linenum;
    qry_gb_hanja_dic.ParamByName('comment').AsString := comment;

    //이미지를 윈도우에서 제공하는 자료구조에 읽어들여 BlobField형 칼럼에 넣는 부분..
    wic := TWICImage.Create;
    wic.LoadFromStream(HanjaImg);
    qry_gb_hanja_dic.ParamByName('hanjaimg').Assign(wic);

    FreeAndNil(wic);
    qry_gb_hanja_dic.ExecSQL;

    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where (level = :level) and (hun = :hun) and (um = :um)');
    qry_gb_hanja_dic.Params[0].AsString := level;
    qry_gb_hanja_dic.Params[1].AsString := hun;
    qry_gb_hanja_dic.Params[2].AsString := um;

    qry_gb_hanja_dic.Open();

    if qry_gb_hanja_dic.RecordCount = 0 then result := false else result := true;
end;

function TServerMethods1.HGB_hanja_gubsu_Insert(level, sublevel, hun, um, hanja,
  busu, linenum, comment: String): Boolean;
begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into hanja_dic(level, sublevel, hun, um, hanja, busu, linenum, comment) values(' +
                       ':level, :sublevel, :hun, :um, :hanja, :busu, :linenum, :comment)');
    qry_gb_hanja_dic.ParamByName('level').AsString := level;
    qry_gb_hanja_dic.ParamByName('sublevel').AsString := sublevel;
    qry_gb_hanja_dic.ParamByName('hun').AsString := hun;
    qry_gb_hanja_dic.ParamByName('um').AsString := um;
    qry_gb_hanja_dic.ParamByName('hanja').AsString := hanja;
    qry_gb_hanja_dic.ParamByName('busu').AsString := busu;
    qry_gb_hanja_dic.ParamByName('linenum').AsString := linenum;
    qry_gb_hanja_dic.ParamByName('comment').AsString := comment;

    qry_gb_hanja_dic.ExecSQL;

    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('select * from hanja_dic where (level = :level) and (hun = :hun) and (um = :um)');
    qry_gb_hanja_dic.Params[0].AsString := level;
    qry_gb_hanja_dic.Params[1].AsString := hun;
    qry_gb_hanja_dic.Params[2].AsString := um;

    qry_gb_hanja_dic.Open();

    if qry_gb_hanja_dic.RecordCount = 0 then result := false else result := true;
end;



function TServerMethods1.Member_AddUser(name,userid,userpw,grade,ban,bunho,iphak : String): string;
begin
  // 인터베이스 테이블에 회원 데이터 저장하는 부분
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('insert into member (username, userid, userpw, grade, ban, bunho,iphak) values (' +
   ':name, :userid, :userpw, :grade, :ban, :bunho, :iphak)');
  fqry_ksongwones.Params[0].AsString := name;
  fqry_ksongwones.Params[1].AsString := userid;
  fqry_ksongwones.Params[2].AsString := userpw;
  fqry_ksongwones.Params[3].AsString := grade;
  fqry_ksongwones.Params[4].AsString := ban;
  fqry_ksongwones.Params[5].AsString := bunho;
  fqry_ksongwones.Params[6].AsString := iphak;
  try
    fqry_ksongwones.ExecSQL;
  finally
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select userid from member where userid = :userid');
    fqry_ksongwones.Params[0].AsString := userid;
    fqry_ksongwones.Open();
    if fqry_ksongwones.fieldbyname('userid').AsString = userid then result := 'success' else result := 'fail';
  end;
end;

function TServerMethods1.Member_Confirm(userid: string): string;
begin
  //인터베이스 테이블을 주어진 아이디로 조회하여
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select userid from member where userid = :userid');
  fqry_ksongwones.Params[0].AsString := userid;
  fqry_ksongwones.Open();
  fqry_ksongwones.First;
  if fqry_ksongwones.FieldByName('userid').AsString = userid then
    result := fqry_ksongwones.FieldByName('userid').AsString
  else result := 'none';
end;

function TServerMethods1.Member_Conversion: String;
var
  i : integer;
  idpwschool: String;
begin
  idpwschool:= '';
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select username, AES_DECRYPT(UNHEX(userid), MD5(''Superman'')) AS userid, ' +
                     'AES_DECRYPT(UNHEX(userpw), MD5(''Superman'')) AS userpw, grade, ban, bunho from member');
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    idpwschool := idpwschool + qry_public.fieldbyname('username').AsString + '|' + qry_public.fieldbyname('userid').AsString + '|' +
      qry_public.fieldbyname('userpw').AsString + '|' + qry_public.fieldbyname('grade').AsString + '|' + qry_public.fieldbyname('ban').AsString + '|' +
      qry_public.fieldbyname('bunho').AsString + '|';
    qry_public.Next;
  end;
  result := idpwschool;
end;

procedure TServerMethods1.Member_delete_cbi(userid: String);
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('update member set callbackid = "" ' +
                     'where userid = HEX(AES_ENCRYPT(:userid, MD5(''Superman'')))');
  qry_public.Params[0].AsString := userid;
  qry_public.ExecSQL;
end;

function TServerMethods1.Member_IDPWSchool(grade, ban, name: String): String;
var
  i : Integer;
  idpwschool : String;
begin
  idpwschool := '';
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select AES_DECRYPT(UNHEX(userid), MD5(''Superman'')) AS userid, ' +
                     'AES_DECRYPT(UNHEX(userpw), MD5(''Superman'')) AS userpw, ' +
                     'AES_DECRYPT(UNHEX(school), MD5(''Superman'')) AS school from member where ' +
                     'grade = :grade and ban = :ban and username = :name');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;

  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    idpwschool := idpwschool + qry_public.fieldbyname('userid').AsString + '|' + qry_public.fieldbyname('userpw').AsString + '|' +
      qry_public.fieldbyname('school').AsString + '|';
    qry_public.Next;
  end;

  result := idpwschool;
end;

function TServerMethods1.Member_IsHealth(grade, ban, bunho, username,
  ampm: String): Boolean;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select * from onlinemedicheck ' +
                     'where grade = :grade and ban = :ban and bunho = :bunho ' +
                     'and username = :username and ampm = :ampm');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := bunho;
  qry_public.Params[3].AsString := username;
  qry_public.Params[4].AsString := ampm;
  qry_public.Open();

  if qry_public.RecordCount > 0 then
    result := True else result := False;
end;

function TServerMethods1.Member_IsPresent(userid, presentDate: String): Boolean;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select username, userid, present from onlinepresent ' +
                     'where userid = :userid and present = :presentdate');
  qry_public.Params[0].AsString := userid;
  qry_public.Params[1].AsString := presentdate;
  qry_public.Open();

  if qry_public.RecordCount > 0 then
    result := True else result := False;
end;

function TServerMethods1.Member_LessonAll(grade, ban: String): String;
var
  i : Integer;
  NameAll : String;
begin
  NameAll := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select username from member where grade = :grade and ban = :ban order by bunho asc');
  fqry_ksongwones.Params[0].AsString := grade;
  fqry_ksongwones.Params[1].AsString := ban;

  fqry_ksongwones.Open();

  fqry_ksongwones.First;
  for i := 0 to fqry_ksongwones.RecordCount -1 do
  begin
    NameAll := NameAll + fqry_ksongwones.fieldbyname('username').AsString + '|';
    fqry_ksongwones.Next;
  end;

  result := NameAll;
end;

function TServerMethods1.Member_LoadHealth(grade, ban,
  medicheckdate: String): String;
var
  i : Integer;
  Health : String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select bunho, username, student, family, ampm from onlinemedicheck where grade =' +
                     ':grade and ban = :ban and medicheckdate = :medicheckdate order by bunho asc');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := medicheckdate;

  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Health := Health + qry_public.fieldbyname('bunho').AsString + '|' + qry_public.fieldbyname('username').AsString + '|' +
      qry_public.fieldbyname('student').AsString + '|' + qry_public.fieldbyname('family').AsString + '|' +
      qry_public.fieldbyname('ampm').AsString + '|';
    qry_public.Next;
  end;

  result := Health;
end;

function TServerMethods1.Member_LoadNotice(grade: String): String;
var
  i : Integer;
  Notice : String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select title, notice from onlinenotice where grade =' +
                     ':grade order by num desc');
  qry_public.Params[0].AsString := grade;

  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Notice := Notice + qry_public.fieldbyname('title').AsString + '|' + qry_public.fieldbyname('notice').AsString + '|';
    qry_public.Next;
  end;

  result := Notice;

end;

function TServerMethods1.Member_LoadPresent(grade, ban,
  presentDate: String): String;
var
  PresentStr : String;
  i : integer;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select bunho, username, userid, present from onlinepresent ' +
                     'where grade = :grade and ban = :ban and present = :presentdate order by bunho asc');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := presentdate;
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    PresentStr := PresentStr + qry_public.fieldbyname('bunho').AsString + '|'
               + qry_public.fieldbyname('username').AsString + '|' + qry_public.fieldbyname('userid').AsString + '|';
    qry_public.Next;
  end;

  result := PresentStr;
end;

function TServerMethods1.Member_Login(userid, userpw: string): string;
begin
  // 아이디와 비밀번호로 인터베이스에 로그인하는 부분
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select username,grade,ban,bunho,iphak from member ' +
                     'where userid = :userid and userpw = :userpw');
  fqry_ksongwones.Params[0].AsString := userid;
  fqry_ksongwones.Params[1].AsString := userpw;
  fqry_ksongwones.Open();
  if fqry_ksongwones.RecordCount = 0 then result := 'fail' else
    result := fqry_ksongwones.FieldByName('username').AsString + '|' +
    fqry_ksongwones.FieldByName('grade').AsString + '|' + fqry_ksongwones.FieldByName('ban').AsString + '|'
    + fqry_ksongwones.FieldByName('bunho').AsString+ '|' + fqry_ksongwones.FieldByName('iphak').AsString;
end;

function TServerMethods1.Member_LoginPhonenum(phonenum: String): String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select username, AES_DECRYPT(UNHEX(userid), MD5(''Superman'')) AS userid from member ' +
                     'where phonenum = :phonenum');
  qry_public.Params[0].AsString := PhoneNum;

  qry_public.Open();

  qry_public.First;
  if qry_public.RecordCount > 0 then
  begin
    result := qry_public.FieldByName('username').AsString + '|' + qry_public.FieldByName('userid').AsString + '|';
  end;
  qry_public.Close;
end;

procedure TServerMethods1.Member_ModifyUser(name, userid, school, grade,
  ban: String);
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('update member set school = HEX(AES_ENCRYPT(:school, MD5(''Superman''))), grade = :grade, ban = :ban ' +
                     'where userid = HEX(AES_ENCRYPT(:userid, MD5(''Superman''))) and '+
                     'username = :name');
  qry_public.Params[0].AsString := school;
  qry_public.Params[1].AsString := grade;
  qry_public.Params[2].AsString := ban;
  qry_public.Params[3].AsString := userid;
  qry_public.Params[4].AsString := name;

  qry_public.ExecSQL;
end;

function TServerMethods1.member_AddNotice(grade, title, notice: String): String;
var
  noticetime : String;
begin
  noticetime := DateTostr(now());
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into onlinenotice (grade, title, notice, noticetime) values (' +
   ':grade, :title, :notice, :noticetime)');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := title;
  qry_public.Params[2].AsString := notice;
  qry_public.Params[3].AsString := noticetime;

  try
    qry_public.Open;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select title, notice from onlinenotice where title =' +
                       ':title and noticetime = :noticetime');
    qry_public.Params[0].AsString := title;
    qry_public.Params[1].AsString := noticetime;
    qry_public.Open();
    if qry_public.RecordCount > 0 then result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.Member_Present(username, userid, grade, ban, bunho: String) : String;
var
  present : String;
begin
  present := DateTostr(now());
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into onlinepresent (username, userid, grade, ban, bunho, present) values (' +
   ':username, :userid, :grade, :ban, :bunho, :present)');
  qry_public.Params[0].AsString := username;
  qry_public.Params[1].AsString := userid;
  qry_public.Params[2].AsString := grade;
  qry_public.Params[3].AsString := ban;
  qry_public.Params[4].AsString := bunho;
  qry_public.Params[5].AsString := present;

  try
    qry_public.ExecSQL;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select userid, present from onlinepresent where userid =' +
                       ':userid and present = :present');
    qry_public.Params[0].AsString := userid;
    qry_public.Params[1].AsString := present;
    qry_public.Open();
    if (qry_public.fieldbyname('userid').AsString = userid) and
       (qry_public.fieldbyname('present').AsString = present) then result := 'sucess' else result := 'fail';
  end;
end;

procedure TServerMethods1.Member_SaveInterbase(username, userid, userpw, grade, ban,
  bunho: String);
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('insert into member(username, userid, userpw, grade, ban,bunho) values(' +
   ':username, :userid, :userpw, :grade, :ban, :bunho)');
  fqry_ksongwones.Params[0].AsString := username;
  fqry_ksongwones.Params[1].AsString := userid;
  fqry_ksongwones.Params[2].AsString := userpw;
  fqry_ksongwones.Params[3].AsString := grade;
  fqry_ksongwones.Params[4].AsString := ban;
  fqry_ksongwones.Params[5].AsString := bunho;
  fqry_ksongwones.ExecSQL;
end;

procedure TServerMethods1.Member_update_cbi(userid, cbi: String);
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('update member set callbackid = :cbi ' +
                     'where userid = HEX(AES_ENCRYPT(:userid, MD5(''Superman'')))');
  qry_public.Params[0].AsString := cbi;
  qry_public.Params[1].AsString := userid;
  qry_public.ExecSQL;
end;

function TServerMethods1.Member_SaveAttendance(userid, username, grade, ban, bunho, ldate, lcount, lstay: String): string;
var
  recnum, cnt, stay : integer;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select num, lcount, lstaty from kswattendance ' +
                     'where userid = :userid and ldate = :ldate');
  fqry_ksongwones.Params[0].AsString := userid;
  fqry_ksongwones.Params[1].AsString := ldate;
  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount = 0 then
  begin
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('insert into kswattendance(userid, username, grade, ban, bunho, ldate, lcount, lstay) values(' +
     ':userid, :username, :grade, :ban, :bunho, :ldate, :lcount, :lstay)');
    fqry_ksongwones.Params[0].AsString := userid;
    fqry_ksongwones.Params[1].AsString := username;
    fqry_ksongwones.Params[2].AsString := grade;
    fqry_ksongwones.Params[3].AsString := ban;
    fqry_ksongwones.Params[4].AsString := bunho;
    fqry_ksongwones.Params[5].AsString := ldate;
    fqry_ksongwones.Params[6].AsString := lcount;
    fqry_ksongwones.Params[7].AsString := lstay;
    fqry_ksongwones.ExecSQL;
    result := 'success';
  end else
  begin
    fqry_ksongwones.First;
    recnum := fqry_ksongwones.FieldByName('num').AsInteger;
    cnt := StrToInt(fqry_ksongwones.FieldByName('lcount').AsString)+1;
    stay := StrToInt(fqry_ksongwones.FieldByName('lstay').AsString) + stay;

    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('update kswattendance set lcount = :cnt, lstay = :stay ' +
     'where num = :recnum');
    fqry_ksongwones.Params[0].AsString := IntToStr(cnt);
    fqry_ksongwones.Params[1].AsString := IntToStr(stay);
    fqry_ksongwones.Params[2].AsInteger := recnum;
    fqry_ksongwones.ExecSQL;
    result := 'success';
  end;
end;

function TServerMethods1.Member_LoadAttendance(grade, ban, ldate: String): String;
var
  attendance: String;
  i: Integer;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from kswattendance ' +
                     'where grade = :grade and ban = :ban and ldate = :ldate order by bunho');
  fqry_ksongwones.Params[0].AsString := grade;
  fqry_ksongwones.Params[1].AsString := ban;
  fqry_ksongwones.Params[2].AsString := ldate;
  fqry_ksongwones.Open();


  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      attendance := attendance +
      fqry_ksongwones.FieldByName('username').AsString + '|' + fqry_ksongwones.FieldByName('bunho').AsString + '|' +
      fqry_ksongwones.FieldByName('lstay').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end;
  if attendance <> '' then
    result := attendance;
end;

function TServerMethods1.Online_OrderLoad(sigak, grade, chasi: String): String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currentorder where sigak = :sigak and grade = :grade and chasi =:chasi');
  qry_gb_hanja_dic.Params[0].AsString := sigak;
  qry_gb_hanja_dic.Params[1].AsString := grade;
  qry_gb_hanja_dic.Params[2].AsString := chasi;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
     result := qry_gb_hanja_dic.FieldByName('balnum').AsString + '|' +  qry_gb_hanja_dic.FieldByName('baltype').AsString
  else result := 'Not Found';
end;

procedure TServerMethods1.Online_OrderClear(sigak, grade: String);
var
  RecNum : String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currentorder where sigak = :sigak and grade = :grade');
  qry_gb_hanja_dic.Params[0].AsString := sigak;
  qry_gb_hanja_dic.Params[1].AsString := grade;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    RecNum := IntToStr(qry_gb_hanja_dic.FieldByName('num').AsInteger);

    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('update currentorder set chasi = "", balnum = "", baltype = "" ' +
      'where num = :recnum');
    qry_gb_hanja_dic.Params[0].AsString := recnum;
    qry_gb_hanja_dic.ExecSQL;
  end;
end;

procedure TServerMethods1.Online_OrderSave(sigak, grade, chasi, balnum,
  baltype: String);
var
  RecNum : String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currentorder where sigak = :sigak and grade = :grade');
  qry_gb_hanja_dic.Params[0].AsString := sigak;
  qry_gb_hanja_dic.Params[1].AsString := grade;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    RecNum := IntToStr(qry_gb_hanja_dic.FieldByName('num').AsInteger);

    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('update currentorder set chasi = :chasi, balnum = :balnum, baltype = :baltype ' +
      'where num = :recnum');
    qry_gb_hanja_dic.Params[0].AsString := chasi;
    qry_gb_hanja_dic.Params[1].AsString := balnum;
    qry_gb_hanja_dic.Params[2].AsString := baltype;
    qry_gb_hanja_dic.Params[3].AsString := recnum;
    qry_gb_hanja_dic.ExecSQL;
  end else
  begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into currentorder(sigak, grade, chasi, balnum, baltype) values(:sigak, ' +
      ':grade, :chasi, :balnum, :baltype)');
    qry_gb_hanja_dic.Params[0].AsString := sigak;
    qry_gb_hanja_dic.Params[1].AsString := grade;
    qry_gb_hanja_dic.Params[2].AsString := chasi;
    qry_gb_hanja_dic.Params[3].AsString := balnum;
    qry_gb_hanja_dic.Params[4].AsString := baltype;
    qry_gb_hanja_dic.ExecSQL;
  end;

end;

function TServerMethods1.Online_ResponseLoad(gencode: String): String;
var
  i: Integer;
  response : String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currentresponse where gencode = :gencode');
  qry_gb_hanja_dic.Params[0].AsString := gencode;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    for i := 0 to qry_gb_hanja_dic.RecordCount - 1 do
    begin
      response := response + qry_gb_hanja_dic.FieldByName('baltype').AsString + '|' + qry_gb_hanja_dic.FieldByName('username').AsString + '|' +
        qry_gb_hanja_dic.FieldByName('response').AsString + '|';
    end;
  end;
end;

procedure TServerMethods1.Online_ResponseSave(gencode, baltype, username,
  response: String);
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('insert into currentresponse(gencode, baltype, username, response) values(:gencode, ' +
    ':baltype, :username, :response)');
  qry_gb_hanja_dic.Params[0].AsString := gencode;
  qry_gb_hanja_dic.Params[1].AsString := baltype;
  qry_gb_hanja_dic.Params[2].AsString := username;
  qry_gb_hanja_dic.Params[3].AsString := response;
  qry_gb_hanja_dic.ExecSQL;
end;

function TServerMethods1.Online_StudentLoad(grade, ban: String): String;
var
  StudentStr : String;
  i : integer;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select username from member ' +
                     'where grade = :grade and ban = :ban order by bunho asc');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    StudentStr := StudentStr + qry_public.fieldbyname('username').AsString + '|';
    qry_public.Next;
  end;

  result := StudentStr;
end;

function TServerMethods1.Online_UrlLoad(sigak, grade: String): String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currenturl where sigak = :sigak and grade = :grade');
  qry_gb_hanja_dic.Params[0].AsString := sigak;
  qry_gb_hanja_dic.Params[1].AsString := grade;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
     result := qry_gb_hanja_dic.FieldByName('url').AsString
  else result := 'Not Found';
end;

function TServerMethods1.Online_UrlLoadStudent(grade, ban: String): String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from currenturl where grade = :grade and ban = :ban');
  fqry_ksongwones.Params[0].AsString := grade;
  fqry_ksongwones.Params[1].AsString := ban;
  fqry_ksongwones.Open;

  if fqry_ksongwones.RecordCount > 0 then
     result := fqry_ksongwones.FieldByName('url').AsString
  else result := 'Not Found';
end;

function TServerMethods1.Online_UrlLoadTeacher: String;
var
  url : String;
  i: Integer;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from currenturl order by grade, ban');
  fqry_ksongwones.Open;

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      url := url + fqry_ksongwones.FieldByName('grade').AsString + '|' + fqry_ksongwones.FieldByName('ban').AsString + '|' +
      fqry_ksongwones.FieldByName('url').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end;
  if url <> '' then result := url;
end;

procedure TServerMethods1.Online_UrlSave(sigak, grade, url: String);
var
  RecNum : String;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from currenturl where sigak = :sigak and grade = :grade');
  qry_gb_hanja_dic.Params[0].AsString := sigak;
  qry_gb_hanja_dic.Params[1].AsString := grade;
  qry_gb_hanja_dic.Open;

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    RecNum := IntToStr(qry_gb_hanja_dic.FieldByName('num').AsInteger);

    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('update currenturl set url = :url where num = :recnum');
    qry_gb_hanja_dic.Params[0].AsString := url;
    qry_gb_hanja_dic.Params[1].AsString := recnum;
    qry_gb_hanja_dic.ExecSQL;
  end else
  begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into currenturl(sigak, grade, url) values(:sigak, ' +
      ':grade, :url)');
    qry_gb_hanja_dic.Params[0].AsString := sigak;
    qry_gb_hanja_dic.Params[1].AsString := grade;
    qry_gb_hanja_dic.Params[2].AsString := url;
    qry_gb_hanja_dic.ExecSQL;
  end;
end;

procedure TServerMethods1.Online_UrlSaveTeacher(url: String);
var
  UrlList : TStringList;
  I: Integer;
begin
  if url <> '' then
  begin
    UrlList := TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(url), UrlList);
    for I := 0 to (UrlList.Count -1) div 3 do
    begin

      grade := UrlList.Strings[i*3];
      ban   := UrlList.Strings[i*3+1];
      VideoRoom := UrlList.Strings[i*3+2];

      fqry_ksongwones.Close;
      fqry_ksongwones.SQL.Clear;
      fqry_ksongwones.Sql.Add('select * from currenturl where grade = :grade and ban = :ban');
      fqry_ksongwones.Params[0].AsString := grade;
      fqry_ksongwones.Params[1].AsString := ban;
      fqry_ksongwones.Open;

      if fqry_ksongwones.RecordCount > 0 then
      begin
        fqry_ksongwones.Close;
        fqry_ksongwones.SQL.Clear;
        fqry_ksongwones.Sql.Add('update currenturl set url = :videoroom where grade = :grade and ban = :ban');
        fqry_ksongwones.Params[0].AsString := videoroom;
        fqry_ksongwones.Params[1].AsString := grade;
        fqry_ksongwones.Params[2].AsString := ban;
        fqry_ksongwones.ExecSQL;
      end else
      begin
        fqry_ksongwones.Close;
        fqry_ksongwones.SQL.Clear;
        fqry_ksongwones.Sql.Add('insert into currenturl(grade, ban, url) values(:grade, :ban, :videoroom)');
        fqry_ksongwones.Params[0].AsString := grade;
        fqry_ksongwones.Params[1].AsString := ban;
        fqry_ksongwones.Params[2].AsString := videoroom;
        fqry_ksongwones.ExecSQL;
      end;
    end;
    FreeAndNil(UrlList);
  end;
end;

function TServerMethods1.pub_LoadYoutubeAddress: String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select * from currenturl where grade = 7 and ban = 7');
  qry_public.Open;

  if qry_public.RecordCount = 1 then
  begin
    qry_public.First;
    result := qry_public.FieldByName('url').AsString;
  end else result := 'Not Found url';
end;

procedure TServerMethods1.pub_SaveYoutubeAddress(url: String);
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select * from currenturl where grade = 7 and ban = 7');
  qry_public.Open;

  if qry_public.RecordCount = 1 then
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('update currenturl set url = :url where grade = 7 and ban = 7');
    qry_public.Params[0].AsString := url;

    qry_public.ExecSQL;
  end else
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('insert into currenturl(grade, ban, url) values(:grade, :ban, :url)');
    qry_public.Params[0].AsString := '7';
    qry_public.Params[1].AsString := '7';
    qry_public.Params[2].AsString := url;
    qry_public.ExecSQL;
  end;
end;

function TServerMethods1.puzzle_adddata(part, filenames: String): String;
begin
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into swpuzzle(part, filenames) values(' +
                       ':part, :filenames)');
    qry_gb_hanja_dic.Params[0].AsString := part;
    qry_gb_hanja_dic.Params[1].AsString := filenames;

  try
    qry_gb_hanja_dic.ExecSQL;
  finally
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('select part, filenames from swpuzzle where part =' +
                       ':part and filenames = :filenames');
    qry_gb_hanja_dic.Params[0].AsString := part;
    qry_gb_hanja_dic.Params[1].AsString := filenames;
    qry_gb_hanja_dic.Open();

    if qry_gb_hanja_dic.RecordCount > 0 then
      result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.puzzle_loaddata(part: String): String;
var
  puzzle : String;
  i : integer;
begin
  puzzle := '';
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from swpuzzle where part =' +
                     ':part');
  qry_gb_hanja_dic.Params[0].AsString := part;
  qry_gb_hanja_dic.Open();

  qry_gb_hanja_dic.First;
  for i := 0 to qry_gb_hanja_dic.RecordCount -1 do
  begin
    puzzle := puzzle + qry_gb_hanja_dic.fieldbyname('filenames').AsString;
    qry_gb_hanja_dic.Next;
  end;
  result := puzzle;
end;

function TServerMethods1.puzzle_LoadScore(id, puzzle: String): String;
var
  ScoreData : String;
  i : integer;
begin
  ScoreData := '';
  //상위 50명의 데이타 읽는 부분
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from swpuzzlescore where userid = :id and puzzle = :puzzle order by sigak asc');
  qry_gb_hanja_dic.Params[0].AsString := id;
  qry_gb_hanja_dic.Params[1].AsString := puzzle;

  qry_gb_hanja_dic.Open();

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin
    qry_gb_hanja_dic.First;
    for i := 0 to qry_gb_hanja_dic.RecordCount - 1 do
    begin
      ScoreData := ScoreData + qry_gb_hanja_dic.fieldbyname('userid').AsString + '|' + qry_gb_hanja_dic.fieldbyname('username').AsString + '|' +
                               qry_gb_hanja_dic.fieldbyname('grade').AsString + '|' + qry_gb_hanja_dic.fieldbyname('ban').AsString + '|' +
                               qry_gb_hanja_dic.fieldbyname('level').AsString + '|' + IntToStr(qry_gb_hanja_dic.fieldbyname('score').AsInteger) + '|' +
                               qry_gb_hanja_dic.fieldbyname('sigak').AsString + '|';
      qry_gb_hanja_dic.Next;
    end;
  end;

  result := ScoreData;
end;

function TServerMethods1.puzzle_SaveScore(id, name, grade, ban, puzzle, level, score,
  sigak: String): String;
var
  RegiNum, RegiScore : Integer;
begin
  qry_gb_hanja_dic.Close;
  qry_gb_hanja_dic.SQL.Clear;
  qry_gb_hanja_dic.Sql.Add('select * from swpuzzlescore where userid = :id and puzzle = :puzzle and sigak = :sigak');
  qry_gb_hanja_dic.Params[0].AsString := id;
  qry_gb_hanja_dic.Params[1].AsString := puzzle;
  qry_gb_hanja_dic.Params[2].AsString := sigak;
  qry_gb_hanja_dic.Open();

  if qry_gb_hanja_dic.RecordCount > 0 then
  begin  // 등록되어 있을 때
    qry_gb_hanja_dic.First;
    RegiNum := qry_gb_hanja_dic.FieldByName('num').AsInteger;
    RegiScore := qry_gb_hanja_dic.FieldByName('score').AsInteger;
    if StrToInt(Score) > RegiScore then
    begin
      qry_gb_hanja_dic.Close;
      qry_gb_hanja_dic.SQL.Clear;
      qry_gb_hanja_dic.Sql.Add('update swpuzzlescore set level = :level, score = :score where num = :reginum');
      qry_gb_hanja_dic.Params[0].AsString := level;
      qry_gb_hanja_dic.Params[1].AsString := score;
      qry_gb_hanja_dic.Params[2].AsInteger := reginum;
      qry_gb_hanja_dic.ExecSQL;
    end;
  end
  else
  begin  // 등록되어 있지 않을 때
    qry_gb_hanja_dic.Close;
    qry_gb_hanja_dic.SQL.Clear;
    qry_gb_hanja_dic.Sql.Add('insert into swpuzzlescore(userid, username, grade, ban, puzzle, level, score, sigak)' +
                            ' values(:id, :name, :grade, :ban, :puzzle, :level, :score, :sigak)');
    qry_gb_hanja_dic.Params[0].AsString := id;
    qry_gb_hanja_dic.Params[1].AsString := name;
    qry_gb_hanja_dic.Params[2].AsString := grade;
    qry_gb_hanja_dic.Params[3].AsString := ban;
    qry_gb_hanja_dic.Params[4].AsString := puzzle;
    qry_gb_hanja_dic.Params[5].AsString := level;
    qry_gb_hanja_dic.Params[6].AsString := score;
    qry_gb_hanja_dic.Params[7].AsString := sigak;
    qry_gb_hanja_dic.ExecSQL;
  end;
end;

function TServerMethods1.question_addcomment(qnum, cuserid, comment, cfilename, cdate:String): String;
begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('insert into swcomment(qnum, cuserid, comment, cfilename, cdate) values(' +
                       ':qnum, :cuserid, :comment, :cfilename, :cdate)');
    qry_public.Params[0].AsString := qnum;
    qry_public.Params[1].AsString := cuserid;
    qry_public.Params[2].AsString := comment;
    qry_public.Params[3].AsString := cfilename;
    qry_public.Params[4].AsString := cdate;

  try
    qry_public.ExecSQL;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select qtitle, qdate from swcomment where qnum =' +
                       ':qnum and cuserid = :cuserid and cdate = :cdate');
    qry_public.Params[0].AsString := qnum;
    qry_public.Params[1].AsString := cuserid;
    qry_public.Params[2].AsString := cdate;
    qry_public.Open();

    if qry_public.RecordCount > 1 then
      result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.question_addquestion(quserid, qtitle, question, qfilename : String) : String;
var
  qdate : String;
begin
  qdate := DateTimeToStr(Now());

  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into swquestion(quserid, qtitle, question, qfilename, qdate) values(' +
                     ':quserid, :qtitle, :question, :qfilename, :qdate)');
  qry_public.Params[0].AsString := quserid;
  qry_public.Params[1].AsString := qtitle;
  qry_public.Params[2].AsString := question;
  qry_public.Params[3].AsString := qfilename;
  qry_public.Params[4].AsString := qdate;

  try
    qry_public.ExecSQL;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select qtitle, qdate from swquestion where quserid =' +
                       ':quserid and qtitle = :qtitle and qdate = :qdate');
    qry_public.Params[0].AsString := quserid;
    qry_public.Params[1].AsString := qtitle;
    qry_public.Params[2].AsString := qdate;
    qry_public.Open();

    if qry_public.RecordCount > 1 then
      result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.question_LoadCurrentItemData(qNum: String): String;
var
  Comment : String;
  i : integer;
begin
  Comment := '';
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select * from swcomment where qnum = :qnum');
  qry_public.Params[0].AsString := qNum;
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Comment := Comment + qry_public.fieldbyname('num').AsString + '|' + qry_public.fieldbyname('cuserid').AsString + '|'
               + qry_public.fieldbyname('comment').AsString + '|' + qry_public.fieldbyname('cfilename').AsString + '|'
               + qry_public.fieldbyname('thanks').AsString + '|';
    qry_public.Next;
  end;

  result := Comment;
end;

function TServerMethods1.question_LoadQuestionlist(rType, code : String): String;
var
  NoComment : String;
  i : integer;
begin
  NoComment := '';

  if rType = '1' then
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select * from swquestion where cmtnum = "0"');
    qry_public.Open();

    qry_public.First;
    for i := 0 to qry_public.RecordCount -1 do
    begin
      NoComment := NoComment + qry_public.fieldbyname('num').AsString + '|' + qry_public.fieldbyname('quserid').AsString + '|'
                   + qry_public.fieldbyname('qtitle').AsString + '|' + qry_public.fieldbyname('question').AsString + '|'
                   + qry_public.fieldbyname('qfilename').AsString + '|' + qry_public.fieldbyname('cmtnum').AsString + '|';
      qry_public.Next;
    end;
  end;

  if rType = '2' then
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select * from swquestion where quserid = :code');
    qry_public.Params[0].AsString := code;
    qry_public.Open();

    qry_public.First;
    for i := 0 to qry_public.RecordCount -1 do
    begin
      NoComment := NoComment + qry_public.fieldbyname('num').AsString + '|' + qry_public.fieldbyname('quserid').AsString + '|'
                   + qry_public.fieldbyname('qtitle').AsString + '|' + qry_public.fieldbyname('question').AsString + '|'
                   + qry_public.fieldbyname('qfilename').AsString + '|' + qry_public.fieldbyname('cmtnum').AsString + '|';
      qry_public.Next;
    end;
  end;

  result := NoComment;
end;

function TServerMethods1.SendFile(fType, fName : String; AValue: TJSONArray): String;
var
  Image: TJPEGImage;

  Stream: TStream;
  filename : String;
  i, pn: Integer;
  FileMem : TMemoryStream;

begin
  Randomize;
  pn := Random(99);
  Filename := fName + formatDateTime('yyyymmdd',Now) + '_' +
      format('%.2d', [pn]) + '_' + formatDateTime('zzz',Now);

  if not Assigned(AValue) then
    Exit;

  if UpperCase(fType) = 'JPG' then
  begin
    Stream := TStream.Create;
    Stream := TDBXJSONTools.JSONToStream(TJSONArray(AValue));
    try
      Image := TJPEGImage.Create;
      FileName := Filename + '.jpg';
      try
        Image.PixelFormat := jf24Bit;
        Image.Scale := jsEighth;
        Image.Grayscale := False;
        Image.Performance := jpBestQuality;
        Image.ProgressiveDisplay := True;
        Image.ProgressiveEncoding := True;
        Image.CompressionQuality := 80;
        Image.LoadFromStream(Stream);
        Image.SaveToFile(FilePath+Filename);
      finally
        Image.Free;
      end;
    finally
      Stream.Free;
    end;
    result := filename;
  end;

  if UpperCase(fType) = 'PDF' then
  begin
    Stream := TStream.Create;
    Stream := TDBXJSONTools.JSONToStream(TJSONArray(AValue));

    try
      Filename := Filename + '.pdf';
      FileMem := TMemoryStream.Create;
      FileMem.LoadFromStream(Stream);
      FileMem.SaveToFile(FilePath + Filename);
    finally
      Stream.Free;
      FreeAndNil(FileMem);
    end;
    result := Filename;
  end;

  if UpperCase(fType) = 'HWP' then
  begin
    Stream := TStream.Create;
    Stream := TDBXJSONTools.JSONToStream(TJSONArray(AValue));

    try
      Filename := Filename + '.hwp';
      FileMem := TMemoryStream.Create;
      FileMem.LoadFromStream(Stream);
      FileMem.SaveToFile(FilePath + Filename);
    finally
      Stream.Free;
      FreeAndNil(FileMem);
    end;
    result := Filename;
  end;

  if UpperCase(fType) = 'TXT' then
  begin
    Stream := TStream.Create;
    Stream := TDBXJSONTools.JSONToStream(TJSONArray(AValue));

    try
      Filename := Filename + '.txt';
      FileMem := TMemoryStream.Create;
      FileMem.LoadFromStream(Stream);
      FileMem.SaveToFile(FilePath + Filename);
    finally
      Stream.Free;
      FreeAndNil(FileMem);
    end;
    result := Filename;
  end;

  if UpperCase(fType) = 'EXE' then
  begin
    Stream := TStream.Create;
    Stream := TDBXJSONTools.JSONToStream(TJSONArray(AValue));

    try
      Filename := Filename + '.exe';
      FileMem := TMemoryStream.Create;
      FileMem.LoadFromStream(Stream);
      FileMem.SaveToFile(FilePath + Filename);
    finally
      Stream.Free;
      FreeAndNil(FileMem);
    end;
    result := Filename;
  end;
end;

function TServerMethods1.LoadFile(AValue: String): TJSONArray;
var
  Image: TMemoryStream;
  JSONArray : TJSONArray;
begin
  Image := TMemoryStream.Create;
  try
    Image.LoadFromFile(FilePath + AValue);
    Image.Position := 0;
    JSONArray := TDBXJSONTools.StreamToJSON(Image, 0, Image.Size);
  finally
    Image.Free;
  end;
  result := JSONArray;
end;


function TServerMethods1.Member_AddHealth(grade, ban, bunho, username, student,
  family, ampm: String): String;
var
  medicheckdate : String;
begin
  medicheckdate := DateTostr(now());
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into onlinemedicheck (grade, ban, bunho, username, student, ' +
    'family, medicheckdate, ampm ) values (:grade, :ban, :bunho, :username, :student, :family, :medicheckdate, :ampm)');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := bunho;
  qry_public.Params[3].AsString := username;
  qry_public.Params[4].AsString := student;
  qry_public.Params[5].AsString := family;
  qry_public.Params[6].AsString := medicheckdate;
  qry_public.Params[7].AsString := ampm;

  try
    qry_public.ExecSQL;
  finally
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select * from onlinemedicheck where grade = ' +
                       ':grade and ban = :ban and bunho = :bunho and medicheckdate = :medicheckdate and ampm = :ampm');
    qry_public.Params[0].AsString := grade;
    qry_public.Params[1].AsString := ban;
    qry_public.Params[2].AsString := bunho;
    qry_public.Params[3].AsString := medicheckdate;
    qry_public.Params[4].AsString := ampm;
    qry_public.Open();

    if qry_public.RecordCount > 0 then result := 'sucess' else result := 'fail';
  end;
end;

procedure TServerMethods1.SetPath(path: String);
begin
  FilePath := Path;
end;

function TServerMethods1.swmm_Meetinglist(mdate: String): String;
var
  i: Integer;
  mmList : String;
begin
  mmList := '';
  qry_swmm.Close;
  qry_swmm.SQL.Clear;
  qry_swmm.Sql.Add('select * from swmm_share where mdate = :mdate');
  qry_swmm.ParamByName('mdate').AsString := mdate;
  qry_swmm.Open;

  if qry_swmm.RecordCount > 0 then
  begin
    qry_swmm.First;
    for i := 0 to qry_swmm.RecordCount - 1 do
    begin
      mmList := mmList + qry_swmm.fieldbyname('title').AsString + '|' +
                         qry_swmm.fieldbyname('filename').AsString + '|';
    qry_swmm.Next;
    end;

    result := mmList;
  end;
end;

function TServerMethods1.swmm_Regist(title, author, filename, mdate: String): Boolean;
var
  swmm : TMemoryStream;
begin
    qry_swmm.Close;
    qry_swmm.SQL.Clear;
    qry_swmm.Sql.Add('insert into swmm_share(title, author, filename, mdate) values(' +
                       ':title, :author, :filename, :mdate)');
    qry_swmm.ParamByName('title').AsString := title;
    qry_swmm.ParamByName('author').AsString := author;
    qry_swmm.ParamByName('filename').AsString := filename;
    qry_swmm.ParamByName('mdate').AsString := mdate;

    //이미지를 윈도우에서 제공하는 자료구조에 읽어들여 BlobField형 칼럼에 넣는 부분..
//    swmm := TMemoryStream.Create;
//    swmm.LoadFromStream(materials);
//    swmm.Position := 0;
//    파라미터로 메모리스트림을 넘겨받아 저장할 때 사용 - 가끔 전달되지 못하는 오류가 발생
//    qry_swmm.ParamByName('materials').LoadFromStream(materials, ftBlob);

//    FreeAndNil(swmm);
    qry_swmm.ExecSQL;

    qry_swmm.Close;
    qry_swmm.SQL.Clear;
    qry_swmm.Sql.Add('select * from swmm_share where (title = :title) and (author = :author) and (filename = :filename)');
    qry_swmm.Params[0].AsString := title;
    qry_swmm.Params[1].AsString := author;
    qry_swmm.Params[2].AsString := filename;

    qry_swmm.Open();

    if qry_swmm.RecordCount = 0 then result := false else result := true;
end;

function TServerMethods1.swm_DataLoad(grade, lesson: String): String;
var
  i : integer;
  rtnData : String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swmaterials where (grade = :grade) and (lesson = :lesson)');
  fqry_ksongwones.ParamByName('grade').AsString := grade;
  fqry_ksongwones.ParamByName('lesson').AsString := lesson;
  fqry_ksongwones.Open;

  if fqry_ksongwones.RecordCount > 0 then
  begin
    rtnData := '';
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      rtnData := rtnData + fqry_ksongwones.FieldByName('pattern').AsString + '|' + fqry_ksongwones.FieldByName('mname').AsString +'|'+
             fqry_ksongwones.FieldByName('filename').AsString + '|' + fqry_ksongwones.FieldByName('comment').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end;
  if rtnData <> '' then result := rtnData;
end;

function TServerMethods1.swm_DataLoad_OnlyName(Name: String): String;
var
  i : integer;
  rtnData : String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swmaterials where mname like "%' + Name +'%"');
  fqry_ksongwones.Open;

  if fqry_ksongwones.RecordCount > 0 then
  begin
    rtnData := '';
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      rtnData := rtnData + fqry_ksongwones.FieldByName('pattern').AsString + '|' + fqry_ksongwones.FieldByName('mname').AsString +'|'+
             fqry_ksongwones.FieldByName('filename').AsString + '|' + fqry_ksongwones.FieldByName('comment').AsString + '|';
      fqry_ksongwones.Next;
    end;
  end;
  if rtnData <> '' then result := rtnData;
end;

function TServerMethods1.swm_DataSave(grade, lesson, pattern, mname, filename,
  comment: String): Boolean;
var
  RecNum : integer;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('insert into swmaterials(grade, lesson, pattern, mname, filename, comment) values(' +
                     ':grade, :lesson, :pattern, :mname, :filename, :comment)');
  fqry_ksongwones.ParamByName('grade').AsString := grade;
  fqry_ksongwones.ParamByName('lesson').AsString := lesson;
  fqry_ksongwones.ParamByName('pattern').AsString := pattern;
  fqry_ksongwones.ParamByName('mname').AsString := mname;
  fqry_ksongwones.ParamByName('filename').AsString := filename;
  fqry_ksongwones.ParamByName('comment').AsString := comment;
  fqry_ksongwones.ExecSQL;

  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swmaterials where (pattern = :pattern) and (mname = :mname) and (filename = :filename)');
  fqry_ksongwones.Params[0].AsString := pattern;
  fqry_ksongwones.Params[1].AsString := mname;
  fqry_ksongwones.Params[2].AsString := filename;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount = 0 then result := false else result := true;
end;

function TServerMethods1.swm_LessonLoad(tname, lesson: String): String;
var
  i : integer;
  rtnData : String;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swteaching where (tname = :tname) and (lesson = :lesson)');
  fqry_ksongwones.ParamByName('tname').AsString := tname;
  fqry_ksongwones.ParamByName('lesson').AsString := lesson;
  fqry_ksongwones.Open;

  if fqry_ksongwones.RecordCount > 0 then
  begin
    rtnData := '';
    qry_public.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      rtnData := rtnData + fqry_ksongwones.FieldByName('lname').AsString + '^' +
        fqry_ksongwones.FieldByName('contents').AsString + '^';
      fqry_ksongwones.Next;
    end;
  end;
  if rtnData <> '' then result := rtnData;
end;

function TServerMethods1.swm_LessonSave(tname, lesson, lname,
  Contents: String): Boolean;
var
  RegiNum : Integer;
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swteaching where (tname = :tname) and  (lesson = :lesson) and (lname = :lname) ');
  fqry_ksongwones.Params[0].AsString := tname;
  fqry_ksongwones.Params[1].AsString := lesson;
  fqry_ksongwones.Params[2].AsString := lname;
  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    RegiNum := fqry_ksongwones.FieldByName('num').AsInteger;

    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('update swteaching set contents = :contents where num = :reginum');
    fqry_ksongwones.Params[0].AsString := contents;
    fqry_ksongwones.Params[1].AsInteger := reginum;
    fqry_ksongwones.ExecSQL;
  end else
  begin
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('insert into swteaching(tname, lesson, lname, contents) values(' +
                       ':tname, :lesson, :lname, :contents)');
    fqry_ksongwones.ParamByName('tname').AsString := tname;
    fqry_ksongwones.ParamByName('lesson').AsString := lesson;
    fqry_ksongwones.ParamByName('lname').AsString := lname;
    fqry_ksongwones.ParamByName('contents').AsString := contents;
    fqry_ksongwones.ExecSQL;
  end;


  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select * from swteaching where (lesson = :lesson) and (lname = :lname)');
  fqry_ksongwones.Params[0].AsString := lesson;
  fqry_ksongwones.Params[1].AsString := lname;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount = 0 then result := false else result := true;
end;

procedure TServerMethods1.swsmsaddcate(grade, ban, name, cate: String);
var
  Category : String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
//  qry_public.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
//   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  qry_public.Sql.Add('select category from swphonelist where grade = :grade and class=:ban and name = :name');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;
  qry_public.Open;

  qry_public.First;
  Category := qry_public.FieldByName('category').AsString;
  Category := Category + '|' + cate;

  qry_public.Close;
  qry_public.SQL.Clear;
//  qry_public.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
//   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  qry_public.Sql.Add('update swphonelist set category = "' + Category + '" where grade = :grade and class=:ban and name = :name');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;
  qry_public.ExecSQL;
end;

function TServerMethods1.swsmsalldata: String;
var
  Str : String;
  i : integer;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select grade,class,name,AES_DECRYPT(UNHEX(phonenum1), MD5(''Superman'')) AS phonenum1,' +
                     'AES_DECRYPT(UNHEX(phonenum2), MD5(''Superman'')) AS phonenum2, category from swphonelist');
  qry_public.Open;

  Str := '';
  qry_public.First;
  for i := 0 to Qry_public.RecordCount - 1 do
  begin
    Str := Str + qry_public.FieldByName('grade').AsString + ',' + qry_public.FieldByName('class').AsString +','+
           qry_public.FieldByName('name').AsString + ',' + qry_public.FieldByName('phonenum1').AsString + ',' +
           qry_public.FieldByName('phonenum2').AsString + ',' + qry_public.FieldByName('category').AsString + ',';
    qry_public.Next;
  end;

  result := Str;
end;

procedure TServerMethods1.swsmsallerase;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('delete from swphonelist');
  qry_public.ExecSQL;
end;

procedure TServerMethods1.swsmsdelcate(grade, ban, name, cate: String);
var
  Category : TStringList;
  Str : String;
  i : integer;
begin
  Category := TStringList.Create;
  qry_public.Close;
  qry_public.SQL.Clear;
//  qry_public.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
//   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  qry_public.Sql.Add('select category from swphonelist where grade = :grade and class=:ban and name = :name');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;
  qry_public.Open;

  qry_public.First;
  Str := '';
  Str := qry_public.FieldByName('category').AsString;
  ExtractStrings(['|'],[' '],pchar(Str),Category);
  if Category.Count <> 0 then
    Category.Delete(Category.IndexOf(cate));

  Str := '';
  for  i := 0 to Category.Count - 1 do
    Str := Str + Category.Strings[i] + '|';

  qry_public.Close;
  qry_public.SQL.Clear;
//  qry_public.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
//   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  qry_public.Sql.Add('update swphonelist set category = "' + Str + '" where grade = :grade and class=:ban and name = :name');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;
  qry_public.ExecSQL;

  FreeAndNil(Category);
end;

function TServerMethods1.swsmsloadcategory: String;
var
  i, j : integer;
  category,tmp : String;
  catelist,tmplist : TStringList;
begin
  category := '';
  tmp := '';
  catelist := TStringList.Create;

  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select category from swphonelist group by category');
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount - 1 do
  begin
    tmplist := TStringList.Create;
    ExtractStrings(['|'],[' '],Pchar(qry_public.FieldByName('category').AsString),tmplist);
    for j := 0 to tmplist.Count - 1 do
      if CateList.IndexOf(TmpList.Strings[j]) = -1 then CateList.Add(TmpList.Strings[j]);
    TmpList.Free;
    qry_public.Next;
  end;

  for i := 0 to CateList.Count - 1 do
      category := category + CateList.Strings[i] + '|';
  result := category;

  CateList.Free;
end;

function TServerMethods1.swsmsloaddata(Cate, parent: String): String;
var
  i, j : integer;
  smsdata : String;
  catelist,tmplist : TStringList;
begin
  smsdata := '';
  catelist := TStringList.Create;

  if (parent = '0') then
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select name, AES_DECRYPT(UNHEX(phonenum2), MD5(''Superman'')) AS phonenum1,'+
                       'grade,class from swphonelist where category LIKE "%' + Cate + '%"');
    qry_public.Open();
  end else
  begin
    qry_public.Close;
    qry_public.SQL.Clear;
    qry_public.Sql.Add('select name, AES_DECRYPT(UNHEX(phonenum1), MD5(''Superman'')) AS phonenum1,'+
                       'grade,class from swphonelist where category LIKE "%' + Cate + '%"');
    qry_public.Open();
  end;

  qry_public.First;
  for i := 0 to qry_public.RecordCount - 1 do
  begin
    smsdata := smsdata + qry_public.FieldByName('name').AsString + '|' + qry_public.FieldByName('phonenum1').AsString
    + '|' + qry_public.FieldByName('grade').AsString + '|' + qry_public.FieldByName('class').AsString + '|';
    qry_public.Next;
  end;

  result := smsdata;

  CateList.Free;
end;

function TServerMethods1.swsmslogin(phone: String): String;
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select grade,class,name,AES_DECRYPT(UNHEX(phonenum1), MD5(''Superman'')) AS phonenum1,category from swphonelist ' +
                     'where phonenum1 = HEX(AES_ENCRYPT(:phone, MD5(''Superman'')))');
  qry_public.Params[0].AsString := phone;

  qry_public.Open();
//  if qry_member.FieldByName('userid').AsString = 'userid' then result := True else result := False;
  qry_public.First;
  if qry_public.FieldByName('phonenum1').AsString=phone then
  begin
    result := qry_public.FieldByName('grade').AsString + '|' + qry_public.FieldByName('class').AsString + '|' +
              qry_public.FieldByName('name').AsString + '|' + qry_public.FieldByName('phonenum1').AsString + '|' +
              qry_public.FieldByName('category').AsString + '|' + IntToStr(qry_public.RecordCount);
  end;
  qry_public.Close;
end;

procedure TServerMethods1.swsmssavedata(grade, ban, name, phonenum1, phonenum2,
  cate: String);
begin
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  qry_public.Params[0].AsString := grade;
  qry_public.Params[1].AsString := ban;
  qry_public.Params[2].AsString := name;
  qry_public.Params[3].AsString := phonenum1;
  qry_public.Params[4].AsString := phonenum2;
  qry_public.Params[5].AsString := cate;
  qry_public.ExecSQL;
end;

function TServerMethods1.swsms_conversion: String;
var
  i : integer;
  phone: String;
begin
  Phone:= '';
  qry_public.Close;
  qry_public.SQL.Clear;
  qry_public.Sql.Add('select name, grade,class,AES_DECRYPT(UNHEX(phonenum1), MD5(''Superman'')) AS phonenum1,' +
                     'AES_DECRYPT(UNHEX(phonenum2), MD5(''Superman'')) AS phonenum2 from swphonelist');
  qry_public.Open();

  qry_public.First;
  for i := 0 to qry_public.RecordCount -1 do
  begin
    Phone := Phone + qry_public.fieldbyname('name').AsString + '|' + qry_public.fieldbyname('grade').AsString + '|' +
      qry_public.fieldbyname('class').AsString + '|' + qry_public.fieldbyname('phonenum1').AsString + '|' +
      qry_public.fieldbyname('phonenum2').AsString + '|';
    qry_public.Next;
  end;

  result := Phone;
end;

procedure TServerMethods1.swsms_saveInterbase(grade, ban, name, phonenum1,
  phonenum2, cate: String);
begin
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('insert into swphonelist(grade,class,name,phonenum1,phonenum2,category) values(' +
   ':grade, :ban, :name, HEX(AES_ENCRYPT(:phonenum1, MD5(''Superman''))), HEX(AES_ENCRYPT(:phonenum2, MD5(''Superman''))),:cate)');
  fqry_ksongwones.Params[0].AsString := grade;
  fqry_ksongwones.Params[1].AsString := ban;
  fqry_ksongwones.Params[2].AsString := name;
  fqry_ksongwones.Params[3].AsString := phonenum1;
  fqry_ksongwones.Params[4].AsString := phonenum2;
  fqry_ksongwones.Params[5].AsString := cate;
  fqry_ksongwones.ExecSQL;
end;

function TServerMethods1.theone_AddArea(area, comment: String): String;
begin
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('insert into thegoing (area, status) values (' +
   ':area, :status)');
  qry_theonedc.Params[0].AsString := area;
  qry_theonedc.Params[1].AsString := comment;

  try
    qry_theonedc.ExecSQL;
  finally
    qry_theonedc.Close;
    qry_theonedc.SQL.Clear;
    qry_theonedc.Sql.Add('select area from thegoing where area = :area');
    qry_theonedc.Params[0].AsString := area;
    qry_theonedc.Open();

    qry_theonedc.First;
    if qry_theonedc.fieldbyname('area').AsString = area then result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.theone_AddProcess(area, title, pdate, progress, FileName: String): String;
//var
//  resizeImg : TMemoryStream;
//  bmp : TBitmap;
//  jpeg : TJPEGImage;
begin
//  ResizeImg := TMemoryStream.Create;
//  BMP  := TBitmap.Create;
//  JPEG := TJPEGImage.Create;
//
//  fm_main.Panel2.Caption := Img.Size.ToString();
//  fm_main.iev_img.IO.LoadFromStreamJpeg(img);
//  fm_main.iev_img.IO.SaveToStreamJpeg(ResizeImg);
//  fm_main.iev_img.fIEBitmap.Assign(Nil);
//  ResizeImg.Position := 0;
//  jpeg.LoadFromStream(ResizeImg);
//   try
//    //Jpeg에 들어있는 이미지를 1280 x 740 으로 조절하여 bmp에 그렸다가 다시 Jpeg로 옮기는 부분
//    BMP.Height   := 740; // Zoom
//    BMP.Width    := 1280;
//    BMP.Canvas.StretchDraw(Rect(0,0,BMP.Width,BMP.Height),jpeg);
//    JPEG.CompressionQuality := 100;
//    JPEG.Assign(BMP);
////    JPEG.SaveToStream(ResizeImg);
//    Jpeg.SaveToFile('D:\Projects\Songwon\Utility\sw_middleware_vcl_Mysql_20200107\Win32\Release\theonedc\'+Filename);
//  finally
//    FreeAndNil(BMP);
//    FreeAndNil(JPEG);
//    FreeAndNil(ResizeImg);
//   end;

  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('insert into theprocessing (area, title, pdate, progress, filepath) values (' +
   ':area, :title, :pdate, :progress, :filename)');
  qry_theonedc.Params[0].AsString := area;
  qry_theonedc.Params[1].AsString := title;
  qry_theonedc.Params[2].AsString := pdate;
  qry_theonedc.Params[3].AsString := progress;
  qry_theonedc.Params[4].AsString := FileName;

//  qry_theonedc.ParamByName('img').LoadFromStream(resizeimg, ftBlob);

  try
    qry_theonedc.ExecSQL;
  finally
    qry_theonedc.Close;
    qry_theonedc.SQL.Clear;
    qry_theonedc.Sql.Add('select title, area, pdate from theprocessing where area =' +
                       ':area and title = :title and filepath = :filename');
    qry_theonedc.Params[0].AsString := area;
    qry_theonedc.Params[1].AsString := title;
    qry_theonedc.Params[2].AsString := filename;
    qry_theonedc.Open();

    if qry_theonedc.RecordCount = 1 then
      result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.theone_AddUser(name, phone, area, atype: String): String;
begin
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('insert into themember (name, phone, area, atype) values (' +
   ':name,' +
   'HEX(AES_ENCRYPT(:phone, MD5(''Superman''))),' +
   ':area, :atype)');
  qry_theonedc.Params[0].AsString := name;
  qry_theonedc.Params[1].AsString := phone;
  qry_theonedc.Params[2].AsString := area;
  qry_theonedc.Params[3].AsString := atype;

  try
    qry_theonedc.ExecSQL;
  finally
    qry_theonedc.Close;
    qry_theonedc.SQL.Clear;
    qry_theonedc.Sql.Add('select AES_DECRYPT(UNHEX(phone), MD5(''Superman'')) AS phone, name from themember where phone =' +
                       'HEX(AES_ENCRYPT(:phone, MD5(''Superman''))) and name = :name');
    qry_theonedc.Params[0].AsString := phone;
    qry_theonedc.Params[1].AsString := name;
    qry_theonedc.Open();

    qry_theonedc.First;
    if qry_theonedc.fieldbyname('phone').AsString = phone then result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.theone_LoadArea: String;
var
  Area : String;
  i : Integer;
begin
  Area := '';
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('select area from thegoing');
  qry_theonedc.Open();

  if qry_theonedc.RecordCount > 0 then
  begin
    qry_theonedc.First;
    for i := 0 to qry_theonedc.RecordCount - 1 do
    begin
      Area := Area + qry_theonedc.fieldbyname('area').AsString + '|';
      qry_theonedc.Next;
    end;
  end;
  result := Area;
end;

function TServerMethods1.theone_LoadPhone(num: String): String;
var
  Area : String;
  i : Integer;
begin
  Area := '';
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('select AES_DECRYPT(UNHEX(phone), MD5(''Superman'')) AS phone from themember where num = :num');
  qry_theonedc.Params[0].AsInteger := StrToInt(Num);
  qry_theonedc.Open();

  if qry_theonedc.RecordCount > 0 then
  begin
    qry_theonedc.First;
    result := qry_theonedc.fieldbyname('phone').AsString;
  end else result := 'fail';
end;

function TServerMethods1.theone_LoadProcessImg(area, title, pdate: String): String;
var
  ImgName : String;
  i: Integer;
begin
  ImgName := '';
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('select filepath from theprocessing where area = :area and title = :title and pdate = :pdate');
  qry_theonedc.Params[0].AsString := area;
  qry_theonedc.Params[1].AsString := title;
  qry_theonedc.Params[2].AsString := pdate;
  qry_theonedc.Open();

  if qry_theonedc.RecordCount > 0 then
  begin
    qry_theonedc.First;
    for i := 0 to qry_theonedc.RecordCount - 1 do
    begin
      ImgName := ImgName + qry_theonedc.FieldByName('filepath').AsString + '|';
      qry_theonedc.Next;
    end;
  end;
  result := ImgName;
end;

function TServerMethods1.theone_LoadUserArea(PhoneNum: String): String;
var
  Logined : String;
  i: Integer;
begin
  Logined := '';
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('select area from themember where phone =' +
                     'HEX(AES_ENCRYPT(:phone, MD5(''Superman'')))');
  qry_theonedc.Params[0].AsString := PhoneNum;
  qry_theonedc.Open();

  if qry_theonedc.RecordCount > 0 then
  begin
    qry_theonedc.First;
    for i := 0 to qry_theonedc.RecordCount - 1 do
    begin
      Logined := Logined + qry_theonedc.fieldbyname('area').AsString + '|';
      qry_theonedc.Next;
    end;
    result := Logined;
  end else Result := 'fail';
end;

function TServerMethods1.theone_Login(PhoneNum: String): String;
var
  Logined : String;
begin
  Logined := '';
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('select name, area, atype from themember where phone =' +
                     'HEX(AES_ENCRYPT(:phone, MD5(''Superman'')))');
  qry_theonedc.Params[0].AsString := PhoneNum;
  qry_theonedc.Open();

  if qry_theonedc.RecordCount > 0 then
  begin
    qry_theonedc.First;
    Logined := qry_theonedc.fieldbyname('name').AsString + '|' + qry_theonedc.fieldbyname('area').AsString + '|' +
               qry_theonedc.fieldbyname('atype').AsString;
    result := Logined;
  end else Result := 'fail';

end;

function TServerMethods1.theone_UpdateUser(name, phone, area,
  atype: String; num:Integer): String;
begin
  qry_theonedc.Close;
  qry_theonedc.SQL.Clear;
  qry_theonedc.Sql.Add('update themember set name = :name, phone = HEX(AES_ENCRYPT(:phone, MD5(''Superman''))),' +
  ' area = :area, atype = :atype where num = :num');
  qry_theonedc.Params[0].AsString := name;
  qry_theonedc.Params[1].AsString := phone;
  qry_theonedc.Params[2].AsString := area;
  qry_theonedc.Params[3].AsString := atype;
  qry_theonedc.Params[4].AsInteger := num;

  try
    qry_theonedc.ExecSQL;
  finally
    qry_theonedc.Close;
    qry_theonedc.SQL.Clear;
    qry_theonedc.Sql.Add('select AES_DECRYPT(UNHEX(phone), MD5(''Superman'')) AS phone, name from themember where phone =' +
                       'HEX(AES_ENCRYPT(:phone, MD5(''Superman''))) and name = :name');
    qry_theonedc.Params[0].AsString := phone;
    qry_theonedc.Params[1].AsString := name;
    qry_theonedc.Open();

    qry_theonedc.First;
    if qry_theonedc.fieldbyname('phone').AsString = phone then result := 'sucess' else result := 'fail';
  end;
end;

function TServerMethods1.vod_InsertData(mname, mcate, myear, filename, mgrade,
  cnt: String): String;
begin

  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('insert into kswvod(mname, mcate, myear, filename, mgrade, cnt) values (' +
   ':mname, :mcate, :myear, :filename, :grade, :cnt)');
  fqry_ksongwones.Params[0].AsString := mname;
  fqry_ksongwones.Params[1].AsString := mcate;
  fqry_ksongwones.Params[2].AsInteger := StrToInt(myear);
  fqry_ksongwones.Params[3].AsString := filename;
  fqry_ksongwones.Params[4].AsString := mgrade;
  fqry_ksongwones.Params[5].AsString := cnt;

  try
    fqry_ksongwones.ExecSQL;
  finally
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('select mname from kswvod where mname =' +
                       ':mname and mcate = :mcate and myear = :myear');
    fqry_ksongwones.Params[0].AsString := mname;
    fqry_ksongwones.Params[1].AsString := mcate;
    fqry_ksongwones.Params[2].AsString := myear;
    fqry_ksongwones.Open();

    if fqry_ksongwones.RecordCount > 0 then result := 'success' else result := 'fail';
  end;
end;

function TServerMethods1.vod_LoadCate(myear, mgrade: String): String;
var
  category : String;
  i: Integer;
begin
  category := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  if myear = 'ALL' then
  begin
    fqry_ksongwones.Sql.Add('select distinct mcate from kswvod where mgrade >= :mgrade');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(mgrade);
  end else
  begin
    fqry_ksongwones.Sql.Add('select distinct mcate from kswvod where (myear = :myear) and (mgrade >= :mgrade)');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(myear);
    fqry_ksongwones.Params[1].AsInteger := StrToInt(mgrade);
  end;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
    category := category + fqry_ksongwones.fieldbyname('mcate').AsString + '|';
    fqry_ksongwones.Next;
    end;
    result := category;
  end else Result := 'none';
end;

function TServerMethods1.vod_LoadMovieList( myear, mcate, Level: String): String;
var
  movieList : String;
  i: Integer;
begin
  movieList := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  if myear = 'ALL' then
  begin
    fqry_ksongwones.Sql.Add('select num, mname,filename,cnt from kswvod where ' +
                     'mcate = :mcate and mgrade >= :level order by mname asc');
    fqry_ksongwones.Params[0].AsString := mcate;
    fqry_ksongwones.Params[1].AsInteger := StrToInt(level);
  end else
  begin
    fqry_ksongwones.Sql.Add('select num, mname,filename,cnt from kswvod where ' +
                     'myear = :myear and mcate = :mcate and mgrade >= :level order by mname asc');
    fqry_ksongwones.Params[0].AsInteger := StrToInt(myear);
    fqry_ksongwones.Params[1].AsString := mcate;
    fqry_ksongwones.Params[2].AsInteger := StrToInt(level);
  end;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
    movieList := movieList + IntToStr(fqry_ksongwones.fieldbyname('num').AsInteger) + '|' +
                 fqry_ksongwones.fieldbyname('mname').AsString + '|' +
                 fqry_ksongwones.fieldbyname('filename').AsString + '|' +
                 fqry_ksongwones.fieldbyname('cnt').AsString + '|';
    fqry_ksongwones.Next;
    end;
    result := movieList;
  end else Result := 'none';
end;

function TServerMethods1.vod_LoadYear: String;
var
  yearList : String;
  i: Integer;
begin
  yearList := '';
  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;

  fqry_ksongwones.Sql.Add('select distinct myear from kswvod order by myear asc');

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount > 0 then
  begin
    fqry_ksongwones.First;
    for i := 0 to fqry_ksongwones.RecordCount - 1 do
    begin
      yearList := yearList + IntToStr(fqry_ksongwones.fieldbyname('myear').AsInteger) + '|';
      fqry_ksongwones.Next;
    end;
    result := yearList;
  end else Result := 'none';
end;

function TServerMethods1.vod_SaveCount(num: Integer; userid: String): String;
var
  vDate : TDate;
  vTime : String;
begin
  vDate := StrToDateTime(FormatDateTime('yyyy-mm-dd',now));
  vTime := FormatDateTime('am/pm hh : nn',now);

  fqry_ksongwones.Close;
  fqry_ksongwones.SQL.Clear;
  fqry_ksongwones.Sql.Add('select vnum from kswvodcount where ' +
                     'vnum = :num and vuserid = :userid and vdate = :vdate');
  fqry_ksongwones.Params[0].AsInteger := num;
  fqry_ksongwones.Params[1].AsString := userid;
  fqry_ksongwones.Params[2].AsDate := vDate;

  fqry_ksongwones.Open();

  if fqry_ksongwones.RecordCount = 0 then
  begin
    fqry_ksongwones.Close;
    fqry_ksongwones.SQL.Clear;
    fqry_ksongwones.Sql.Add('insert into kswvodcount(vnum, vuserid, vdate, vtime) values(' +
                     ':num, :userid, :vdate, :vtime)');
    fqry_ksongwones.Params[0].AsInteger := num;
    fqry_ksongwones.Params[1].AsString := userid;
    fqry_ksongwones.Params[2].AsDate := vDate;
    fqry_ksongwones.Params[3].AsString := vTime;
    fqry_ksongwones.ExecSQL;
  end;
  fqry_ksongwones.Close;
end;

end.

