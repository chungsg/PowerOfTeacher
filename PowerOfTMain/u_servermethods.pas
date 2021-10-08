// 
// Created by the DataSnap proxy generator.
// 2021-06-10 ¿ÀÈÄ 4:13:09
// 

unit u_servermethods;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FMember_AddUserCommand: TDBXCommand;
    FMember_ConfirmCommand: TDBXCommand;
    FMember_LoginCommand: TDBXCommand;
    FMember_SaveAttendanceCommand: TDBXCommand;
    FMember_LoadAttendanceCommand: TDBXCommand;
    FMember_LoginPhonenumCommand: TDBXCommand;
    FMember_ModifyUserCommand: TDBXCommand;
    FMember_IDPWSchoolCommand: TDBXCommand;
    FMember_PresentCommand: TDBXCommand;
    FMember_LoadPresentCommand: TDBXCommand;
    FMember_IsPresentCommand: TDBXCommand;
    FMember_LessonAllCommand: TDBXCommand;
    FMember_ConversionCommand: TDBXCommand;
    FMember_SaveInterbaseCommand: TDBXCommand;
    Fmember_AddNoticeCommand: TDBXCommand;
    FMember_LoadNoticeCommand: TDBXCommand;
    FMember_AddHealthCommand: TDBXCommand;
    FMember_LoadHealthCommand: TDBXCommand;
    FMember_IsHealthCommand: TDBXCommand;
    FMember_update_cbiCommand: TDBXCommand;
    FMember_delete_cbiCommand: TDBXCommand;
    FOnline_OrderSaveCommand: TDBXCommand;
    FOnline_OrderClearCommand: TDBXCommand;
    FOnline_OrderLoadCommand: TDBXCommand;
    FOnline_ResponseSaveCommand: TDBXCommand;
    FOnline_ResponseLoadCommand: TDBXCommand;
    FOnline_UrlSaveCommand: TDBXCommand;
    FOnline_UrlLoadCommand: TDBXCommand;
    FOnline_UrlSaveTeacherCommand: TDBXCommand;
    FOnline_UrlLoadStudentCommand: TDBXCommand;
    FOnline_UrlLoadTeacherCommand: TDBXCommand;
    FOnline_StudentLoadCommand: TDBXCommand;
    Fpub_SaveYoutubeAddressCommand: TDBXCommand;
    Fpub_LoadYoutubeAddressCommand: TDBXCommand;
    FHGB_hanja_busu_InsertCommand: TDBXCommand;
    FHGB_hanja_gubsu_InsertCommand: TDBXCommand;
    FHGB_ReadSubLevelTitleCommand: TDBXCommand;
    FHGB_AddHanjaCommand: TDBXCommand;
    FHGB_ReadLevelDataCommand: TDBXCommand;
    FHGB_ReadLevelTitleCommand: TDBXCommand;
    FHGB_ReadHanjaCommand: TDBXCommand;
    FHGB_ReadBusuCommand: TDBXCommand;
    FHGB_AddExceptCommand: TDBXCommand;
    FHGB_ReadExceptCommand: TDBXCommand;
    FHGB_ReadGoldenbellCommand: TDBXCommand;
    FHGB_SaveHanjaContestScoreCommand: TDBXCommand;
    FHGB_ReadHanjaContestScoreCommand: TDBXCommand;
    FHGB_SaveHanjaPracticeScoreCommand: TDBXCommand;
    FHGB_ReadHanjaPracticeScoreCommand: TDBXCommand;
    FHGB_SaveHanjaErrorCommand: TDBXCommand;
    FHGB_ReadHanjaErrorCommand: TDBXCommand;
    Fpuzzle_SaveScoreCommand: TDBXCommand;
    Fpuzzle_LoadScoreCommand: TDBXCommand;
    Fswmm_RegistCommand: TDBXCommand;
    Fswmm_MeetinglistCommand: TDBXCommand;
    Ftheone_AddUserCommand: TDBXCommand;
    Ftheone_UpdateUserCommand: TDBXCommand;
    Ftheone_LoginCommand: TDBXCommand;
    Ftheone_AddAreaCommand: TDBXCommand;
    Ftheone_LoadAreaCommand: TDBXCommand;
    Ftheone_LoadUserAreaCommand: TDBXCommand;
    Ftheone_LoadPhoneCommand: TDBXCommand;
    Ftheone_AddProcessCommand: TDBXCommand;
    Ftheone_LoadProcessImgCommand: TDBXCommand;
    FSendFileCommand: TDBXCommand;
    FLoadFileCommand: TDBXCommand;
    FSetPathCommand: TDBXCommand;
    FswsmsloginCommand: TDBXCommand;
    FswsmsloadcategoryCommand: TDBXCommand;
    FswsmsloaddataCommand: TDBXCommand;
    FswsmssavedataCommand: TDBXCommand;
    FswsmsaddcateCommand: TDBXCommand;
    FswsmsdelcateCommand: TDBXCommand;
    FswsmsalleraseCommand: TDBXCommand;
    FswsmsalldataCommand: TDBXCommand;
    Fswsms_conversionCommand: TDBXCommand;
    Fswsms_saveInterbaseCommand: TDBXCommand;
    Fquestion_addquestionCommand: TDBXCommand;
    Fquestion_LoadQuestionlistCommand: TDBXCommand;
    Fquestion_LoadCurrentItemDataCommand: TDBXCommand;
    Fquestion_addcommentCommand: TDBXCommand;
    Fkswlibrary_addbookCommand: TDBXCommand;
    Fkswlibrary_loadcategorynameCommand: TDBXCommand;
    Fkswlibrary_loadkeywordCommand: TDBXCommand;
    Fpuzzle_adddataCommand: TDBXCommand;
    Fpuzzle_loaddataCommand: TDBXCommand;
    Fswm_DataSaveCommand: TDBXCommand;
    Fswm_DataLoadCommand: TDBXCommand;
    Fswm_DataLoad_OnlyNameCommand: TDBXCommand;
    Fswm_LessonSaveCommand: TDBXCommand;
    Fswm_LessonLoadCommand: TDBXCommand;
    Fswm_InsertYoutubeCommand: TDBXCommand;
    Fswm_LoadLessonListCommand: TDBXCommand;
    Fswm_LoadLessonYoutubeCommand: TDBXCommand;
    Fswm_LoadKeyWordYoutubeCommand: TDBXCommand;
    Fswm_LoadYoutubeAllListCommand: TDBXCommand;
    Fvod_InsertDataCommand: TDBXCommand;
    Fvod_LoadYearCommand: TDBXCommand;
    Fvod_LoadCateCommand: TDBXCommand;
    Fvod_LoadMovieListCommand: TDBXCommand;
    Fvod_SaveCountCommand: TDBXCommand;
    Fkswslide_InsertDataCommand: TDBXCommand;
    Fkswslide_LoadYearCommand: TDBXCommand;
    Fkswslide_LoadSubjectCommand: TDBXCommand;
    Fkswslide_subject_read_numCommand: TDBXCommand;
    Fkswslide_LoadFilenamesCommand: TDBXCommand;
    Fkswreading_InsertDataCommand: TDBXCommand;
    Fkswreading_LoadBookNameCommand: TDBXCommand;
    Fkswreading_LoadBookKeyCommand: TDBXCommand;
    Fkswreading_LoadContentsCommand: TDBXCommand;
    Felection_pledgeregistCommand: TDBXCommand;
    Felection_pledgeLoadCommand: TDBXCommand;
    Felection_electCommand: TDBXCommand;
    Felection_statusCommand: TDBXCommand;
    Felection_pledgepartgihonameLoadCommand: TDBXCommand;
    Freglist_InsertDataCommand: TDBXCommand;
    Freglist_LoadCommand: TDBXCommand;
    Fcounsel_settingCommand: TDBXCommand;
    Fcounsel_LoadCounselCommand: TDBXCommand;
    Ftheplan_InsertYearTargetCommand: TDBXCommand;
    Ftheplan_InsertMonthTargetCommand: TDBXCommand;
    Ftheplan_InsertDayTargetCommand: TDBXCommand;
    Ftheplan_LoadYearTargetCommand: TDBXCommand;
    Ftheplan_LoadMonthTargetCommand: TDBXCommand;
    Ftheplan_LoadDayTargetCommand: TDBXCommand;
    Ftheplan_LoadStatisticCommand: TDBXCommand;
    Ftheplan_DeleteTargetCommand: TDBXCommand;
    Ftheplan_CompleteTargetCommand: TDBXCommand;
    Ftheplan_UpdateRankingTargetCommand: TDBXCommand;
    Ftheplan_MoveTomorrowTargetCommand: TDBXCommand;
    Fkswresult_InsertResultDataCommand: TDBXCommand;
    Fkswresult_InsertGroupCodeDataCommand: TDBXCommand;
    Fkswresult_LoadResultCommand: TDBXCommand;
    Fkswresult_LoadGroupCodeCommand: TDBXCommand;
    Fkswenglish_InsertDataCommand: TDBXCommand;
    Fkswenglish_LoadDataCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function Member_AddUser(name: string; userid: string; userpw: string; grade: string; ban: string; bunho: string; iphak: string): string;
    function Member_Confirm(userid: string): string;
    function Member_Login(userid: string; userpw: string): string;
    function Member_SaveAttendance(userid: string; username: string; grade: string; ban: string; bunho: string; ldate: string; lcount: string; lstay: string): string;
    function Member_LoadAttendance(grade: string; ban: string; ldate: string): string;
    function Member_LoginPhonenum(PhoneNum: string): string;
    procedure Member_ModifyUser(userid: string; name: string; grade: string; ban: string; bunho: string);
    function Member_IDPWSchool(grade: string; ban: string; name: string): string;
    function Member_Present(username: string; userid: string; grade: string; ban: string; bunho: string): string;
    function Member_LoadPresent(grade: string; ban: string; presentDate: string): string;
    function Member_IsPresent(userid: string; presentDate: string): Boolean;
    function Member_LessonAll(grade: string; ban: string): string;
    function Member_Conversion: string;
    procedure Member_SaveInterbase(username: string; userid: string; userpw: string; grade: string; ban: string; bunho: string);
    function member_AddNotice(grade: string; title: string; notice: string): string;
    function Member_LoadNotice(grade: string): string;
    function Member_AddHealth(grade: string; ban: string; bunho: string; username: string; student: string; family: string; ampm: string): string;
    function Member_LoadHealth(grade: string; ban: string; medicheckdate: string): string;
    function Member_IsHealth(grade: string; ban: string; bunho: string; username: string; ampm: string): Boolean;
    procedure Member_update_cbi(userid: string; cbi: string);
    procedure Member_delete_cbi(userid: string);
    procedure Online_OrderSave(sigak: string; grade: string; chasi: string; balnum: string; baltype: string);
    procedure Online_OrderClear(sigak: string; grade: string);
    function Online_OrderLoad(sigak: string; grade: string; chasi: string): string;
    procedure Online_ResponseSave(gencode: string; baltype: string; username: string; response: string);
    function Online_ResponseLoad(gencode: string): string;
    procedure Online_UrlSave(sigak: string; grade: string; url: string);
    function Online_UrlLoad(sigak: string; grade: string): string;
    procedure Online_UrlSaveTeacher(url: string);
    function Online_UrlLoadStudent(grade: string; ban: string): string;
    function Online_UrlLoadTeacher: string;
    function Online_StudentLoad(grade: string; ban: string): string;
    procedure pub_SaveYoutubeAddress(url: string);
    function pub_LoadYoutubeAddress: string;
    function HGB_hanja_busu_Insert(level: string; sublevel: string; hun: string; um: string; busu: string; linenum: string; comment: string; Hanjaimg: TMemoryStream): Boolean;
    function HGB_hanja_gubsu_Insert(level: string; sublevel: string; hun: string; um: string; hanja: string; busu: string; linenum: string; comment: string): Boolean;
    function HGB_ReadSubLevelTitle(level: string): string;
    function HGB_AddHanja(level: string; sublevel: string; hun: string; um: string; busu: string; word: string; filename: string; comment: string): string;
    function HGB_ReadLevelData(level: string; sublevel: string): string;
    function HGB_ReadLevelTitle: string;
    function HGB_ReadHanja(hun: string; um: string): Integer;
    function HGB_ReadBusu(busu: string): string;
    function HGB_AddExcept(Level: string; SubLevel: string; Userid: string; HanjaId: string): Boolean;
    function HGB_ReadExcept(Level: string; SubLevel: string; Userid: string): string;
    function HGB_ReadGoldenbell(range: Integer): string;
    procedure HGB_SaveHanjaContestScore(id: string; name: string; grade: string; ban: string; level: string; score: string; sigak: string);
    function HGB_ReadHanjaContestScore(id: string; level: string): string;
    function HGB_SaveHanjaPracticeScore(id: string; name: string; grade: string; ban: string; level: string; score: string; sigak: string): string;
    function HGB_ReadHanjaPracticeScore(id: string): string;
    procedure HGB_SaveHanjaError(ErrorData: string);
    function HGB_ReadHanjaError(id: string): string;
    function puzzle_SaveScore(id: string; name: string; grade: string; ban: string; puzzle: string; level: string; score: string; sigak: string): string;
    function puzzle_LoadScore(id: string; puzzle: string): string;
    function swmm_Regist(title: string; author: string; filename: string; mdate: string): Boolean;
    function swmm_Meetinglist(mdate: string): string;
    function theone_AddUser(name: string; phone: string; area: string; atype: string): string;
    function theone_UpdateUser(name: string; phone: string; area: string; atype: string; num: Integer): string;
    function theone_Login(PhoneNum: string): string;
    function theone_AddArea(area: string; comment: string): string;
    function theone_LoadArea: string;
    function theone_LoadUserArea(PhoneNum: string): string;
    function theone_LoadPhone(num: string): string;
    function theone_AddProcess(area: string; title: string; pdate: string; progress: string; FileName: string): string;
    function theone_LoadProcessImg(area: string; title: string; pdate: string): string;
    function SendFile(fType: string; fName: string; AValue: TJSONArray): string;
    function LoadFile(AValue: string): TJSONArray;
    procedure SetPath(path: string);
    function swsmslogin(phone: string): string;
    function swsmsloadcategory: string;
    function swsmsloaddata(Cate: string; parent: string): string;
    procedure swsmssavedata(grade: string; ban: string; name: string; phonenum1: string; phonenum2: string; cate: string);
    procedure swsmsaddcate(grade: string; ban: string; name: string; cate: string);
    procedure swsmsdelcate(grade: string; ban: string; name: string; cate: string);
    procedure swsmsallerase;
    function swsmsalldata: string;
    function swsms_conversion: string;
    procedure swsms_saveInterbase(grade: string; ban: string; name: string; phonenum1: string; phonenum2: string; cate: string);
    function question_addquestion(quserid: string; qtitle: string; question: string; qfilename: string): string;
    function question_LoadQuestionlist(rType: string; code: string): string;
    function question_LoadCurrentItemData(qNum: string): string;
    function question_addcomment(qnum: string; cuserid: string; comment: string; cfilename: string; cdate: string): string;
    function kswlibrary_addbook(btitle: string; category: string; comment: string; filename: string; rdate: string; userid: string; permit: string): string;
    function kswlibrary_loadcategoryname: string;
    function kswlibrary_loadkeyword(keyword: string; userid: string; condition: Integer): string;
    function puzzle_adddata(part: string; filenames: string): string;
    function puzzle_loaddata(part: string): string;
    function swm_DataSave(grade: string; lesson: string; pattern: string; mname: string; filename: string; comment: string): Boolean;
    function swm_DataLoad(grade: string; lesson: string): string;
    function swm_DataLoad_OnlyName(Name: string): string;
    function swm_LessonSave(tname: string; lesson: string; lname: string; Contents: string): Boolean;
    function swm_LessonLoad(tname: string; lesson: string): string;
    function swm_InsertYoutube(userid: string; lesson: string; title: string; url: string; authority: string): Boolean;
    function swm_LoadLessonList(userid: string): string;
    function swm_LoadLessonYoutube(userid: string; lesson: string): string;
    function swm_LoadKeyWordYoutube(userid: string; keyword: string): string;
    function swm_LoadYoutubeAllList(userid: string): string;
    function vod_InsertData(mname: string; mcate: string; myear: string; filename: string; mgrade: string; cnt: string): string;
    function vod_LoadYear: string;
    function vod_LoadCate(myear: string; mgrade: string): string;
    function vod_LoadMovieList(myear: string; mcate: string; Level: string): string;
    function vod_SaveCount(num: Integer; userid: string): string;
    function kswslide_InsertData(year: string; grade: string; ban: string; subject: string; path: string; filenames: string; cnt: string): string;
    function kswslide_LoadYear: string;
    function kswslide_LoadSubject(year: string; grade: string; level: string): string;
    function kswslide_subject_read_num(year: string): Integer;
    function kswslide_LoadFilenames(year: string; grade: string; subject: string): string;
    function kswreading_InsertData(InsertType: string; userid: string; bookname: string; bookkey: string; contents: string; regidate: string): string;
    function kswreading_LoadBookName(userid: string): string;
    function kswreading_LoadBookKey(BookName: string): string;
    function kswreading_LoadContents(bookname: string; BookKey: string): string;
    function election_pledgeregist(part: string; giho: string; name: string; gradeban: string; photoname: string; pledge: string): string;
    function election_pledgeLoad: string;
    function election_elect(grade: string; ban: string; name: string; part: string; elect: string; electtime: string): string;
    function election_status(part: string): string;
    function election_pledgepartgihonameLoad: string;
    function reglist_InsertData(regname: string; reggrade: string; regpermi: string): string;
    function reglist_Load: string;
    function counsel_setting(cgrade: string; cban: string; cdate: string; cstarttime: string; cfinishtime: string; ctype: string): string;
    function counsel_LoadCounsel(cgrade: string; cban: string): string;
    procedure theplan_InsertYearTarget(userid: string; target: string; fdate: string; wdate: string; process: string);
    procedure theplan_InsertMonthTarget(userid: string; target: string; fdate: string; wdate: string; yearnum: string; process: string);
    procedure theplan_InsertDayTarget(userid: string; target: string; fdate: string; wdate: string; yearnum: string; monthnum: string; ranking: string; process: string);
    function theplan_LoadYearTarget(userid: string; process: string): string;
    function theplan_LoadMonthTarget(userid: string; yearnum: string; process: string): string;
    function theplan_LoadDayTarget(userid: string; yearnum: string; monthnum: string; ToDay: string; process: string): string;
    function theplan_LoadStatistic(userid: string; ToDay: string): string;
    function theplan_DeleteTarget(userid: string; part: string; recnum: string): string;
    procedure theplan_CompleteTarget(userid: string; part: string; recnum: string);
    procedure theplan_UpdateRankingTarget(userid: string; part: string; ranking: string; recnum: string);
    procedure theplan_MoveTomorrowTarget(mdate: string; recnum: string);
    procedure kswresult_InsertResultData(username: string; userid: string; grade: string; ban: string; quizname: string; quizlevel: string; quizpoint: string; quizdate: string; quizcode: string);
    procedure kswresult_InsertGroupCodeData(grade: string; ban: string; quizname: string; quizlevel: string; quizcode: string; quizstatus: string);
    function kswresult_LoadResult(userid: string; quizname: string): string;
    function kswresult_LoadGroupCode(grade: string; ban: string): string;
    procedure kswenglish_InsertData(grade: string; level: string; week: string; contents: string);
    function kswenglish_LoadData(grade: string; level: string; week: string): string;
  end;

implementation

function TServerMethods1Client.Member_AddUser(name: string; userid: string; userpw: string; grade: string; ban: string; bunho: string; iphak: string): string;
begin
  if FMember_AddUserCommand = nil then
  begin
    FMember_AddUserCommand := FDBXConnection.CreateCommand;
    FMember_AddUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_AddUserCommand.Text := 'TServerMethods1.Member_AddUser';
    FMember_AddUserCommand.Prepare;
  end;
  FMember_AddUserCommand.Parameters[0].Value.SetWideString(name);
  FMember_AddUserCommand.Parameters[1].Value.SetWideString(userid);
  FMember_AddUserCommand.Parameters[2].Value.SetWideString(userpw);
  FMember_AddUserCommand.Parameters[3].Value.SetWideString(grade);
  FMember_AddUserCommand.Parameters[4].Value.SetWideString(ban);
  FMember_AddUserCommand.Parameters[5].Value.SetWideString(bunho);
  FMember_AddUserCommand.Parameters[6].Value.SetWideString(iphak);
  FMember_AddUserCommand.ExecuteUpdate;
  Result := FMember_AddUserCommand.Parameters[7].Value.GetWideString;
end;

function TServerMethods1Client.Member_Confirm(userid: string): string;
begin
  if FMember_ConfirmCommand = nil then
  begin
    FMember_ConfirmCommand := FDBXConnection.CreateCommand;
    FMember_ConfirmCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_ConfirmCommand.Text := 'TServerMethods1.Member_Confirm';
    FMember_ConfirmCommand.Prepare;
  end;
  FMember_ConfirmCommand.Parameters[0].Value.SetWideString(userid);
  FMember_ConfirmCommand.ExecuteUpdate;
  Result := FMember_ConfirmCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.Member_Login(userid: string; userpw: string): string;
begin
  if FMember_LoginCommand = nil then
  begin
    FMember_LoginCommand := FDBXConnection.CreateCommand;
    FMember_LoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoginCommand.Text := 'TServerMethods1.Member_Login';
    FMember_LoginCommand.Prepare;
  end;
  FMember_LoginCommand.Parameters[0].Value.SetWideString(userid);
  FMember_LoginCommand.Parameters[1].Value.SetWideString(userpw);
  FMember_LoginCommand.ExecuteUpdate;
  Result := FMember_LoginCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.Member_SaveAttendance(userid: string; username: string; grade: string; ban: string; bunho: string; ldate: string; lcount: string; lstay: string): string;
begin
  if FMember_SaveAttendanceCommand = nil then
  begin
    FMember_SaveAttendanceCommand := FDBXConnection.CreateCommand;
    FMember_SaveAttendanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_SaveAttendanceCommand.Text := 'TServerMethods1.Member_SaveAttendance';
    FMember_SaveAttendanceCommand.Prepare;
  end;
  FMember_SaveAttendanceCommand.Parameters[0].Value.SetWideString(userid);
  FMember_SaveAttendanceCommand.Parameters[1].Value.SetWideString(username);
  FMember_SaveAttendanceCommand.Parameters[2].Value.SetWideString(grade);
  FMember_SaveAttendanceCommand.Parameters[3].Value.SetWideString(ban);
  FMember_SaveAttendanceCommand.Parameters[4].Value.SetWideString(bunho);
  FMember_SaveAttendanceCommand.Parameters[5].Value.SetWideString(ldate);
  FMember_SaveAttendanceCommand.Parameters[6].Value.SetWideString(lcount);
  FMember_SaveAttendanceCommand.Parameters[7].Value.SetWideString(lstay);
  FMember_SaveAttendanceCommand.ExecuteUpdate;
  Result := FMember_SaveAttendanceCommand.Parameters[8].Value.GetWideString;
end;

function TServerMethods1Client.Member_LoadAttendance(grade: string; ban: string; ldate: string): string;
begin
  if FMember_LoadAttendanceCommand = nil then
  begin
    FMember_LoadAttendanceCommand := FDBXConnection.CreateCommand;
    FMember_LoadAttendanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoadAttendanceCommand.Text := 'TServerMethods1.Member_LoadAttendance';
    FMember_LoadAttendanceCommand.Prepare;
  end;
  FMember_LoadAttendanceCommand.Parameters[0].Value.SetWideString(grade);
  FMember_LoadAttendanceCommand.Parameters[1].Value.SetWideString(ban);
  FMember_LoadAttendanceCommand.Parameters[2].Value.SetWideString(ldate);
  FMember_LoadAttendanceCommand.ExecuteUpdate;
  Result := FMember_LoadAttendanceCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.Member_LoginPhonenum(PhoneNum: string): string;
begin
  if FMember_LoginPhonenumCommand = nil then
  begin
    FMember_LoginPhonenumCommand := FDBXConnection.CreateCommand;
    FMember_LoginPhonenumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoginPhonenumCommand.Text := 'TServerMethods1.Member_LoginPhonenum';
    FMember_LoginPhonenumCommand.Prepare;
  end;
  FMember_LoginPhonenumCommand.Parameters[0].Value.SetWideString(PhoneNum);
  FMember_LoginPhonenumCommand.ExecuteUpdate;
  Result := FMember_LoginPhonenumCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.Member_ModifyUser(userid: string; name: string; grade: string; ban: string; bunho: string);
begin
  if FMember_ModifyUserCommand = nil then
  begin
    FMember_ModifyUserCommand := FDBXConnection.CreateCommand;
    FMember_ModifyUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_ModifyUserCommand.Text := 'TServerMethods1.Member_ModifyUser';
    FMember_ModifyUserCommand.Prepare;
  end;
  FMember_ModifyUserCommand.Parameters[0].Value.SetWideString(userid);
  FMember_ModifyUserCommand.Parameters[1].Value.SetWideString(name);
  FMember_ModifyUserCommand.Parameters[2].Value.SetWideString(grade);
  FMember_ModifyUserCommand.Parameters[3].Value.SetWideString(ban);
  FMember_ModifyUserCommand.Parameters[4].Value.SetWideString(bunho);
  FMember_ModifyUserCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Member_IDPWSchool(grade: string; ban: string; name: string): string;
begin
  if FMember_IDPWSchoolCommand = nil then
  begin
    FMember_IDPWSchoolCommand := FDBXConnection.CreateCommand;
    FMember_IDPWSchoolCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_IDPWSchoolCommand.Text := 'TServerMethods1.Member_IDPWSchool';
    FMember_IDPWSchoolCommand.Prepare;
  end;
  FMember_IDPWSchoolCommand.Parameters[0].Value.SetWideString(grade);
  FMember_IDPWSchoolCommand.Parameters[1].Value.SetWideString(ban);
  FMember_IDPWSchoolCommand.Parameters[2].Value.SetWideString(name);
  FMember_IDPWSchoolCommand.ExecuteUpdate;
  Result := FMember_IDPWSchoolCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.Member_Present(username: string; userid: string; grade: string; ban: string; bunho: string): string;
begin
  if FMember_PresentCommand = nil then
  begin
    FMember_PresentCommand := FDBXConnection.CreateCommand;
    FMember_PresentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_PresentCommand.Text := 'TServerMethods1.Member_Present';
    FMember_PresentCommand.Prepare;
  end;
  FMember_PresentCommand.Parameters[0].Value.SetWideString(username);
  FMember_PresentCommand.Parameters[1].Value.SetWideString(userid);
  FMember_PresentCommand.Parameters[2].Value.SetWideString(grade);
  FMember_PresentCommand.Parameters[3].Value.SetWideString(ban);
  FMember_PresentCommand.Parameters[4].Value.SetWideString(bunho);
  FMember_PresentCommand.ExecuteUpdate;
  Result := FMember_PresentCommand.Parameters[5].Value.GetWideString;
end;

function TServerMethods1Client.Member_LoadPresent(grade: string; ban: string; presentDate: string): string;
begin
  if FMember_LoadPresentCommand = nil then
  begin
    FMember_LoadPresentCommand := FDBXConnection.CreateCommand;
    FMember_LoadPresentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoadPresentCommand.Text := 'TServerMethods1.Member_LoadPresent';
    FMember_LoadPresentCommand.Prepare;
  end;
  FMember_LoadPresentCommand.Parameters[0].Value.SetWideString(grade);
  FMember_LoadPresentCommand.Parameters[1].Value.SetWideString(ban);
  FMember_LoadPresentCommand.Parameters[2].Value.SetWideString(presentDate);
  FMember_LoadPresentCommand.ExecuteUpdate;
  Result := FMember_LoadPresentCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.Member_IsPresent(userid: string; presentDate: string): Boolean;
begin
  if FMember_IsPresentCommand = nil then
  begin
    FMember_IsPresentCommand := FDBXConnection.CreateCommand;
    FMember_IsPresentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_IsPresentCommand.Text := 'TServerMethods1.Member_IsPresent';
    FMember_IsPresentCommand.Prepare;
  end;
  FMember_IsPresentCommand.Parameters[0].Value.SetWideString(userid);
  FMember_IsPresentCommand.Parameters[1].Value.SetWideString(presentDate);
  FMember_IsPresentCommand.ExecuteUpdate;
  Result := FMember_IsPresentCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.Member_LessonAll(grade: string; ban: string): string;
begin
  if FMember_LessonAllCommand = nil then
  begin
    FMember_LessonAllCommand := FDBXConnection.CreateCommand;
    FMember_LessonAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LessonAllCommand.Text := 'TServerMethods1.Member_LessonAll';
    FMember_LessonAllCommand.Prepare;
  end;
  FMember_LessonAllCommand.Parameters[0].Value.SetWideString(grade);
  FMember_LessonAllCommand.Parameters[1].Value.SetWideString(ban);
  FMember_LessonAllCommand.ExecuteUpdate;
  Result := FMember_LessonAllCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.Member_Conversion: string;
begin
  if FMember_ConversionCommand = nil then
  begin
    FMember_ConversionCommand := FDBXConnection.CreateCommand;
    FMember_ConversionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_ConversionCommand.Text := 'TServerMethods1.Member_Conversion';
    FMember_ConversionCommand.Prepare;
  end;
  FMember_ConversionCommand.ExecuteUpdate;
  Result := FMember_ConversionCommand.Parameters[0].Value.GetWideString;
end;

procedure TServerMethods1Client.Member_SaveInterbase(username: string; userid: string; userpw: string; grade: string; ban: string; bunho: string);
begin
  if FMember_SaveInterbaseCommand = nil then
  begin
    FMember_SaveInterbaseCommand := FDBXConnection.CreateCommand;
    FMember_SaveInterbaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_SaveInterbaseCommand.Text := 'TServerMethods1.Member_SaveInterbase';
    FMember_SaveInterbaseCommand.Prepare;
  end;
  FMember_SaveInterbaseCommand.Parameters[0].Value.SetWideString(username);
  FMember_SaveInterbaseCommand.Parameters[1].Value.SetWideString(userid);
  FMember_SaveInterbaseCommand.Parameters[2].Value.SetWideString(userpw);
  FMember_SaveInterbaseCommand.Parameters[3].Value.SetWideString(grade);
  FMember_SaveInterbaseCommand.Parameters[4].Value.SetWideString(ban);
  FMember_SaveInterbaseCommand.Parameters[5].Value.SetWideString(bunho);
  FMember_SaveInterbaseCommand.ExecuteUpdate;
end;

function TServerMethods1Client.member_AddNotice(grade: string; title: string; notice: string): string;
begin
  if Fmember_AddNoticeCommand = nil then
  begin
    Fmember_AddNoticeCommand := FDBXConnection.CreateCommand;
    Fmember_AddNoticeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fmember_AddNoticeCommand.Text := 'TServerMethods1.member_AddNotice';
    Fmember_AddNoticeCommand.Prepare;
  end;
  Fmember_AddNoticeCommand.Parameters[0].Value.SetWideString(grade);
  Fmember_AddNoticeCommand.Parameters[1].Value.SetWideString(title);
  Fmember_AddNoticeCommand.Parameters[2].Value.SetWideString(notice);
  Fmember_AddNoticeCommand.ExecuteUpdate;
  Result := Fmember_AddNoticeCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.Member_LoadNotice(grade: string): string;
begin
  if FMember_LoadNoticeCommand = nil then
  begin
    FMember_LoadNoticeCommand := FDBXConnection.CreateCommand;
    FMember_LoadNoticeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoadNoticeCommand.Text := 'TServerMethods1.Member_LoadNotice';
    FMember_LoadNoticeCommand.Prepare;
  end;
  FMember_LoadNoticeCommand.Parameters[0].Value.SetWideString(grade);
  FMember_LoadNoticeCommand.ExecuteUpdate;
  Result := FMember_LoadNoticeCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.Member_AddHealth(grade: string; ban: string; bunho: string; username: string; student: string; family: string; ampm: string): string;
begin
  if FMember_AddHealthCommand = nil then
  begin
    FMember_AddHealthCommand := FDBXConnection.CreateCommand;
    FMember_AddHealthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_AddHealthCommand.Text := 'TServerMethods1.Member_AddHealth';
    FMember_AddHealthCommand.Prepare;
  end;
  FMember_AddHealthCommand.Parameters[0].Value.SetWideString(grade);
  FMember_AddHealthCommand.Parameters[1].Value.SetWideString(ban);
  FMember_AddHealthCommand.Parameters[2].Value.SetWideString(bunho);
  FMember_AddHealthCommand.Parameters[3].Value.SetWideString(username);
  FMember_AddHealthCommand.Parameters[4].Value.SetWideString(student);
  FMember_AddHealthCommand.Parameters[5].Value.SetWideString(family);
  FMember_AddHealthCommand.Parameters[6].Value.SetWideString(ampm);
  FMember_AddHealthCommand.ExecuteUpdate;
  Result := FMember_AddHealthCommand.Parameters[7].Value.GetWideString;
end;

function TServerMethods1Client.Member_LoadHealth(grade: string; ban: string; medicheckdate: string): string;
begin
  if FMember_LoadHealthCommand = nil then
  begin
    FMember_LoadHealthCommand := FDBXConnection.CreateCommand;
    FMember_LoadHealthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_LoadHealthCommand.Text := 'TServerMethods1.Member_LoadHealth';
    FMember_LoadHealthCommand.Prepare;
  end;
  FMember_LoadHealthCommand.Parameters[0].Value.SetWideString(grade);
  FMember_LoadHealthCommand.Parameters[1].Value.SetWideString(ban);
  FMember_LoadHealthCommand.Parameters[2].Value.SetWideString(medicheckdate);
  FMember_LoadHealthCommand.ExecuteUpdate;
  Result := FMember_LoadHealthCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.Member_IsHealth(grade: string; ban: string; bunho: string; username: string; ampm: string): Boolean;
begin
  if FMember_IsHealthCommand = nil then
  begin
    FMember_IsHealthCommand := FDBXConnection.CreateCommand;
    FMember_IsHealthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_IsHealthCommand.Text := 'TServerMethods1.Member_IsHealth';
    FMember_IsHealthCommand.Prepare;
  end;
  FMember_IsHealthCommand.Parameters[0].Value.SetWideString(grade);
  FMember_IsHealthCommand.Parameters[1].Value.SetWideString(ban);
  FMember_IsHealthCommand.Parameters[2].Value.SetWideString(bunho);
  FMember_IsHealthCommand.Parameters[3].Value.SetWideString(username);
  FMember_IsHealthCommand.Parameters[4].Value.SetWideString(ampm);
  FMember_IsHealthCommand.ExecuteUpdate;
  Result := FMember_IsHealthCommand.Parameters[5].Value.GetBoolean;
end;

procedure TServerMethods1Client.Member_update_cbi(userid: string; cbi: string);
begin
  if FMember_update_cbiCommand = nil then
  begin
    FMember_update_cbiCommand := FDBXConnection.CreateCommand;
    FMember_update_cbiCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_update_cbiCommand.Text := 'TServerMethods1.Member_update_cbi';
    FMember_update_cbiCommand.Prepare;
  end;
  FMember_update_cbiCommand.Parameters[0].Value.SetWideString(userid);
  FMember_update_cbiCommand.Parameters[1].Value.SetWideString(cbi);
  FMember_update_cbiCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Member_delete_cbi(userid: string);
begin
  if FMember_delete_cbiCommand = nil then
  begin
    FMember_delete_cbiCommand := FDBXConnection.CreateCommand;
    FMember_delete_cbiCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMember_delete_cbiCommand.Text := 'TServerMethods1.Member_delete_cbi';
    FMember_delete_cbiCommand.Prepare;
  end;
  FMember_delete_cbiCommand.Parameters[0].Value.SetWideString(userid);
  FMember_delete_cbiCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Online_OrderSave(sigak: string; grade: string; chasi: string; balnum: string; baltype: string);
begin
  if FOnline_OrderSaveCommand = nil then
  begin
    FOnline_OrderSaveCommand := FDBXConnection.CreateCommand;
    FOnline_OrderSaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_OrderSaveCommand.Text := 'TServerMethods1.Online_OrderSave';
    FOnline_OrderSaveCommand.Prepare;
  end;
  FOnline_OrderSaveCommand.Parameters[0].Value.SetWideString(sigak);
  FOnline_OrderSaveCommand.Parameters[1].Value.SetWideString(grade);
  FOnline_OrderSaveCommand.Parameters[2].Value.SetWideString(chasi);
  FOnline_OrderSaveCommand.Parameters[3].Value.SetWideString(balnum);
  FOnline_OrderSaveCommand.Parameters[4].Value.SetWideString(baltype);
  FOnline_OrderSaveCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.Online_OrderClear(sigak: string; grade: string);
begin
  if FOnline_OrderClearCommand = nil then
  begin
    FOnline_OrderClearCommand := FDBXConnection.CreateCommand;
    FOnline_OrderClearCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_OrderClearCommand.Text := 'TServerMethods1.Online_OrderClear';
    FOnline_OrderClearCommand.Prepare;
  end;
  FOnline_OrderClearCommand.Parameters[0].Value.SetWideString(sigak);
  FOnline_OrderClearCommand.Parameters[1].Value.SetWideString(grade);
  FOnline_OrderClearCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Online_OrderLoad(sigak: string; grade: string; chasi: string): string;
begin
  if FOnline_OrderLoadCommand = nil then
  begin
    FOnline_OrderLoadCommand := FDBXConnection.CreateCommand;
    FOnline_OrderLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_OrderLoadCommand.Text := 'TServerMethods1.Online_OrderLoad';
    FOnline_OrderLoadCommand.Prepare;
  end;
  FOnline_OrderLoadCommand.Parameters[0].Value.SetWideString(sigak);
  FOnline_OrderLoadCommand.Parameters[1].Value.SetWideString(grade);
  FOnline_OrderLoadCommand.Parameters[2].Value.SetWideString(chasi);
  FOnline_OrderLoadCommand.ExecuteUpdate;
  Result := FOnline_OrderLoadCommand.Parameters[3].Value.GetWideString;
end;

procedure TServerMethods1Client.Online_ResponseSave(gencode: string; baltype: string; username: string; response: string);
begin
  if FOnline_ResponseSaveCommand = nil then
  begin
    FOnline_ResponseSaveCommand := FDBXConnection.CreateCommand;
    FOnline_ResponseSaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_ResponseSaveCommand.Text := 'TServerMethods1.Online_ResponseSave';
    FOnline_ResponseSaveCommand.Prepare;
  end;
  FOnline_ResponseSaveCommand.Parameters[0].Value.SetWideString(gencode);
  FOnline_ResponseSaveCommand.Parameters[1].Value.SetWideString(baltype);
  FOnline_ResponseSaveCommand.Parameters[2].Value.SetWideString(username);
  FOnline_ResponseSaveCommand.Parameters[3].Value.SetWideString(response);
  FOnline_ResponseSaveCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Online_ResponseLoad(gencode: string): string;
begin
  if FOnline_ResponseLoadCommand = nil then
  begin
    FOnline_ResponseLoadCommand := FDBXConnection.CreateCommand;
    FOnline_ResponseLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_ResponseLoadCommand.Text := 'TServerMethods1.Online_ResponseLoad';
    FOnline_ResponseLoadCommand.Prepare;
  end;
  FOnline_ResponseLoadCommand.Parameters[0].Value.SetWideString(gencode);
  FOnline_ResponseLoadCommand.ExecuteUpdate;
  Result := FOnline_ResponseLoadCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.Online_UrlSave(sigak: string; grade: string; url: string);
begin
  if FOnline_UrlSaveCommand = nil then
  begin
    FOnline_UrlSaveCommand := FDBXConnection.CreateCommand;
    FOnline_UrlSaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_UrlSaveCommand.Text := 'TServerMethods1.Online_UrlSave';
    FOnline_UrlSaveCommand.Prepare;
  end;
  FOnline_UrlSaveCommand.Parameters[0].Value.SetWideString(sigak);
  FOnline_UrlSaveCommand.Parameters[1].Value.SetWideString(grade);
  FOnline_UrlSaveCommand.Parameters[2].Value.SetWideString(url);
  FOnline_UrlSaveCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Online_UrlLoad(sigak: string; grade: string): string;
begin
  if FOnline_UrlLoadCommand = nil then
  begin
    FOnline_UrlLoadCommand := FDBXConnection.CreateCommand;
    FOnline_UrlLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_UrlLoadCommand.Text := 'TServerMethods1.Online_UrlLoad';
    FOnline_UrlLoadCommand.Prepare;
  end;
  FOnline_UrlLoadCommand.Parameters[0].Value.SetWideString(sigak);
  FOnline_UrlLoadCommand.Parameters[1].Value.SetWideString(grade);
  FOnline_UrlLoadCommand.ExecuteUpdate;
  Result := FOnline_UrlLoadCommand.Parameters[2].Value.GetWideString;
end;

procedure TServerMethods1Client.Online_UrlSaveTeacher(url: string);
begin
  if FOnline_UrlSaveTeacherCommand = nil then
  begin
    FOnline_UrlSaveTeacherCommand := FDBXConnection.CreateCommand;
    FOnline_UrlSaveTeacherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_UrlSaveTeacherCommand.Text := 'TServerMethods1.Online_UrlSaveTeacher';
    FOnline_UrlSaveTeacherCommand.Prepare;
  end;
  FOnline_UrlSaveTeacherCommand.Parameters[0].Value.SetWideString(url);
  FOnline_UrlSaveTeacherCommand.ExecuteUpdate;
end;

function TServerMethods1Client.Online_UrlLoadStudent(grade: string; ban: string): string;
begin
  if FOnline_UrlLoadStudentCommand = nil then
  begin
    FOnline_UrlLoadStudentCommand := FDBXConnection.CreateCommand;
    FOnline_UrlLoadStudentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_UrlLoadStudentCommand.Text := 'TServerMethods1.Online_UrlLoadStudent';
    FOnline_UrlLoadStudentCommand.Prepare;
  end;
  FOnline_UrlLoadStudentCommand.Parameters[0].Value.SetWideString(grade);
  FOnline_UrlLoadStudentCommand.Parameters[1].Value.SetWideString(ban);
  FOnline_UrlLoadStudentCommand.ExecuteUpdate;
  Result := FOnline_UrlLoadStudentCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.Online_UrlLoadTeacher: string;
begin
  if FOnline_UrlLoadTeacherCommand = nil then
  begin
    FOnline_UrlLoadTeacherCommand := FDBXConnection.CreateCommand;
    FOnline_UrlLoadTeacherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_UrlLoadTeacherCommand.Text := 'TServerMethods1.Online_UrlLoadTeacher';
    FOnline_UrlLoadTeacherCommand.Prepare;
  end;
  FOnline_UrlLoadTeacherCommand.ExecuteUpdate;
  Result := FOnline_UrlLoadTeacherCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.Online_StudentLoad(grade: string; ban: string): string;
begin
  if FOnline_StudentLoadCommand = nil then
  begin
    FOnline_StudentLoadCommand := FDBXConnection.CreateCommand;
    FOnline_StudentLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOnline_StudentLoadCommand.Text := 'TServerMethods1.Online_StudentLoad';
    FOnline_StudentLoadCommand.Prepare;
  end;
  FOnline_StudentLoadCommand.Parameters[0].Value.SetWideString(grade);
  FOnline_StudentLoadCommand.Parameters[1].Value.SetWideString(ban);
  FOnline_StudentLoadCommand.ExecuteUpdate;
  Result := FOnline_StudentLoadCommand.Parameters[2].Value.GetWideString;
end;

procedure TServerMethods1Client.pub_SaveYoutubeAddress(url: string);
begin
  if Fpub_SaveYoutubeAddressCommand = nil then
  begin
    Fpub_SaveYoutubeAddressCommand := FDBXConnection.CreateCommand;
    Fpub_SaveYoutubeAddressCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpub_SaveYoutubeAddressCommand.Text := 'TServerMethods1.pub_SaveYoutubeAddress';
    Fpub_SaveYoutubeAddressCommand.Prepare;
  end;
  Fpub_SaveYoutubeAddressCommand.Parameters[0].Value.SetWideString(url);
  Fpub_SaveYoutubeAddressCommand.ExecuteUpdate;
end;

function TServerMethods1Client.pub_LoadYoutubeAddress: string;
begin
  if Fpub_LoadYoutubeAddressCommand = nil then
  begin
    Fpub_LoadYoutubeAddressCommand := FDBXConnection.CreateCommand;
    Fpub_LoadYoutubeAddressCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpub_LoadYoutubeAddressCommand.Text := 'TServerMethods1.pub_LoadYoutubeAddress';
    Fpub_LoadYoutubeAddressCommand.Prepare;
  end;
  Fpub_LoadYoutubeAddressCommand.ExecuteUpdate;
  Result := Fpub_LoadYoutubeAddressCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.HGB_hanja_busu_Insert(level: string; sublevel: string; hun: string; um: string; busu: string; linenum: string; comment: string; Hanjaimg: TMemoryStream): Boolean;
begin
  if FHGB_hanja_busu_InsertCommand = nil then
  begin
    FHGB_hanja_busu_InsertCommand := FDBXConnection.CreateCommand;
    FHGB_hanja_busu_InsertCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_hanja_busu_InsertCommand.Text := 'TServerMethods1.HGB_hanja_busu_Insert';
    FHGB_hanja_busu_InsertCommand.Prepare;
  end;
  FHGB_hanja_busu_InsertCommand.Parameters[0].Value.SetWideString(level);
  FHGB_hanja_busu_InsertCommand.Parameters[1].Value.SetWideString(sublevel);
  FHGB_hanja_busu_InsertCommand.Parameters[2].Value.SetWideString(hun);
  FHGB_hanja_busu_InsertCommand.Parameters[3].Value.SetWideString(um);
  FHGB_hanja_busu_InsertCommand.Parameters[4].Value.SetWideString(busu);
  FHGB_hanja_busu_InsertCommand.Parameters[5].Value.SetWideString(linenum);
  FHGB_hanja_busu_InsertCommand.Parameters[6].Value.SetWideString(comment);
  FHGB_hanja_busu_InsertCommand.Parameters[7].Value.SetStream(Hanjaimg, FInstanceOwner);
  FHGB_hanja_busu_InsertCommand.ExecuteUpdate;
  Result := FHGB_hanja_busu_InsertCommand.Parameters[8].Value.GetBoolean;
end;

function TServerMethods1Client.HGB_hanja_gubsu_Insert(level: string; sublevel: string; hun: string; um: string; hanja: string; busu: string; linenum: string; comment: string): Boolean;
begin
  if FHGB_hanja_gubsu_InsertCommand = nil then
  begin
    FHGB_hanja_gubsu_InsertCommand := FDBXConnection.CreateCommand;
    FHGB_hanja_gubsu_InsertCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_hanja_gubsu_InsertCommand.Text := 'TServerMethods1.HGB_hanja_gubsu_Insert';
    FHGB_hanja_gubsu_InsertCommand.Prepare;
  end;
  FHGB_hanja_gubsu_InsertCommand.Parameters[0].Value.SetWideString(level);
  FHGB_hanja_gubsu_InsertCommand.Parameters[1].Value.SetWideString(sublevel);
  FHGB_hanja_gubsu_InsertCommand.Parameters[2].Value.SetWideString(hun);
  FHGB_hanja_gubsu_InsertCommand.Parameters[3].Value.SetWideString(um);
  FHGB_hanja_gubsu_InsertCommand.Parameters[4].Value.SetWideString(hanja);
  FHGB_hanja_gubsu_InsertCommand.Parameters[5].Value.SetWideString(busu);
  FHGB_hanja_gubsu_InsertCommand.Parameters[6].Value.SetWideString(linenum);
  FHGB_hanja_gubsu_InsertCommand.Parameters[7].Value.SetWideString(comment);
  FHGB_hanja_gubsu_InsertCommand.ExecuteUpdate;
  Result := FHGB_hanja_gubsu_InsertCommand.Parameters[8].Value.GetBoolean;
end;

function TServerMethods1Client.HGB_ReadSubLevelTitle(level: string): string;
begin
  if FHGB_ReadSubLevelTitleCommand = nil then
  begin
    FHGB_ReadSubLevelTitleCommand := FDBXConnection.CreateCommand;
    FHGB_ReadSubLevelTitleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadSubLevelTitleCommand.Text := 'TServerMethods1.HGB_ReadSubLevelTitle';
    FHGB_ReadSubLevelTitleCommand.Prepare;
  end;
  FHGB_ReadSubLevelTitleCommand.Parameters[0].Value.SetWideString(level);
  FHGB_ReadSubLevelTitleCommand.ExecuteUpdate;
  Result := FHGB_ReadSubLevelTitleCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.HGB_AddHanja(level: string; sublevel: string; hun: string; um: string; busu: string; word: string; filename: string; comment: string): string;
begin
  if FHGB_AddHanjaCommand = nil then
  begin
    FHGB_AddHanjaCommand := FDBXConnection.CreateCommand;
    FHGB_AddHanjaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_AddHanjaCommand.Text := 'TServerMethods1.HGB_AddHanja';
    FHGB_AddHanjaCommand.Prepare;
  end;
  FHGB_AddHanjaCommand.Parameters[0].Value.SetWideString(level);
  FHGB_AddHanjaCommand.Parameters[1].Value.SetWideString(sublevel);
  FHGB_AddHanjaCommand.Parameters[2].Value.SetWideString(hun);
  FHGB_AddHanjaCommand.Parameters[3].Value.SetWideString(um);
  FHGB_AddHanjaCommand.Parameters[4].Value.SetWideString(busu);
  FHGB_AddHanjaCommand.Parameters[5].Value.SetWideString(word);
  FHGB_AddHanjaCommand.Parameters[6].Value.SetWideString(filename);
  FHGB_AddHanjaCommand.Parameters[7].Value.SetWideString(comment);
  FHGB_AddHanjaCommand.ExecuteUpdate;
  Result := FHGB_AddHanjaCommand.Parameters[8].Value.GetWideString;
end;

function TServerMethods1Client.HGB_ReadLevelData(level: string; sublevel: string): string;
begin
  if FHGB_ReadLevelDataCommand = nil then
  begin
    FHGB_ReadLevelDataCommand := FDBXConnection.CreateCommand;
    FHGB_ReadLevelDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadLevelDataCommand.Text := 'TServerMethods1.HGB_ReadLevelData';
    FHGB_ReadLevelDataCommand.Prepare;
  end;
  FHGB_ReadLevelDataCommand.Parameters[0].Value.SetWideString(level);
  FHGB_ReadLevelDataCommand.Parameters[1].Value.SetWideString(sublevel);
  FHGB_ReadLevelDataCommand.ExecuteUpdate;
  Result := FHGB_ReadLevelDataCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.HGB_ReadLevelTitle: string;
begin
  if FHGB_ReadLevelTitleCommand = nil then
  begin
    FHGB_ReadLevelTitleCommand := FDBXConnection.CreateCommand;
    FHGB_ReadLevelTitleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadLevelTitleCommand.Text := 'TServerMethods1.HGB_ReadLevelTitle';
    FHGB_ReadLevelTitleCommand.Prepare;
  end;
  FHGB_ReadLevelTitleCommand.ExecuteUpdate;
  Result := FHGB_ReadLevelTitleCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.HGB_ReadHanja(hun: string; um: string): Integer;
begin
  if FHGB_ReadHanjaCommand = nil then
  begin
    FHGB_ReadHanjaCommand := FDBXConnection.CreateCommand;
    FHGB_ReadHanjaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadHanjaCommand.Text := 'TServerMethods1.HGB_ReadHanja';
    FHGB_ReadHanjaCommand.Prepare;
  end;
  FHGB_ReadHanjaCommand.Parameters[0].Value.SetWideString(hun);
  FHGB_ReadHanjaCommand.Parameters[1].Value.SetWideString(um);
  FHGB_ReadHanjaCommand.ExecuteUpdate;
  Result := FHGB_ReadHanjaCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods1Client.HGB_ReadBusu(busu: string): string;
begin
  if FHGB_ReadBusuCommand = nil then
  begin
    FHGB_ReadBusuCommand := FDBXConnection.CreateCommand;
    FHGB_ReadBusuCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadBusuCommand.Text := 'TServerMethods1.HGB_ReadBusu';
    FHGB_ReadBusuCommand.Prepare;
  end;
  FHGB_ReadBusuCommand.Parameters[0].Value.SetWideString(busu);
  FHGB_ReadBusuCommand.ExecuteUpdate;
  Result := FHGB_ReadBusuCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.HGB_AddExcept(Level: string; SubLevel: string; Userid: string; HanjaId: string): Boolean;
begin
  if FHGB_AddExceptCommand = nil then
  begin
    FHGB_AddExceptCommand := FDBXConnection.CreateCommand;
    FHGB_AddExceptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_AddExceptCommand.Text := 'TServerMethods1.HGB_AddExcept';
    FHGB_AddExceptCommand.Prepare;
  end;
  FHGB_AddExceptCommand.Parameters[0].Value.SetWideString(Level);
  FHGB_AddExceptCommand.Parameters[1].Value.SetWideString(SubLevel);
  FHGB_AddExceptCommand.Parameters[2].Value.SetWideString(Userid);
  FHGB_AddExceptCommand.Parameters[3].Value.SetWideString(HanjaId);
  FHGB_AddExceptCommand.ExecuteUpdate;
  Result := FHGB_AddExceptCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.HGB_ReadExcept(Level: string; SubLevel: string; Userid: string): string;
begin
  if FHGB_ReadExceptCommand = nil then
  begin
    FHGB_ReadExceptCommand := FDBXConnection.CreateCommand;
    FHGB_ReadExceptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadExceptCommand.Text := 'TServerMethods1.HGB_ReadExcept';
    FHGB_ReadExceptCommand.Prepare;
  end;
  FHGB_ReadExceptCommand.Parameters[0].Value.SetWideString(Level);
  FHGB_ReadExceptCommand.Parameters[1].Value.SetWideString(SubLevel);
  FHGB_ReadExceptCommand.Parameters[2].Value.SetWideString(Userid);
  FHGB_ReadExceptCommand.ExecuteUpdate;
  Result := FHGB_ReadExceptCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.HGB_ReadGoldenbell(range: Integer): string;
begin
  if FHGB_ReadGoldenbellCommand = nil then
  begin
    FHGB_ReadGoldenbellCommand := FDBXConnection.CreateCommand;
    FHGB_ReadGoldenbellCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadGoldenbellCommand.Text := 'TServerMethods1.HGB_ReadGoldenbell';
    FHGB_ReadGoldenbellCommand.Prepare;
  end;
  FHGB_ReadGoldenbellCommand.Parameters[0].Value.SetInt32(range);
  FHGB_ReadGoldenbellCommand.ExecuteUpdate;
  Result := FHGB_ReadGoldenbellCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.HGB_SaveHanjaContestScore(id: string; name: string; grade: string; ban: string; level: string; score: string; sigak: string);
begin
  if FHGB_SaveHanjaContestScoreCommand = nil then
  begin
    FHGB_SaveHanjaContestScoreCommand := FDBXConnection.CreateCommand;
    FHGB_SaveHanjaContestScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_SaveHanjaContestScoreCommand.Text := 'TServerMethods1.HGB_SaveHanjaContestScore';
    FHGB_SaveHanjaContestScoreCommand.Prepare;
  end;
  FHGB_SaveHanjaContestScoreCommand.Parameters[0].Value.SetWideString(id);
  FHGB_SaveHanjaContestScoreCommand.Parameters[1].Value.SetWideString(name);
  FHGB_SaveHanjaContestScoreCommand.Parameters[2].Value.SetWideString(grade);
  FHGB_SaveHanjaContestScoreCommand.Parameters[3].Value.SetWideString(ban);
  FHGB_SaveHanjaContestScoreCommand.Parameters[4].Value.SetWideString(level);
  FHGB_SaveHanjaContestScoreCommand.Parameters[5].Value.SetWideString(score);
  FHGB_SaveHanjaContestScoreCommand.Parameters[6].Value.SetWideString(sigak);
  FHGB_SaveHanjaContestScoreCommand.ExecuteUpdate;
end;

function TServerMethods1Client.HGB_ReadHanjaContestScore(id: string; level: string): string;
begin
  if FHGB_ReadHanjaContestScoreCommand = nil then
  begin
    FHGB_ReadHanjaContestScoreCommand := FDBXConnection.CreateCommand;
    FHGB_ReadHanjaContestScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadHanjaContestScoreCommand.Text := 'TServerMethods1.HGB_ReadHanjaContestScore';
    FHGB_ReadHanjaContestScoreCommand.Prepare;
  end;
  FHGB_ReadHanjaContestScoreCommand.Parameters[0].Value.SetWideString(id);
  FHGB_ReadHanjaContestScoreCommand.Parameters[1].Value.SetWideString(level);
  FHGB_ReadHanjaContestScoreCommand.ExecuteUpdate;
  Result := FHGB_ReadHanjaContestScoreCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.HGB_SaveHanjaPracticeScore(id: string; name: string; grade: string; ban: string; level: string; score: string; sigak: string): string;
begin
  if FHGB_SaveHanjaPracticeScoreCommand = nil then
  begin
    FHGB_SaveHanjaPracticeScoreCommand := FDBXConnection.CreateCommand;
    FHGB_SaveHanjaPracticeScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_SaveHanjaPracticeScoreCommand.Text := 'TServerMethods1.HGB_SaveHanjaPracticeScore';
    FHGB_SaveHanjaPracticeScoreCommand.Prepare;
  end;
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[0].Value.SetWideString(id);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[1].Value.SetWideString(name);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[2].Value.SetWideString(grade);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[3].Value.SetWideString(ban);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[4].Value.SetWideString(level);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[5].Value.SetWideString(score);
  FHGB_SaveHanjaPracticeScoreCommand.Parameters[6].Value.SetWideString(sigak);
  FHGB_SaveHanjaPracticeScoreCommand.ExecuteUpdate;
  Result := FHGB_SaveHanjaPracticeScoreCommand.Parameters[7].Value.GetWideString;
end;

function TServerMethods1Client.HGB_ReadHanjaPracticeScore(id: string): string;
begin
  if FHGB_ReadHanjaPracticeScoreCommand = nil then
  begin
    FHGB_ReadHanjaPracticeScoreCommand := FDBXConnection.CreateCommand;
    FHGB_ReadHanjaPracticeScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadHanjaPracticeScoreCommand.Text := 'TServerMethods1.HGB_ReadHanjaPracticeScore';
    FHGB_ReadHanjaPracticeScoreCommand.Prepare;
  end;
  FHGB_ReadHanjaPracticeScoreCommand.Parameters[0].Value.SetWideString(id);
  FHGB_ReadHanjaPracticeScoreCommand.ExecuteUpdate;
  Result := FHGB_ReadHanjaPracticeScoreCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.HGB_SaveHanjaError(ErrorData: string);
begin
  if FHGB_SaveHanjaErrorCommand = nil then
  begin
    FHGB_SaveHanjaErrorCommand := FDBXConnection.CreateCommand;
    FHGB_SaveHanjaErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_SaveHanjaErrorCommand.Text := 'TServerMethods1.HGB_SaveHanjaError';
    FHGB_SaveHanjaErrorCommand.Prepare;
  end;
  FHGB_SaveHanjaErrorCommand.Parameters[0].Value.SetWideString(ErrorData);
  FHGB_SaveHanjaErrorCommand.ExecuteUpdate;
end;

function TServerMethods1Client.HGB_ReadHanjaError(id: string): string;
begin
  if FHGB_ReadHanjaErrorCommand = nil then
  begin
    FHGB_ReadHanjaErrorCommand := FDBXConnection.CreateCommand;
    FHGB_ReadHanjaErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHGB_ReadHanjaErrorCommand.Text := 'TServerMethods1.HGB_ReadHanjaError';
    FHGB_ReadHanjaErrorCommand.Prepare;
  end;
  FHGB_ReadHanjaErrorCommand.Parameters[0].Value.SetWideString(id);
  FHGB_ReadHanjaErrorCommand.ExecuteUpdate;
  Result := FHGB_ReadHanjaErrorCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.puzzle_SaveScore(id: string; name: string; grade: string; ban: string; puzzle: string; level: string; score: string; sigak: string): string;
begin
  if Fpuzzle_SaveScoreCommand = nil then
  begin
    Fpuzzle_SaveScoreCommand := FDBXConnection.CreateCommand;
    Fpuzzle_SaveScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpuzzle_SaveScoreCommand.Text := 'TServerMethods1.puzzle_SaveScore';
    Fpuzzle_SaveScoreCommand.Prepare;
  end;
  Fpuzzle_SaveScoreCommand.Parameters[0].Value.SetWideString(id);
  Fpuzzle_SaveScoreCommand.Parameters[1].Value.SetWideString(name);
  Fpuzzle_SaveScoreCommand.Parameters[2].Value.SetWideString(grade);
  Fpuzzle_SaveScoreCommand.Parameters[3].Value.SetWideString(ban);
  Fpuzzle_SaveScoreCommand.Parameters[4].Value.SetWideString(puzzle);
  Fpuzzle_SaveScoreCommand.Parameters[5].Value.SetWideString(level);
  Fpuzzle_SaveScoreCommand.Parameters[6].Value.SetWideString(score);
  Fpuzzle_SaveScoreCommand.Parameters[7].Value.SetWideString(sigak);
  Fpuzzle_SaveScoreCommand.ExecuteUpdate;
  Result := Fpuzzle_SaveScoreCommand.Parameters[8].Value.GetWideString;
end;

function TServerMethods1Client.puzzle_LoadScore(id: string; puzzle: string): string;
begin
  if Fpuzzle_LoadScoreCommand = nil then
  begin
    Fpuzzle_LoadScoreCommand := FDBXConnection.CreateCommand;
    Fpuzzle_LoadScoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpuzzle_LoadScoreCommand.Text := 'TServerMethods1.puzzle_LoadScore';
    Fpuzzle_LoadScoreCommand.Prepare;
  end;
  Fpuzzle_LoadScoreCommand.Parameters[0].Value.SetWideString(id);
  Fpuzzle_LoadScoreCommand.Parameters[1].Value.SetWideString(puzzle);
  Fpuzzle_LoadScoreCommand.ExecuteUpdate;
  Result := Fpuzzle_LoadScoreCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.swmm_Regist(title: string; author: string; filename: string; mdate: string): Boolean;
begin
  if Fswmm_RegistCommand = nil then
  begin
    Fswmm_RegistCommand := FDBXConnection.CreateCommand;
    Fswmm_RegistCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswmm_RegistCommand.Text := 'TServerMethods1.swmm_Regist';
    Fswmm_RegistCommand.Prepare;
  end;
  Fswmm_RegistCommand.Parameters[0].Value.SetWideString(title);
  Fswmm_RegistCommand.Parameters[1].Value.SetWideString(author);
  Fswmm_RegistCommand.Parameters[2].Value.SetWideString(filename);
  Fswmm_RegistCommand.Parameters[3].Value.SetWideString(mdate);
  Fswmm_RegistCommand.ExecuteUpdate;
  Result := Fswmm_RegistCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.swmm_Meetinglist(mdate: string): string;
begin
  if Fswmm_MeetinglistCommand = nil then
  begin
    Fswmm_MeetinglistCommand := FDBXConnection.CreateCommand;
    Fswmm_MeetinglistCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswmm_MeetinglistCommand.Text := 'TServerMethods1.swmm_Meetinglist';
    Fswmm_MeetinglistCommand.Prepare;
  end;
  Fswmm_MeetinglistCommand.Parameters[0].Value.SetWideString(mdate);
  Fswmm_MeetinglistCommand.ExecuteUpdate;
  Result := Fswmm_MeetinglistCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.theone_AddUser(name: string; phone: string; area: string; atype: string): string;
begin
  if Ftheone_AddUserCommand = nil then
  begin
    Ftheone_AddUserCommand := FDBXConnection.CreateCommand;
    Ftheone_AddUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_AddUserCommand.Text := 'TServerMethods1.theone_AddUser';
    Ftheone_AddUserCommand.Prepare;
  end;
  Ftheone_AddUserCommand.Parameters[0].Value.SetWideString(name);
  Ftheone_AddUserCommand.Parameters[1].Value.SetWideString(phone);
  Ftheone_AddUserCommand.Parameters[2].Value.SetWideString(area);
  Ftheone_AddUserCommand.Parameters[3].Value.SetWideString(atype);
  Ftheone_AddUserCommand.ExecuteUpdate;
  Result := Ftheone_AddUserCommand.Parameters[4].Value.GetWideString;
end;

function TServerMethods1Client.theone_UpdateUser(name: string; phone: string; area: string; atype: string; num: Integer): string;
begin
  if Ftheone_UpdateUserCommand = nil then
  begin
    Ftheone_UpdateUserCommand := FDBXConnection.CreateCommand;
    Ftheone_UpdateUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_UpdateUserCommand.Text := 'TServerMethods1.theone_UpdateUser';
    Ftheone_UpdateUserCommand.Prepare;
  end;
  Ftheone_UpdateUserCommand.Parameters[0].Value.SetWideString(name);
  Ftheone_UpdateUserCommand.Parameters[1].Value.SetWideString(phone);
  Ftheone_UpdateUserCommand.Parameters[2].Value.SetWideString(area);
  Ftheone_UpdateUserCommand.Parameters[3].Value.SetWideString(atype);
  Ftheone_UpdateUserCommand.Parameters[4].Value.SetInt32(num);
  Ftheone_UpdateUserCommand.ExecuteUpdate;
  Result := Ftheone_UpdateUserCommand.Parameters[5].Value.GetWideString;
end;

function TServerMethods1Client.theone_Login(PhoneNum: string): string;
begin
  if Ftheone_LoginCommand = nil then
  begin
    Ftheone_LoginCommand := FDBXConnection.CreateCommand;
    Ftheone_LoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_LoginCommand.Text := 'TServerMethods1.theone_Login';
    Ftheone_LoginCommand.Prepare;
  end;
  Ftheone_LoginCommand.Parameters[0].Value.SetWideString(PhoneNum);
  Ftheone_LoginCommand.ExecuteUpdate;
  Result := Ftheone_LoginCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.theone_AddArea(area: string; comment: string): string;
begin
  if Ftheone_AddAreaCommand = nil then
  begin
    Ftheone_AddAreaCommand := FDBXConnection.CreateCommand;
    Ftheone_AddAreaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_AddAreaCommand.Text := 'TServerMethods1.theone_AddArea';
    Ftheone_AddAreaCommand.Prepare;
  end;
  Ftheone_AddAreaCommand.Parameters[0].Value.SetWideString(area);
  Ftheone_AddAreaCommand.Parameters[1].Value.SetWideString(comment);
  Ftheone_AddAreaCommand.ExecuteUpdate;
  Result := Ftheone_AddAreaCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.theone_LoadArea: string;
begin
  if Ftheone_LoadAreaCommand = nil then
  begin
    Ftheone_LoadAreaCommand := FDBXConnection.CreateCommand;
    Ftheone_LoadAreaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_LoadAreaCommand.Text := 'TServerMethods1.theone_LoadArea';
    Ftheone_LoadAreaCommand.Prepare;
  end;
  Ftheone_LoadAreaCommand.ExecuteUpdate;
  Result := Ftheone_LoadAreaCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.theone_LoadUserArea(PhoneNum: string): string;
begin
  if Ftheone_LoadUserAreaCommand = nil then
  begin
    Ftheone_LoadUserAreaCommand := FDBXConnection.CreateCommand;
    Ftheone_LoadUserAreaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_LoadUserAreaCommand.Text := 'TServerMethods1.theone_LoadUserArea';
    Ftheone_LoadUserAreaCommand.Prepare;
  end;
  Ftheone_LoadUserAreaCommand.Parameters[0].Value.SetWideString(PhoneNum);
  Ftheone_LoadUserAreaCommand.ExecuteUpdate;
  Result := Ftheone_LoadUserAreaCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.theone_LoadPhone(num: string): string;
begin
  if Ftheone_LoadPhoneCommand = nil then
  begin
    Ftheone_LoadPhoneCommand := FDBXConnection.CreateCommand;
    Ftheone_LoadPhoneCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_LoadPhoneCommand.Text := 'TServerMethods1.theone_LoadPhone';
    Ftheone_LoadPhoneCommand.Prepare;
  end;
  Ftheone_LoadPhoneCommand.Parameters[0].Value.SetWideString(num);
  Ftheone_LoadPhoneCommand.ExecuteUpdate;
  Result := Ftheone_LoadPhoneCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.theone_AddProcess(area: string; title: string; pdate: string; progress: string; FileName: string): string;
begin
  if Ftheone_AddProcessCommand = nil then
  begin
    Ftheone_AddProcessCommand := FDBXConnection.CreateCommand;
    Ftheone_AddProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_AddProcessCommand.Text := 'TServerMethods1.theone_AddProcess';
    Ftheone_AddProcessCommand.Prepare;
  end;
  Ftheone_AddProcessCommand.Parameters[0].Value.SetWideString(area);
  Ftheone_AddProcessCommand.Parameters[1].Value.SetWideString(title);
  Ftheone_AddProcessCommand.Parameters[2].Value.SetWideString(pdate);
  Ftheone_AddProcessCommand.Parameters[3].Value.SetWideString(progress);
  Ftheone_AddProcessCommand.Parameters[4].Value.SetWideString(FileName);
  Ftheone_AddProcessCommand.ExecuteUpdate;
  Result := Ftheone_AddProcessCommand.Parameters[5].Value.GetWideString;
end;

function TServerMethods1Client.theone_LoadProcessImg(area: string; title: string; pdate: string): string;
begin
  if Ftheone_LoadProcessImgCommand = nil then
  begin
    Ftheone_LoadProcessImgCommand := FDBXConnection.CreateCommand;
    Ftheone_LoadProcessImgCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheone_LoadProcessImgCommand.Text := 'TServerMethods1.theone_LoadProcessImg';
    Ftheone_LoadProcessImgCommand.Prepare;
  end;
  Ftheone_LoadProcessImgCommand.Parameters[0].Value.SetWideString(area);
  Ftheone_LoadProcessImgCommand.Parameters[1].Value.SetWideString(title);
  Ftheone_LoadProcessImgCommand.Parameters[2].Value.SetWideString(pdate);
  Ftheone_LoadProcessImgCommand.ExecuteUpdate;
  Result := Ftheone_LoadProcessImgCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.SendFile(fType: string; fName: string; AValue: TJSONArray): string;
begin
  if FSendFileCommand = nil then
  begin
    FSendFileCommand := FDBXConnection.CreateCommand;
    FSendFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendFileCommand.Text := 'TServerMethods1.SendFile';
    FSendFileCommand.Prepare;
  end;
  FSendFileCommand.Parameters[0].Value.SetWideString(fType);
  FSendFileCommand.Parameters[1].Value.SetWideString(fName);
  FSendFileCommand.Parameters[2].Value.SetJSONValue(AValue, FInstanceOwner);
  FSendFileCommand.ExecuteUpdate;
  Result := FSendFileCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.LoadFile(AValue: string): TJSONArray;
begin
  if FLoadFileCommand = nil then
  begin
    FLoadFileCommand := FDBXConnection.CreateCommand;
    FLoadFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoadFileCommand.Text := 'TServerMethods1.LoadFile';
    FLoadFileCommand.Prepare;
  end;
  FLoadFileCommand.Parameters[0].Value.SetWideString(AValue);
  FLoadFileCommand.ExecuteUpdate;
  Result := TJSONArray(FLoadFileCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

procedure TServerMethods1Client.SetPath(path: string);
begin
  if FSetPathCommand = nil then
  begin
    FSetPathCommand := FDBXConnection.CreateCommand;
    FSetPathCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetPathCommand.Text := 'TServerMethods1.SetPath';
    FSetPathCommand.Prepare;
  end;
  FSetPathCommand.Parameters[0].Value.SetWideString(path);
  FSetPathCommand.ExecuteUpdate;
end;

function TServerMethods1Client.swsmslogin(phone: string): string;
begin
  if FswsmsloginCommand = nil then
  begin
    FswsmsloginCommand := FDBXConnection.CreateCommand;
    FswsmsloginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsloginCommand.Text := 'TServerMethods1.swsmslogin';
    FswsmsloginCommand.Prepare;
  end;
  FswsmsloginCommand.Parameters[0].Value.SetWideString(phone);
  FswsmsloginCommand.ExecuteUpdate;
  Result := FswsmsloginCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.swsmsloadcategory: string;
begin
  if FswsmsloadcategoryCommand = nil then
  begin
    FswsmsloadcategoryCommand := FDBXConnection.CreateCommand;
    FswsmsloadcategoryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsloadcategoryCommand.Text := 'TServerMethods1.swsmsloadcategory';
    FswsmsloadcategoryCommand.Prepare;
  end;
  FswsmsloadcategoryCommand.ExecuteUpdate;
  Result := FswsmsloadcategoryCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.swsmsloaddata(Cate: string; parent: string): string;
begin
  if FswsmsloaddataCommand = nil then
  begin
    FswsmsloaddataCommand := FDBXConnection.CreateCommand;
    FswsmsloaddataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsloaddataCommand.Text := 'TServerMethods1.swsmsloaddata';
    FswsmsloaddataCommand.Prepare;
  end;
  FswsmsloaddataCommand.Parameters[0].Value.SetWideString(Cate);
  FswsmsloaddataCommand.Parameters[1].Value.SetWideString(parent);
  FswsmsloaddataCommand.ExecuteUpdate;
  Result := FswsmsloaddataCommand.Parameters[2].Value.GetWideString;
end;

procedure TServerMethods1Client.swsmssavedata(grade: string; ban: string; name: string; phonenum1: string; phonenum2: string; cate: string);
begin
  if FswsmssavedataCommand = nil then
  begin
    FswsmssavedataCommand := FDBXConnection.CreateCommand;
    FswsmssavedataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmssavedataCommand.Text := 'TServerMethods1.swsmssavedata';
    FswsmssavedataCommand.Prepare;
  end;
  FswsmssavedataCommand.Parameters[0].Value.SetWideString(grade);
  FswsmssavedataCommand.Parameters[1].Value.SetWideString(ban);
  FswsmssavedataCommand.Parameters[2].Value.SetWideString(name);
  FswsmssavedataCommand.Parameters[3].Value.SetWideString(phonenum1);
  FswsmssavedataCommand.Parameters[4].Value.SetWideString(phonenum2);
  FswsmssavedataCommand.Parameters[5].Value.SetWideString(cate);
  FswsmssavedataCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.swsmsaddcate(grade: string; ban: string; name: string; cate: string);
begin
  if FswsmsaddcateCommand = nil then
  begin
    FswsmsaddcateCommand := FDBXConnection.CreateCommand;
    FswsmsaddcateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsaddcateCommand.Text := 'TServerMethods1.swsmsaddcate';
    FswsmsaddcateCommand.Prepare;
  end;
  FswsmsaddcateCommand.Parameters[0].Value.SetWideString(grade);
  FswsmsaddcateCommand.Parameters[1].Value.SetWideString(ban);
  FswsmsaddcateCommand.Parameters[2].Value.SetWideString(name);
  FswsmsaddcateCommand.Parameters[3].Value.SetWideString(cate);
  FswsmsaddcateCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.swsmsdelcate(grade: string; ban: string; name: string; cate: string);
begin
  if FswsmsdelcateCommand = nil then
  begin
    FswsmsdelcateCommand := FDBXConnection.CreateCommand;
    FswsmsdelcateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsdelcateCommand.Text := 'TServerMethods1.swsmsdelcate';
    FswsmsdelcateCommand.Prepare;
  end;
  FswsmsdelcateCommand.Parameters[0].Value.SetWideString(grade);
  FswsmsdelcateCommand.Parameters[1].Value.SetWideString(ban);
  FswsmsdelcateCommand.Parameters[2].Value.SetWideString(name);
  FswsmsdelcateCommand.Parameters[3].Value.SetWideString(cate);
  FswsmsdelcateCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.swsmsallerase;
begin
  if FswsmsalleraseCommand = nil then
  begin
    FswsmsalleraseCommand := FDBXConnection.CreateCommand;
    FswsmsalleraseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsalleraseCommand.Text := 'TServerMethods1.swsmsallerase';
    FswsmsalleraseCommand.Prepare;
  end;
  FswsmsalleraseCommand.ExecuteUpdate;
end;

function TServerMethods1Client.swsmsalldata: string;
begin
  if FswsmsalldataCommand = nil then
  begin
    FswsmsalldataCommand := FDBXConnection.CreateCommand;
    FswsmsalldataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FswsmsalldataCommand.Text := 'TServerMethods1.swsmsalldata';
    FswsmsalldataCommand.Prepare;
  end;
  FswsmsalldataCommand.ExecuteUpdate;
  Result := FswsmsalldataCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.swsms_conversion: string;
begin
  if Fswsms_conversionCommand = nil then
  begin
    Fswsms_conversionCommand := FDBXConnection.CreateCommand;
    Fswsms_conversionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswsms_conversionCommand.Text := 'TServerMethods1.swsms_conversion';
    Fswsms_conversionCommand.Prepare;
  end;
  Fswsms_conversionCommand.ExecuteUpdate;
  Result := Fswsms_conversionCommand.Parameters[0].Value.GetWideString;
end;

procedure TServerMethods1Client.swsms_saveInterbase(grade: string; ban: string; name: string; phonenum1: string; phonenum2: string; cate: string);
begin
  if Fswsms_saveInterbaseCommand = nil then
  begin
    Fswsms_saveInterbaseCommand := FDBXConnection.CreateCommand;
    Fswsms_saveInterbaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswsms_saveInterbaseCommand.Text := 'TServerMethods1.swsms_saveInterbase';
    Fswsms_saveInterbaseCommand.Prepare;
  end;
  Fswsms_saveInterbaseCommand.Parameters[0].Value.SetWideString(grade);
  Fswsms_saveInterbaseCommand.Parameters[1].Value.SetWideString(ban);
  Fswsms_saveInterbaseCommand.Parameters[2].Value.SetWideString(name);
  Fswsms_saveInterbaseCommand.Parameters[3].Value.SetWideString(phonenum1);
  Fswsms_saveInterbaseCommand.Parameters[4].Value.SetWideString(phonenum2);
  Fswsms_saveInterbaseCommand.Parameters[5].Value.SetWideString(cate);
  Fswsms_saveInterbaseCommand.ExecuteUpdate;
end;

function TServerMethods1Client.question_addquestion(quserid: string; qtitle: string; question: string; qfilename: string): string;
begin
  if Fquestion_addquestionCommand = nil then
  begin
    Fquestion_addquestionCommand := FDBXConnection.CreateCommand;
    Fquestion_addquestionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fquestion_addquestionCommand.Text := 'TServerMethods1.question_addquestion';
    Fquestion_addquestionCommand.Prepare;
  end;
  Fquestion_addquestionCommand.Parameters[0].Value.SetWideString(quserid);
  Fquestion_addquestionCommand.Parameters[1].Value.SetWideString(qtitle);
  Fquestion_addquestionCommand.Parameters[2].Value.SetWideString(question);
  Fquestion_addquestionCommand.Parameters[3].Value.SetWideString(qfilename);
  Fquestion_addquestionCommand.ExecuteUpdate;
  Result := Fquestion_addquestionCommand.Parameters[4].Value.GetWideString;
end;

function TServerMethods1Client.question_LoadQuestionlist(rType: string; code: string): string;
begin
  if Fquestion_LoadQuestionlistCommand = nil then
  begin
    Fquestion_LoadQuestionlistCommand := FDBXConnection.CreateCommand;
    Fquestion_LoadQuestionlistCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fquestion_LoadQuestionlistCommand.Text := 'TServerMethods1.question_LoadQuestionlist';
    Fquestion_LoadQuestionlistCommand.Prepare;
  end;
  Fquestion_LoadQuestionlistCommand.Parameters[0].Value.SetWideString(rType);
  Fquestion_LoadQuestionlistCommand.Parameters[1].Value.SetWideString(code);
  Fquestion_LoadQuestionlistCommand.ExecuteUpdate;
  Result := Fquestion_LoadQuestionlistCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.question_LoadCurrentItemData(qNum: string): string;
begin
  if Fquestion_LoadCurrentItemDataCommand = nil then
  begin
    Fquestion_LoadCurrentItemDataCommand := FDBXConnection.CreateCommand;
    Fquestion_LoadCurrentItemDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fquestion_LoadCurrentItemDataCommand.Text := 'TServerMethods1.question_LoadCurrentItemData';
    Fquestion_LoadCurrentItemDataCommand.Prepare;
  end;
  Fquestion_LoadCurrentItemDataCommand.Parameters[0].Value.SetWideString(qNum);
  Fquestion_LoadCurrentItemDataCommand.ExecuteUpdate;
  Result := Fquestion_LoadCurrentItemDataCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.question_addcomment(qnum: string; cuserid: string; comment: string; cfilename: string; cdate: string): string;
begin
  if Fquestion_addcommentCommand = nil then
  begin
    Fquestion_addcommentCommand := FDBXConnection.CreateCommand;
    Fquestion_addcommentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fquestion_addcommentCommand.Text := 'TServerMethods1.question_addcomment';
    Fquestion_addcommentCommand.Prepare;
  end;
  Fquestion_addcommentCommand.Parameters[0].Value.SetWideString(qnum);
  Fquestion_addcommentCommand.Parameters[1].Value.SetWideString(cuserid);
  Fquestion_addcommentCommand.Parameters[2].Value.SetWideString(comment);
  Fquestion_addcommentCommand.Parameters[3].Value.SetWideString(cfilename);
  Fquestion_addcommentCommand.Parameters[4].Value.SetWideString(cdate);
  Fquestion_addcommentCommand.ExecuteUpdate;
  Result := Fquestion_addcommentCommand.Parameters[5].Value.GetWideString;
end;

function TServerMethods1Client.kswlibrary_addbook(btitle: string; category: string; comment: string; filename: string; rdate: string; userid: string; permit: string): string;
begin
  if Fkswlibrary_addbookCommand = nil then
  begin
    Fkswlibrary_addbookCommand := FDBXConnection.CreateCommand;
    Fkswlibrary_addbookCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswlibrary_addbookCommand.Text := 'TServerMethods1.kswlibrary_addbook';
    Fkswlibrary_addbookCommand.Prepare;
  end;
  Fkswlibrary_addbookCommand.Parameters[0].Value.SetWideString(btitle);
  Fkswlibrary_addbookCommand.Parameters[1].Value.SetWideString(category);
  Fkswlibrary_addbookCommand.Parameters[2].Value.SetWideString(comment);
  Fkswlibrary_addbookCommand.Parameters[3].Value.SetWideString(filename);
  Fkswlibrary_addbookCommand.Parameters[4].Value.SetWideString(rdate);
  Fkswlibrary_addbookCommand.Parameters[5].Value.SetWideString(userid);
  Fkswlibrary_addbookCommand.Parameters[6].Value.SetWideString(permit);
  Fkswlibrary_addbookCommand.ExecuteUpdate;
  Result := Fkswlibrary_addbookCommand.Parameters[7].Value.GetWideString;
end;

function TServerMethods1Client.kswlibrary_loadcategoryname: string;
begin
  if Fkswlibrary_loadcategorynameCommand = nil then
  begin
    Fkswlibrary_loadcategorynameCommand := FDBXConnection.CreateCommand;
    Fkswlibrary_loadcategorynameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswlibrary_loadcategorynameCommand.Text := 'TServerMethods1.kswlibrary_loadcategoryname';
    Fkswlibrary_loadcategorynameCommand.Prepare;
  end;
  Fkswlibrary_loadcategorynameCommand.ExecuteUpdate;
  Result := Fkswlibrary_loadcategorynameCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.kswlibrary_loadkeyword(keyword: string; userid: string; condition: Integer): string;
begin
  if Fkswlibrary_loadkeywordCommand = nil then
  begin
    Fkswlibrary_loadkeywordCommand := FDBXConnection.CreateCommand;
    Fkswlibrary_loadkeywordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswlibrary_loadkeywordCommand.Text := 'TServerMethods1.kswlibrary_loadkeyword';
    Fkswlibrary_loadkeywordCommand.Prepare;
  end;
  Fkswlibrary_loadkeywordCommand.Parameters[0].Value.SetWideString(keyword);
  Fkswlibrary_loadkeywordCommand.Parameters[1].Value.SetWideString(userid);
  Fkswlibrary_loadkeywordCommand.Parameters[2].Value.SetInt32(condition);
  Fkswlibrary_loadkeywordCommand.ExecuteUpdate;
  Result := Fkswlibrary_loadkeywordCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.puzzle_adddata(part: string; filenames: string): string;
begin
  if Fpuzzle_adddataCommand = nil then
  begin
    Fpuzzle_adddataCommand := FDBXConnection.CreateCommand;
    Fpuzzle_adddataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpuzzle_adddataCommand.Text := 'TServerMethods1.puzzle_adddata';
    Fpuzzle_adddataCommand.Prepare;
  end;
  Fpuzzle_adddataCommand.Parameters[0].Value.SetWideString(part);
  Fpuzzle_adddataCommand.Parameters[1].Value.SetWideString(filenames);
  Fpuzzle_adddataCommand.ExecuteUpdate;
  Result := Fpuzzle_adddataCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.puzzle_loaddata(part: string): string;
begin
  if Fpuzzle_loaddataCommand = nil then
  begin
    Fpuzzle_loaddataCommand := FDBXConnection.CreateCommand;
    Fpuzzle_loaddataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fpuzzle_loaddataCommand.Text := 'TServerMethods1.puzzle_loaddata';
    Fpuzzle_loaddataCommand.Prepare;
  end;
  Fpuzzle_loaddataCommand.Parameters[0].Value.SetWideString(part);
  Fpuzzle_loaddataCommand.ExecuteUpdate;
  Result := Fpuzzle_loaddataCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.swm_DataSave(grade: string; lesson: string; pattern: string; mname: string; filename: string; comment: string): Boolean;
begin
  if Fswm_DataSaveCommand = nil then
  begin
    Fswm_DataSaveCommand := FDBXConnection.CreateCommand;
    Fswm_DataSaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_DataSaveCommand.Text := 'TServerMethods1.swm_DataSave';
    Fswm_DataSaveCommand.Prepare;
  end;
  Fswm_DataSaveCommand.Parameters[0].Value.SetWideString(grade);
  Fswm_DataSaveCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_DataSaveCommand.Parameters[2].Value.SetWideString(pattern);
  Fswm_DataSaveCommand.Parameters[3].Value.SetWideString(mname);
  Fswm_DataSaveCommand.Parameters[4].Value.SetWideString(filename);
  Fswm_DataSaveCommand.Parameters[5].Value.SetWideString(comment);
  Fswm_DataSaveCommand.ExecuteUpdate;
  Result := Fswm_DataSaveCommand.Parameters[6].Value.GetBoolean;
end;

function TServerMethods1Client.swm_DataLoad(grade: string; lesson: string): string;
begin
  if Fswm_DataLoadCommand = nil then
  begin
    Fswm_DataLoadCommand := FDBXConnection.CreateCommand;
    Fswm_DataLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_DataLoadCommand.Text := 'TServerMethods1.swm_DataLoad';
    Fswm_DataLoadCommand.Prepare;
  end;
  Fswm_DataLoadCommand.Parameters[0].Value.SetWideString(grade);
  Fswm_DataLoadCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_DataLoadCommand.ExecuteUpdate;
  Result := Fswm_DataLoadCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.swm_DataLoad_OnlyName(Name: string): string;
begin
  if Fswm_DataLoad_OnlyNameCommand = nil then
  begin
    Fswm_DataLoad_OnlyNameCommand := FDBXConnection.CreateCommand;
    Fswm_DataLoad_OnlyNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_DataLoad_OnlyNameCommand.Text := 'TServerMethods1.swm_DataLoad_OnlyName';
    Fswm_DataLoad_OnlyNameCommand.Prepare;
  end;
  Fswm_DataLoad_OnlyNameCommand.Parameters[0].Value.SetWideString(Name);
  Fswm_DataLoad_OnlyNameCommand.ExecuteUpdate;
  Result := Fswm_DataLoad_OnlyNameCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.swm_LessonSave(tname: string; lesson: string; lname: string; Contents: string): Boolean;
begin
  if Fswm_LessonSaveCommand = nil then
  begin
    Fswm_LessonSaveCommand := FDBXConnection.CreateCommand;
    Fswm_LessonSaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LessonSaveCommand.Text := 'TServerMethods1.swm_LessonSave';
    Fswm_LessonSaveCommand.Prepare;
  end;
  Fswm_LessonSaveCommand.Parameters[0].Value.SetWideString(tname);
  Fswm_LessonSaveCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_LessonSaveCommand.Parameters[2].Value.SetWideString(lname);
  Fswm_LessonSaveCommand.Parameters[3].Value.SetWideString(Contents);
  Fswm_LessonSaveCommand.ExecuteUpdate;
  Result := Fswm_LessonSaveCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.swm_LessonLoad(tname: string; lesson: string): string;
begin
  if Fswm_LessonLoadCommand = nil then
  begin
    Fswm_LessonLoadCommand := FDBXConnection.CreateCommand;
    Fswm_LessonLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LessonLoadCommand.Text := 'TServerMethods1.swm_LessonLoad';
    Fswm_LessonLoadCommand.Prepare;
  end;
  Fswm_LessonLoadCommand.Parameters[0].Value.SetWideString(tname);
  Fswm_LessonLoadCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_LessonLoadCommand.ExecuteUpdate;
  Result := Fswm_LessonLoadCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.swm_InsertYoutube(userid: string; lesson: string; title: string; url: string; authority: string): Boolean;
begin
  if Fswm_InsertYoutubeCommand = nil then
  begin
    Fswm_InsertYoutubeCommand := FDBXConnection.CreateCommand;
    Fswm_InsertYoutubeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_InsertYoutubeCommand.Text := 'TServerMethods1.swm_InsertYoutube';
    Fswm_InsertYoutubeCommand.Prepare;
  end;
  Fswm_InsertYoutubeCommand.Parameters[0].Value.SetWideString(userid);
  Fswm_InsertYoutubeCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_InsertYoutubeCommand.Parameters[2].Value.SetWideString(title);
  Fswm_InsertYoutubeCommand.Parameters[3].Value.SetWideString(url);
  Fswm_InsertYoutubeCommand.Parameters[4].Value.SetWideString(authority);
  Fswm_InsertYoutubeCommand.ExecuteUpdate;
  Result := Fswm_InsertYoutubeCommand.Parameters[5].Value.GetBoolean;
end;

function TServerMethods1Client.swm_LoadLessonList(userid: string): string;
begin
  if Fswm_LoadLessonListCommand = nil then
  begin
    Fswm_LoadLessonListCommand := FDBXConnection.CreateCommand;
    Fswm_LoadLessonListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LoadLessonListCommand.Text := 'TServerMethods1.swm_LoadLessonList';
    Fswm_LoadLessonListCommand.Prepare;
  end;
  Fswm_LoadLessonListCommand.Parameters[0].Value.SetWideString(userid);
  Fswm_LoadLessonListCommand.ExecuteUpdate;
  Result := Fswm_LoadLessonListCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.swm_LoadLessonYoutube(userid: string; lesson: string): string;
begin
  if Fswm_LoadLessonYoutubeCommand = nil then
  begin
    Fswm_LoadLessonYoutubeCommand := FDBXConnection.CreateCommand;
    Fswm_LoadLessonYoutubeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LoadLessonYoutubeCommand.Text := 'TServerMethods1.swm_LoadLessonYoutube';
    Fswm_LoadLessonYoutubeCommand.Prepare;
  end;
  Fswm_LoadLessonYoutubeCommand.Parameters[0].Value.SetWideString(userid);
  Fswm_LoadLessonYoutubeCommand.Parameters[1].Value.SetWideString(lesson);
  Fswm_LoadLessonYoutubeCommand.ExecuteUpdate;
  Result := Fswm_LoadLessonYoutubeCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.swm_LoadKeyWordYoutube(userid: string; keyword: string): string;
begin
  if Fswm_LoadKeyWordYoutubeCommand = nil then
  begin
    Fswm_LoadKeyWordYoutubeCommand := FDBXConnection.CreateCommand;
    Fswm_LoadKeyWordYoutubeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LoadKeyWordYoutubeCommand.Text := 'TServerMethods1.swm_LoadKeyWordYoutube';
    Fswm_LoadKeyWordYoutubeCommand.Prepare;
  end;
  Fswm_LoadKeyWordYoutubeCommand.Parameters[0].Value.SetWideString(userid);
  Fswm_LoadKeyWordYoutubeCommand.Parameters[1].Value.SetWideString(keyword);
  Fswm_LoadKeyWordYoutubeCommand.ExecuteUpdate;
  Result := Fswm_LoadKeyWordYoutubeCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.swm_LoadYoutubeAllList(userid: string): string;
begin
  if Fswm_LoadYoutubeAllListCommand = nil then
  begin
    Fswm_LoadYoutubeAllListCommand := FDBXConnection.CreateCommand;
    Fswm_LoadYoutubeAllListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fswm_LoadYoutubeAllListCommand.Text := 'TServerMethods1.swm_LoadYoutubeAllList';
    Fswm_LoadYoutubeAllListCommand.Prepare;
  end;
  Fswm_LoadYoutubeAllListCommand.Parameters[0].Value.SetWideString(userid);
  Fswm_LoadYoutubeAllListCommand.ExecuteUpdate;
  Result := Fswm_LoadYoutubeAllListCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.vod_InsertData(mname: string; mcate: string; myear: string; filename: string; mgrade: string; cnt: string): string;
begin
  if Fvod_InsertDataCommand = nil then
  begin
    Fvod_InsertDataCommand := FDBXConnection.CreateCommand;
    Fvod_InsertDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fvod_InsertDataCommand.Text := 'TServerMethods1.vod_InsertData';
    Fvod_InsertDataCommand.Prepare;
  end;
  Fvod_InsertDataCommand.Parameters[0].Value.SetWideString(mname);
  Fvod_InsertDataCommand.Parameters[1].Value.SetWideString(mcate);
  Fvod_InsertDataCommand.Parameters[2].Value.SetWideString(myear);
  Fvod_InsertDataCommand.Parameters[3].Value.SetWideString(filename);
  Fvod_InsertDataCommand.Parameters[4].Value.SetWideString(mgrade);
  Fvod_InsertDataCommand.Parameters[5].Value.SetWideString(cnt);
  Fvod_InsertDataCommand.ExecuteUpdate;
  Result := Fvod_InsertDataCommand.Parameters[6].Value.GetWideString;
end;

function TServerMethods1Client.vod_LoadYear: string;
begin
  if Fvod_LoadYearCommand = nil then
  begin
    Fvod_LoadYearCommand := FDBXConnection.CreateCommand;
    Fvod_LoadYearCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fvod_LoadYearCommand.Text := 'TServerMethods1.vod_LoadYear';
    Fvod_LoadYearCommand.Prepare;
  end;
  Fvod_LoadYearCommand.ExecuteUpdate;
  Result := Fvod_LoadYearCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.vod_LoadCate(myear: string; mgrade: string): string;
begin
  if Fvod_LoadCateCommand = nil then
  begin
    Fvod_LoadCateCommand := FDBXConnection.CreateCommand;
    Fvod_LoadCateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fvod_LoadCateCommand.Text := 'TServerMethods1.vod_LoadCate';
    Fvod_LoadCateCommand.Prepare;
  end;
  Fvod_LoadCateCommand.Parameters[0].Value.SetWideString(myear);
  Fvod_LoadCateCommand.Parameters[1].Value.SetWideString(mgrade);
  Fvod_LoadCateCommand.ExecuteUpdate;
  Result := Fvod_LoadCateCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.vod_LoadMovieList(myear: string; mcate: string; Level: string): string;
begin
  if Fvod_LoadMovieListCommand = nil then
  begin
    Fvod_LoadMovieListCommand := FDBXConnection.CreateCommand;
    Fvod_LoadMovieListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fvod_LoadMovieListCommand.Text := 'TServerMethods1.vod_LoadMovieList';
    Fvod_LoadMovieListCommand.Prepare;
  end;
  Fvod_LoadMovieListCommand.Parameters[0].Value.SetWideString(myear);
  Fvod_LoadMovieListCommand.Parameters[1].Value.SetWideString(mcate);
  Fvod_LoadMovieListCommand.Parameters[2].Value.SetWideString(Level);
  Fvod_LoadMovieListCommand.ExecuteUpdate;
  Result := Fvod_LoadMovieListCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.vod_SaveCount(num: Integer; userid: string): string;
begin
  if Fvod_SaveCountCommand = nil then
  begin
    Fvod_SaveCountCommand := FDBXConnection.CreateCommand;
    Fvod_SaveCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fvod_SaveCountCommand.Text := 'TServerMethods1.vod_SaveCount';
    Fvod_SaveCountCommand.Prepare;
  end;
  Fvod_SaveCountCommand.Parameters[0].Value.SetInt32(num);
  Fvod_SaveCountCommand.Parameters[1].Value.SetWideString(userid);
  Fvod_SaveCountCommand.ExecuteUpdate;
  Result := Fvod_SaveCountCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.kswslide_InsertData(year: string; grade: string; ban: string; subject: string; path: string; filenames: string; cnt: string): string;
begin
  if Fkswslide_InsertDataCommand = nil then
  begin
    Fkswslide_InsertDataCommand := FDBXConnection.CreateCommand;
    Fkswslide_InsertDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswslide_InsertDataCommand.Text := 'TServerMethods1.kswslide_InsertData';
    Fkswslide_InsertDataCommand.Prepare;
  end;
  Fkswslide_InsertDataCommand.Parameters[0].Value.SetWideString(year);
  Fkswslide_InsertDataCommand.Parameters[1].Value.SetWideString(grade);
  Fkswslide_InsertDataCommand.Parameters[2].Value.SetWideString(ban);
  Fkswslide_InsertDataCommand.Parameters[3].Value.SetWideString(subject);
  Fkswslide_InsertDataCommand.Parameters[4].Value.SetWideString(path);
  Fkswslide_InsertDataCommand.Parameters[5].Value.SetWideString(filenames);
  Fkswslide_InsertDataCommand.Parameters[6].Value.SetWideString(cnt);
  Fkswslide_InsertDataCommand.ExecuteUpdate;
  Result := Fkswslide_InsertDataCommand.Parameters[7].Value.GetWideString;
end;

function TServerMethods1Client.kswslide_LoadYear: string;
begin
  if Fkswslide_LoadYearCommand = nil then
  begin
    Fkswslide_LoadYearCommand := FDBXConnection.CreateCommand;
    Fkswslide_LoadYearCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswslide_LoadYearCommand.Text := 'TServerMethods1.kswslide_LoadYear';
    Fkswslide_LoadYearCommand.Prepare;
  end;
  Fkswslide_LoadYearCommand.ExecuteUpdate;
  Result := Fkswslide_LoadYearCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.kswslide_LoadSubject(year: string; grade: string; level: string): string;
begin
  if Fkswslide_LoadSubjectCommand = nil then
  begin
    Fkswslide_LoadSubjectCommand := FDBXConnection.CreateCommand;
    Fkswslide_LoadSubjectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswslide_LoadSubjectCommand.Text := 'TServerMethods1.kswslide_LoadSubject';
    Fkswslide_LoadSubjectCommand.Prepare;
  end;
  Fkswslide_LoadSubjectCommand.Parameters[0].Value.SetWideString(year);
  Fkswslide_LoadSubjectCommand.Parameters[1].Value.SetWideString(grade);
  Fkswslide_LoadSubjectCommand.Parameters[2].Value.SetWideString(level);
  Fkswslide_LoadSubjectCommand.ExecuteUpdate;
  Result := Fkswslide_LoadSubjectCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.kswslide_subject_read_num(year: string): Integer;
begin
  if Fkswslide_subject_read_numCommand = nil then
  begin
    Fkswslide_subject_read_numCommand := FDBXConnection.CreateCommand;
    Fkswslide_subject_read_numCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswslide_subject_read_numCommand.Text := 'TServerMethods1.kswslide_subject_read_num';
    Fkswslide_subject_read_numCommand.Prepare;
  end;
  Fkswslide_subject_read_numCommand.Parameters[0].Value.SetWideString(year);
  Fkswslide_subject_read_numCommand.ExecuteUpdate;
  Result := Fkswslide_subject_read_numCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.kswslide_LoadFilenames(year: string; grade: string; subject: string): string;
begin
  if Fkswslide_LoadFilenamesCommand = nil then
  begin
    Fkswslide_LoadFilenamesCommand := FDBXConnection.CreateCommand;
    Fkswslide_LoadFilenamesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswslide_LoadFilenamesCommand.Text := 'TServerMethods1.kswslide_LoadFilenames';
    Fkswslide_LoadFilenamesCommand.Prepare;
  end;
  Fkswslide_LoadFilenamesCommand.Parameters[0].Value.SetWideString(year);
  Fkswslide_LoadFilenamesCommand.Parameters[1].Value.SetWideString(grade);
  Fkswslide_LoadFilenamesCommand.Parameters[2].Value.SetWideString(subject);
  Fkswslide_LoadFilenamesCommand.ExecuteUpdate;
  Result := Fkswslide_LoadFilenamesCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.kswreading_InsertData(InsertType: string; userid: string; bookname: string; bookkey: string; contents: string; regidate: string): string;
begin
  if Fkswreading_InsertDataCommand = nil then
  begin
    Fkswreading_InsertDataCommand := FDBXConnection.CreateCommand;
    Fkswreading_InsertDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswreading_InsertDataCommand.Text := 'TServerMethods1.kswreading_InsertData';
    Fkswreading_InsertDataCommand.Prepare;
  end;
  Fkswreading_InsertDataCommand.Parameters[0].Value.SetWideString(InsertType);
  Fkswreading_InsertDataCommand.Parameters[1].Value.SetWideString(userid);
  Fkswreading_InsertDataCommand.Parameters[2].Value.SetWideString(bookname);
  Fkswreading_InsertDataCommand.Parameters[3].Value.SetWideString(bookkey);
  Fkswreading_InsertDataCommand.Parameters[4].Value.SetWideString(contents);
  Fkswreading_InsertDataCommand.Parameters[5].Value.SetWideString(regidate);
  Fkswreading_InsertDataCommand.ExecuteUpdate;
  Result := Fkswreading_InsertDataCommand.Parameters[6].Value.GetWideString;
end;

function TServerMethods1Client.kswreading_LoadBookName(userid: string): string;
begin
  if Fkswreading_LoadBookNameCommand = nil then
  begin
    Fkswreading_LoadBookNameCommand := FDBXConnection.CreateCommand;
    Fkswreading_LoadBookNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswreading_LoadBookNameCommand.Text := 'TServerMethods1.kswreading_LoadBookName';
    Fkswreading_LoadBookNameCommand.Prepare;
  end;
  Fkswreading_LoadBookNameCommand.Parameters[0].Value.SetWideString(userid);
  Fkswreading_LoadBookNameCommand.ExecuteUpdate;
  Result := Fkswreading_LoadBookNameCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.kswreading_LoadBookKey(BookName: string): string;
begin
  if Fkswreading_LoadBookKeyCommand = nil then
  begin
    Fkswreading_LoadBookKeyCommand := FDBXConnection.CreateCommand;
    Fkswreading_LoadBookKeyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswreading_LoadBookKeyCommand.Text := 'TServerMethods1.kswreading_LoadBookKey';
    Fkswreading_LoadBookKeyCommand.Prepare;
  end;
  Fkswreading_LoadBookKeyCommand.Parameters[0].Value.SetWideString(BookName);
  Fkswreading_LoadBookKeyCommand.ExecuteUpdate;
  Result := Fkswreading_LoadBookKeyCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.kswreading_LoadContents(bookname: string; BookKey: string): string;
begin
  if Fkswreading_LoadContentsCommand = nil then
  begin
    Fkswreading_LoadContentsCommand := FDBXConnection.CreateCommand;
    Fkswreading_LoadContentsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswreading_LoadContentsCommand.Text := 'TServerMethods1.kswreading_LoadContents';
    Fkswreading_LoadContentsCommand.Prepare;
  end;
  Fkswreading_LoadContentsCommand.Parameters[0].Value.SetWideString(bookname);
  Fkswreading_LoadContentsCommand.Parameters[1].Value.SetWideString(BookKey);
  Fkswreading_LoadContentsCommand.ExecuteUpdate;
  Result := Fkswreading_LoadContentsCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.election_pledgeregist(part: string; giho: string; name: string; gradeban: string; photoname: string; pledge: string): string;
begin
  if Felection_pledgeregistCommand = nil then
  begin
    Felection_pledgeregistCommand := FDBXConnection.CreateCommand;
    Felection_pledgeregistCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Felection_pledgeregistCommand.Text := 'TServerMethods1.election_pledgeregist';
    Felection_pledgeregistCommand.Prepare;
  end;
  Felection_pledgeregistCommand.Parameters[0].Value.SetWideString(part);
  Felection_pledgeregistCommand.Parameters[1].Value.SetWideString(giho);
  Felection_pledgeregistCommand.Parameters[2].Value.SetWideString(name);
  Felection_pledgeregistCommand.Parameters[3].Value.SetWideString(gradeban);
  Felection_pledgeregistCommand.Parameters[4].Value.SetWideString(photoname);
  Felection_pledgeregistCommand.Parameters[5].Value.SetWideString(pledge);
  Felection_pledgeregistCommand.ExecuteUpdate;
  Result := Felection_pledgeregistCommand.Parameters[6].Value.GetWideString;
end;

function TServerMethods1Client.election_pledgeLoad: string;
begin
  if Felection_pledgeLoadCommand = nil then
  begin
    Felection_pledgeLoadCommand := FDBXConnection.CreateCommand;
    Felection_pledgeLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Felection_pledgeLoadCommand.Text := 'TServerMethods1.election_pledgeLoad';
    Felection_pledgeLoadCommand.Prepare;
  end;
  Felection_pledgeLoadCommand.ExecuteUpdate;
  Result := Felection_pledgeLoadCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.election_elect(grade: string; ban: string; name: string; part: string; elect: string; electtime: string): string;
begin
  if Felection_electCommand = nil then
  begin
    Felection_electCommand := FDBXConnection.CreateCommand;
    Felection_electCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Felection_electCommand.Text := 'TServerMethods1.election_elect';
    Felection_electCommand.Prepare;
  end;
  Felection_electCommand.Parameters[0].Value.SetWideString(grade);
  Felection_electCommand.Parameters[1].Value.SetWideString(ban);
  Felection_electCommand.Parameters[2].Value.SetWideString(name);
  Felection_electCommand.Parameters[3].Value.SetWideString(part);
  Felection_electCommand.Parameters[4].Value.SetWideString(elect);
  Felection_electCommand.Parameters[5].Value.SetWideString(electtime);
  Felection_electCommand.ExecuteUpdate;
  Result := Felection_electCommand.Parameters[6].Value.GetWideString;
end;

function TServerMethods1Client.election_status(part: string): string;
begin
  if Felection_statusCommand = nil then
  begin
    Felection_statusCommand := FDBXConnection.CreateCommand;
    Felection_statusCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Felection_statusCommand.Text := 'TServerMethods1.election_status';
    Felection_statusCommand.Prepare;
  end;
  Felection_statusCommand.Parameters[0].Value.SetWideString(part);
  Felection_statusCommand.ExecuteUpdate;
  Result := Felection_statusCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.election_pledgepartgihonameLoad: string;
begin
  if Felection_pledgepartgihonameLoadCommand = nil then
  begin
    Felection_pledgepartgihonameLoadCommand := FDBXConnection.CreateCommand;
    Felection_pledgepartgihonameLoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Felection_pledgepartgihonameLoadCommand.Text := 'TServerMethods1.election_pledgepartgihonameLoad';
    Felection_pledgepartgihonameLoadCommand.Prepare;
  end;
  Felection_pledgepartgihonameLoadCommand.ExecuteUpdate;
  Result := Felection_pledgepartgihonameLoadCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.reglist_InsertData(regname: string; reggrade: string; regpermi: string): string;
begin
  if Freglist_InsertDataCommand = nil then
  begin
    Freglist_InsertDataCommand := FDBXConnection.CreateCommand;
    Freglist_InsertDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Freglist_InsertDataCommand.Text := 'TServerMethods1.reglist_InsertData';
    Freglist_InsertDataCommand.Prepare;
  end;
  Freglist_InsertDataCommand.Parameters[0].Value.SetWideString(regname);
  Freglist_InsertDataCommand.Parameters[1].Value.SetWideString(reggrade);
  Freglist_InsertDataCommand.Parameters[2].Value.SetWideString(regpermi);
  Freglist_InsertDataCommand.ExecuteUpdate;
  Result := Freglist_InsertDataCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.reglist_Load: string;
begin
  if Freglist_LoadCommand = nil then
  begin
    Freglist_LoadCommand := FDBXConnection.CreateCommand;
    Freglist_LoadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Freglist_LoadCommand.Text := 'TServerMethods1.reglist_Load';
    Freglist_LoadCommand.Prepare;
  end;
  Freglist_LoadCommand.ExecuteUpdate;
  Result := Freglist_LoadCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.counsel_setting(cgrade: string; cban: string; cdate: string; cstarttime: string; cfinishtime: string; ctype: string): string;
begin
  if Fcounsel_settingCommand = nil then
  begin
    Fcounsel_settingCommand := FDBXConnection.CreateCommand;
    Fcounsel_settingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcounsel_settingCommand.Text := 'TServerMethods1.counsel_setting';
    Fcounsel_settingCommand.Prepare;
  end;
  Fcounsel_settingCommand.Parameters[0].Value.SetWideString(cgrade);
  Fcounsel_settingCommand.Parameters[1].Value.SetWideString(cban);
  Fcounsel_settingCommand.Parameters[2].Value.SetWideString(cdate);
  Fcounsel_settingCommand.Parameters[3].Value.SetWideString(cstarttime);
  Fcounsel_settingCommand.Parameters[4].Value.SetWideString(cfinishtime);
  Fcounsel_settingCommand.Parameters[5].Value.SetWideString(ctype);
  Fcounsel_settingCommand.ExecuteUpdate;
  Result := Fcounsel_settingCommand.Parameters[6].Value.GetWideString;
end;

function TServerMethods1Client.counsel_LoadCounsel(cgrade: string; cban: string): string;
begin
  if Fcounsel_LoadCounselCommand = nil then
  begin
    Fcounsel_LoadCounselCommand := FDBXConnection.CreateCommand;
    Fcounsel_LoadCounselCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fcounsel_LoadCounselCommand.Text := 'TServerMethods1.counsel_LoadCounsel';
    Fcounsel_LoadCounselCommand.Prepare;
  end;
  Fcounsel_LoadCounselCommand.Parameters[0].Value.SetWideString(cgrade);
  Fcounsel_LoadCounselCommand.Parameters[1].Value.SetWideString(cban);
  Fcounsel_LoadCounselCommand.ExecuteUpdate;
  Result := Fcounsel_LoadCounselCommand.Parameters[2].Value.GetWideString;
end;

procedure TServerMethods1Client.theplan_InsertYearTarget(userid: string; target: string; fdate: string; wdate: string; process: string);
begin
  if Ftheplan_InsertYearTargetCommand = nil then
  begin
    Ftheplan_InsertYearTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_InsertYearTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_InsertYearTargetCommand.Text := 'TServerMethods1.theplan_InsertYearTarget';
    Ftheplan_InsertYearTargetCommand.Prepare;
  end;
  Ftheplan_InsertYearTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_InsertYearTargetCommand.Parameters[1].Value.SetWideString(target);
  Ftheplan_InsertYearTargetCommand.Parameters[2].Value.SetWideString(fdate);
  Ftheplan_InsertYearTargetCommand.Parameters[3].Value.SetWideString(wdate);
  Ftheplan_InsertYearTargetCommand.Parameters[4].Value.SetWideString(process);
  Ftheplan_InsertYearTargetCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.theplan_InsertMonthTarget(userid: string; target: string; fdate: string; wdate: string; yearnum: string; process: string);
begin
  if Ftheplan_InsertMonthTargetCommand = nil then
  begin
    Ftheplan_InsertMonthTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_InsertMonthTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_InsertMonthTargetCommand.Text := 'TServerMethods1.theplan_InsertMonthTarget';
    Ftheplan_InsertMonthTargetCommand.Prepare;
  end;
  Ftheplan_InsertMonthTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_InsertMonthTargetCommand.Parameters[1].Value.SetWideString(target);
  Ftheplan_InsertMonthTargetCommand.Parameters[2].Value.SetWideString(fdate);
  Ftheplan_InsertMonthTargetCommand.Parameters[3].Value.SetWideString(wdate);
  Ftheplan_InsertMonthTargetCommand.Parameters[4].Value.SetWideString(yearnum);
  Ftheplan_InsertMonthTargetCommand.Parameters[5].Value.SetWideString(process);
  Ftheplan_InsertMonthTargetCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.theplan_InsertDayTarget(userid: string; target: string; fdate: string; wdate: string; yearnum: string; monthnum: string; ranking: string; process: string);
begin
  if Ftheplan_InsertDayTargetCommand = nil then
  begin
    Ftheplan_InsertDayTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_InsertDayTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_InsertDayTargetCommand.Text := 'TServerMethods1.theplan_InsertDayTarget';
    Ftheplan_InsertDayTargetCommand.Prepare;
  end;
  Ftheplan_InsertDayTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_InsertDayTargetCommand.Parameters[1].Value.SetWideString(target);
  Ftheplan_InsertDayTargetCommand.Parameters[2].Value.SetWideString(fdate);
  Ftheplan_InsertDayTargetCommand.Parameters[3].Value.SetWideString(wdate);
  Ftheplan_InsertDayTargetCommand.Parameters[4].Value.SetWideString(yearnum);
  Ftheplan_InsertDayTargetCommand.Parameters[5].Value.SetWideString(monthnum);
  Ftheplan_InsertDayTargetCommand.Parameters[6].Value.SetWideString(ranking);
  Ftheplan_InsertDayTargetCommand.Parameters[7].Value.SetWideString(process);
  Ftheplan_InsertDayTargetCommand.ExecuteUpdate;
end;

function TServerMethods1Client.theplan_LoadYearTarget(userid: string; process: string): string;
begin
  if Ftheplan_LoadYearTargetCommand = nil then
  begin
    Ftheplan_LoadYearTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_LoadYearTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_LoadYearTargetCommand.Text := 'TServerMethods1.theplan_LoadYearTarget';
    Ftheplan_LoadYearTargetCommand.Prepare;
  end;
  Ftheplan_LoadYearTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_LoadYearTargetCommand.Parameters[1].Value.SetWideString(process);
  Ftheplan_LoadYearTargetCommand.ExecuteUpdate;
  Result := Ftheplan_LoadYearTargetCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.theplan_LoadMonthTarget(userid: string; yearnum: string; process: string): string;
begin
  if Ftheplan_LoadMonthTargetCommand = nil then
  begin
    Ftheplan_LoadMonthTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_LoadMonthTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_LoadMonthTargetCommand.Text := 'TServerMethods1.theplan_LoadMonthTarget';
    Ftheplan_LoadMonthTargetCommand.Prepare;
  end;
  Ftheplan_LoadMonthTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_LoadMonthTargetCommand.Parameters[1].Value.SetWideString(yearnum);
  Ftheplan_LoadMonthTargetCommand.Parameters[2].Value.SetWideString(process);
  Ftheplan_LoadMonthTargetCommand.ExecuteUpdate;
  Result := Ftheplan_LoadMonthTargetCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.theplan_LoadDayTarget(userid: string; yearnum: string; monthnum: string; ToDay: string; process: string): string;
begin
  if Ftheplan_LoadDayTargetCommand = nil then
  begin
    Ftheplan_LoadDayTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_LoadDayTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_LoadDayTargetCommand.Text := 'TServerMethods1.theplan_LoadDayTarget';
    Ftheplan_LoadDayTargetCommand.Prepare;
  end;
  Ftheplan_LoadDayTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_LoadDayTargetCommand.Parameters[1].Value.SetWideString(yearnum);
  Ftheplan_LoadDayTargetCommand.Parameters[2].Value.SetWideString(monthnum);
  Ftheplan_LoadDayTargetCommand.Parameters[3].Value.SetWideString(ToDay);
  Ftheplan_LoadDayTargetCommand.Parameters[4].Value.SetWideString(process);
  Ftheplan_LoadDayTargetCommand.ExecuteUpdate;
  Result := Ftheplan_LoadDayTargetCommand.Parameters[5].Value.GetWideString;
end;

function TServerMethods1Client.theplan_LoadStatistic(userid: string; ToDay: string): string;
begin
  if Ftheplan_LoadStatisticCommand = nil then
  begin
    Ftheplan_LoadStatisticCommand := FDBXConnection.CreateCommand;
    Ftheplan_LoadStatisticCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_LoadStatisticCommand.Text := 'TServerMethods1.theplan_LoadStatistic';
    Ftheplan_LoadStatisticCommand.Prepare;
  end;
  Ftheplan_LoadStatisticCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_LoadStatisticCommand.Parameters[1].Value.SetWideString(ToDay);
  Ftheplan_LoadStatisticCommand.ExecuteUpdate;
  Result := Ftheplan_LoadStatisticCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.theplan_DeleteTarget(userid: string; part: string; recnum: string): string;
begin
  if Ftheplan_DeleteTargetCommand = nil then
  begin
    Ftheplan_DeleteTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_DeleteTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_DeleteTargetCommand.Text := 'TServerMethods1.theplan_DeleteTarget';
    Ftheplan_DeleteTargetCommand.Prepare;
  end;
  Ftheplan_DeleteTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_DeleteTargetCommand.Parameters[1].Value.SetWideString(part);
  Ftheplan_DeleteTargetCommand.Parameters[2].Value.SetWideString(recnum);
  Ftheplan_DeleteTargetCommand.ExecuteUpdate;
  Result := Ftheplan_DeleteTargetCommand.Parameters[3].Value.GetWideString;
end;

procedure TServerMethods1Client.theplan_CompleteTarget(userid: string; part: string; recnum: string);
begin
  if Ftheplan_CompleteTargetCommand = nil then
  begin
    Ftheplan_CompleteTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_CompleteTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_CompleteTargetCommand.Text := 'TServerMethods1.theplan_CompleteTarget';
    Ftheplan_CompleteTargetCommand.Prepare;
  end;
  Ftheplan_CompleteTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_CompleteTargetCommand.Parameters[1].Value.SetWideString(part);
  Ftheplan_CompleteTargetCommand.Parameters[2].Value.SetWideString(recnum);
  Ftheplan_CompleteTargetCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.theplan_UpdateRankingTarget(userid: string; part: string; ranking: string; recnum: string);
begin
  if Ftheplan_UpdateRankingTargetCommand = nil then
  begin
    Ftheplan_UpdateRankingTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_UpdateRankingTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_UpdateRankingTargetCommand.Text := 'TServerMethods1.theplan_UpdateRankingTarget';
    Ftheplan_UpdateRankingTargetCommand.Prepare;
  end;
  Ftheplan_UpdateRankingTargetCommand.Parameters[0].Value.SetWideString(userid);
  Ftheplan_UpdateRankingTargetCommand.Parameters[1].Value.SetWideString(part);
  Ftheplan_UpdateRankingTargetCommand.Parameters[2].Value.SetWideString(ranking);
  Ftheplan_UpdateRankingTargetCommand.Parameters[3].Value.SetWideString(recnum);
  Ftheplan_UpdateRankingTargetCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.theplan_MoveTomorrowTarget(mdate: string; recnum: string);
begin
  if Ftheplan_MoveTomorrowTargetCommand = nil then
  begin
    Ftheplan_MoveTomorrowTargetCommand := FDBXConnection.CreateCommand;
    Ftheplan_MoveTomorrowTargetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftheplan_MoveTomorrowTargetCommand.Text := 'TServerMethods1.theplan_MoveTomorrowTarget';
    Ftheplan_MoveTomorrowTargetCommand.Prepare;
  end;
  Ftheplan_MoveTomorrowTargetCommand.Parameters[0].Value.SetWideString(mdate);
  Ftheplan_MoveTomorrowTargetCommand.Parameters[1].Value.SetWideString(recnum);
  Ftheplan_MoveTomorrowTargetCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.kswresult_InsertResultData(username: string; userid: string; grade: string; ban: string; quizname: string; quizlevel: string; quizpoint: string; quizdate: string; quizcode: string);
begin
  if Fkswresult_InsertResultDataCommand = nil then
  begin
    Fkswresult_InsertResultDataCommand := FDBXConnection.CreateCommand;
    Fkswresult_InsertResultDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswresult_InsertResultDataCommand.Text := 'TServerMethods1.kswresult_InsertResultData';
    Fkswresult_InsertResultDataCommand.Prepare;
  end;
  Fkswresult_InsertResultDataCommand.Parameters[0].Value.SetWideString(username);
  Fkswresult_InsertResultDataCommand.Parameters[1].Value.SetWideString(userid);
  Fkswresult_InsertResultDataCommand.Parameters[2].Value.SetWideString(grade);
  Fkswresult_InsertResultDataCommand.Parameters[3].Value.SetWideString(ban);
  Fkswresult_InsertResultDataCommand.Parameters[4].Value.SetWideString(quizname);
  Fkswresult_InsertResultDataCommand.Parameters[5].Value.SetWideString(quizlevel);
  Fkswresult_InsertResultDataCommand.Parameters[6].Value.SetWideString(quizpoint);
  Fkswresult_InsertResultDataCommand.Parameters[7].Value.SetWideString(quizdate);
  Fkswresult_InsertResultDataCommand.Parameters[8].Value.SetWideString(quizcode);
  Fkswresult_InsertResultDataCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.kswresult_InsertGroupCodeData(grade: string; ban: string; quizname: string; quizlevel: string; quizcode: string; quizstatus: string);
begin
  if Fkswresult_InsertGroupCodeDataCommand = nil then
  begin
    Fkswresult_InsertGroupCodeDataCommand := FDBXConnection.CreateCommand;
    Fkswresult_InsertGroupCodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswresult_InsertGroupCodeDataCommand.Text := 'TServerMethods1.kswresult_InsertGroupCodeData';
    Fkswresult_InsertGroupCodeDataCommand.Prepare;
  end;
  Fkswresult_InsertGroupCodeDataCommand.Parameters[0].Value.SetWideString(grade);
  Fkswresult_InsertGroupCodeDataCommand.Parameters[1].Value.SetWideString(ban);
  Fkswresult_InsertGroupCodeDataCommand.Parameters[2].Value.SetWideString(quizname);
  Fkswresult_InsertGroupCodeDataCommand.Parameters[3].Value.SetWideString(quizlevel);
  Fkswresult_InsertGroupCodeDataCommand.Parameters[4].Value.SetWideString(quizcode);
  Fkswresult_InsertGroupCodeDataCommand.Parameters[5].Value.SetWideString(quizstatus);
  Fkswresult_InsertGroupCodeDataCommand.ExecuteUpdate;
end;

function TServerMethods1Client.kswresult_LoadResult(userid: string; quizname: string): string;
begin
  if Fkswresult_LoadResultCommand = nil then
  begin
    Fkswresult_LoadResultCommand := FDBXConnection.CreateCommand;
    Fkswresult_LoadResultCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswresult_LoadResultCommand.Text := 'TServerMethods1.kswresult_LoadResult';
    Fkswresult_LoadResultCommand.Prepare;
  end;
  Fkswresult_LoadResultCommand.Parameters[0].Value.SetWideString(userid);
  Fkswresult_LoadResultCommand.Parameters[1].Value.SetWideString(quizname);
  Fkswresult_LoadResultCommand.ExecuteUpdate;
  Result := Fkswresult_LoadResultCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.kswresult_LoadGroupCode(grade: string; ban: string): string;
begin
  if Fkswresult_LoadGroupCodeCommand = nil then
  begin
    Fkswresult_LoadGroupCodeCommand := FDBXConnection.CreateCommand;
    Fkswresult_LoadGroupCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswresult_LoadGroupCodeCommand.Text := 'TServerMethods1.kswresult_LoadGroupCode';
    Fkswresult_LoadGroupCodeCommand.Prepare;
  end;
  Fkswresult_LoadGroupCodeCommand.Parameters[0].Value.SetWideString(grade);
  Fkswresult_LoadGroupCodeCommand.Parameters[1].Value.SetWideString(ban);
  Fkswresult_LoadGroupCodeCommand.ExecuteUpdate;
  Result := Fkswresult_LoadGroupCodeCommand.Parameters[2].Value.GetWideString;
end;

procedure TServerMethods1Client.kswenglish_InsertData(grade: string; level: string; week: string; contents: string);
begin
  if Fkswenglish_InsertDataCommand = nil then
  begin
    Fkswenglish_InsertDataCommand := FDBXConnection.CreateCommand;
    Fkswenglish_InsertDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswenglish_InsertDataCommand.Text := 'TServerMethods1.kswenglish_InsertData';
    Fkswenglish_InsertDataCommand.Prepare;
  end;
  Fkswenglish_InsertDataCommand.Parameters[0].Value.SetWideString(grade);
  Fkswenglish_InsertDataCommand.Parameters[1].Value.SetWideString(level);
  Fkswenglish_InsertDataCommand.Parameters[2].Value.SetWideString(week);
  Fkswenglish_InsertDataCommand.Parameters[3].Value.SetWideString(contents);
  Fkswenglish_InsertDataCommand.ExecuteUpdate;
end;

function TServerMethods1Client.kswenglish_LoadData(grade: string; level: string; week: string): string;
begin
  if Fkswenglish_LoadDataCommand = nil then
  begin
    Fkswenglish_LoadDataCommand := FDBXConnection.CreateCommand;
    Fkswenglish_LoadDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Fkswenglish_LoadDataCommand.Text := 'TServerMethods1.kswenglish_LoadData';
    Fkswenglish_LoadDataCommand.Prepare;
  end;
  Fkswenglish_LoadDataCommand.Parameters[0].Value.SetWideString(grade);
  Fkswenglish_LoadDataCommand.Parameters[1].Value.SetWideString(level);
  Fkswenglish_LoadDataCommand.Parameters[2].Value.SetWideString(week);
  Fkswenglish_LoadDataCommand.ExecuteUpdate;
  Result := Fkswenglish_LoadDataCommand.Parameters[3].Value.GetWideString;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FMember_AddUserCommand.DisposeOf;
  FMember_ConfirmCommand.DisposeOf;
  FMember_LoginCommand.DisposeOf;
  FMember_SaveAttendanceCommand.DisposeOf;
  FMember_LoadAttendanceCommand.DisposeOf;
  FMember_LoginPhonenumCommand.DisposeOf;
  FMember_ModifyUserCommand.DisposeOf;
  FMember_IDPWSchoolCommand.DisposeOf;
  FMember_PresentCommand.DisposeOf;
  FMember_LoadPresentCommand.DisposeOf;
  FMember_IsPresentCommand.DisposeOf;
  FMember_LessonAllCommand.DisposeOf;
  FMember_ConversionCommand.DisposeOf;
  FMember_SaveInterbaseCommand.DisposeOf;
  Fmember_AddNoticeCommand.DisposeOf;
  FMember_LoadNoticeCommand.DisposeOf;
  FMember_AddHealthCommand.DisposeOf;
  FMember_LoadHealthCommand.DisposeOf;
  FMember_IsHealthCommand.DisposeOf;
  FMember_update_cbiCommand.DisposeOf;
  FMember_delete_cbiCommand.DisposeOf;
  FOnline_OrderSaveCommand.DisposeOf;
  FOnline_OrderClearCommand.DisposeOf;
  FOnline_OrderLoadCommand.DisposeOf;
  FOnline_ResponseSaveCommand.DisposeOf;
  FOnline_ResponseLoadCommand.DisposeOf;
  FOnline_UrlSaveCommand.DisposeOf;
  FOnline_UrlLoadCommand.DisposeOf;
  FOnline_UrlSaveTeacherCommand.DisposeOf;
  FOnline_UrlLoadStudentCommand.DisposeOf;
  FOnline_UrlLoadTeacherCommand.DisposeOf;
  FOnline_StudentLoadCommand.DisposeOf;
  Fpub_SaveYoutubeAddressCommand.DisposeOf;
  Fpub_LoadYoutubeAddressCommand.DisposeOf;
  FHGB_hanja_busu_InsertCommand.DisposeOf;
  FHGB_hanja_gubsu_InsertCommand.DisposeOf;
  FHGB_ReadSubLevelTitleCommand.DisposeOf;
  FHGB_AddHanjaCommand.DisposeOf;
  FHGB_ReadLevelDataCommand.DisposeOf;
  FHGB_ReadLevelTitleCommand.DisposeOf;
  FHGB_ReadHanjaCommand.DisposeOf;
  FHGB_ReadBusuCommand.DisposeOf;
  FHGB_AddExceptCommand.DisposeOf;
  FHGB_ReadExceptCommand.DisposeOf;
  FHGB_ReadGoldenbellCommand.DisposeOf;
  FHGB_SaveHanjaContestScoreCommand.DisposeOf;
  FHGB_ReadHanjaContestScoreCommand.DisposeOf;
  FHGB_SaveHanjaPracticeScoreCommand.DisposeOf;
  FHGB_ReadHanjaPracticeScoreCommand.DisposeOf;
  FHGB_SaveHanjaErrorCommand.DisposeOf;
  FHGB_ReadHanjaErrorCommand.DisposeOf;
  Fpuzzle_SaveScoreCommand.DisposeOf;
  Fpuzzle_LoadScoreCommand.DisposeOf;
  Fswmm_RegistCommand.DisposeOf;
  Fswmm_MeetinglistCommand.DisposeOf;
  Ftheone_AddUserCommand.DisposeOf;
  Ftheone_UpdateUserCommand.DisposeOf;
  Ftheone_LoginCommand.DisposeOf;
  Ftheone_AddAreaCommand.DisposeOf;
  Ftheone_LoadAreaCommand.DisposeOf;
  Ftheone_LoadUserAreaCommand.DisposeOf;
  Ftheone_LoadPhoneCommand.DisposeOf;
  Ftheone_AddProcessCommand.DisposeOf;
  Ftheone_LoadProcessImgCommand.DisposeOf;
  FSendFileCommand.DisposeOf;
  FLoadFileCommand.DisposeOf;
  FSetPathCommand.DisposeOf;
  FswsmsloginCommand.DisposeOf;
  FswsmsloadcategoryCommand.DisposeOf;
  FswsmsloaddataCommand.DisposeOf;
  FswsmssavedataCommand.DisposeOf;
  FswsmsaddcateCommand.DisposeOf;
  FswsmsdelcateCommand.DisposeOf;
  FswsmsalleraseCommand.DisposeOf;
  FswsmsalldataCommand.DisposeOf;
  Fswsms_conversionCommand.DisposeOf;
  Fswsms_saveInterbaseCommand.DisposeOf;
  Fquestion_addquestionCommand.DisposeOf;
  Fquestion_LoadQuestionlistCommand.DisposeOf;
  Fquestion_LoadCurrentItemDataCommand.DisposeOf;
  Fquestion_addcommentCommand.DisposeOf;
  Fkswlibrary_addbookCommand.DisposeOf;
  Fkswlibrary_loadcategorynameCommand.DisposeOf;
  Fkswlibrary_loadkeywordCommand.DisposeOf;
  Fpuzzle_adddataCommand.DisposeOf;
  Fpuzzle_loaddataCommand.DisposeOf;
  Fswm_DataSaveCommand.DisposeOf;
  Fswm_DataLoadCommand.DisposeOf;
  Fswm_DataLoad_OnlyNameCommand.DisposeOf;
  Fswm_LessonSaveCommand.DisposeOf;
  Fswm_LessonLoadCommand.DisposeOf;
  Fswm_InsertYoutubeCommand.DisposeOf;
  Fswm_LoadLessonListCommand.DisposeOf;
  Fswm_LoadLessonYoutubeCommand.DisposeOf;
  Fswm_LoadKeyWordYoutubeCommand.DisposeOf;
  Fswm_LoadYoutubeAllListCommand.DisposeOf;
  Fvod_InsertDataCommand.DisposeOf;
  Fvod_LoadYearCommand.DisposeOf;
  Fvod_LoadCateCommand.DisposeOf;
  Fvod_LoadMovieListCommand.DisposeOf;
  Fvod_SaveCountCommand.DisposeOf;
  Fkswslide_InsertDataCommand.DisposeOf;
  Fkswslide_LoadYearCommand.DisposeOf;
  Fkswslide_LoadSubjectCommand.DisposeOf;
  Fkswslide_subject_read_numCommand.DisposeOf;
  Fkswslide_LoadFilenamesCommand.DisposeOf;
  Fkswreading_InsertDataCommand.DisposeOf;
  Fkswreading_LoadBookNameCommand.DisposeOf;
  Fkswreading_LoadBookKeyCommand.DisposeOf;
  Fkswreading_LoadContentsCommand.DisposeOf;
  Felection_pledgeregistCommand.DisposeOf;
  Felection_pledgeLoadCommand.DisposeOf;
  Felection_electCommand.DisposeOf;
  Felection_statusCommand.DisposeOf;
  Felection_pledgepartgihonameLoadCommand.DisposeOf;
  Freglist_InsertDataCommand.DisposeOf;
  Freglist_LoadCommand.DisposeOf;
  Fcounsel_settingCommand.DisposeOf;
  Fcounsel_LoadCounselCommand.DisposeOf;
  Ftheplan_InsertYearTargetCommand.DisposeOf;
  Ftheplan_InsertMonthTargetCommand.DisposeOf;
  Ftheplan_InsertDayTargetCommand.DisposeOf;
  Ftheplan_LoadYearTargetCommand.DisposeOf;
  Ftheplan_LoadMonthTargetCommand.DisposeOf;
  Ftheplan_LoadDayTargetCommand.DisposeOf;
  Ftheplan_LoadStatisticCommand.DisposeOf;
  Ftheplan_DeleteTargetCommand.DisposeOf;
  Ftheplan_CompleteTargetCommand.DisposeOf;
  Ftheplan_UpdateRankingTargetCommand.DisposeOf;
  Ftheplan_MoveTomorrowTargetCommand.DisposeOf;
  Fkswresult_InsertResultDataCommand.DisposeOf;
  Fkswresult_InsertGroupCodeDataCommand.DisposeOf;
  Fkswresult_LoadResultCommand.DisposeOf;
  Fkswresult_LoadGroupCodeCommand.DisposeOf;
  Fkswenglish_InsertDataCommand.DisposeOf;
  Fkswenglish_LoadDataCommand.DisposeOf;
  inherited;
end;

end.
