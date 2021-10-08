unit u_poweroftmain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Data.SqlExpr, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Data.DbxHTTPLayer, Datasnap.DSCommon, Data.DBXJSON, System.JSON, Datasnap.DSProxy,
  Vcl.Menus, Vcl.Samples.Spin, Vcl.Grids, hyieutils, iexBitmaps, hyiedefs,
  iesettings, iexLayers, iexRulers, Vcl.OleCtrls, SHDocVw, ieview, imageenview,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  ieopensavedlg, iexRichEdit, iexToolbars, TlHelp32, StrUtils, AXVLC_TLB,
  Vcl.Buttons, Vcl.FileCtrl, iexFolderTree, iexWindowsFunctions,
  Vcl.Touch.GestureMgr,
  IdMultipartFormData, iexUserInteractions, imageenio, imageenproc;

type

  TMyCallBack = class(TDBXCallBack)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

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

  Tfm_mainteacher = class(TForm)
    pc_body: TPageControl;
    Panel2: TPanel;
    ts_balmoon: TTabSheet;
    ts_login: TTabSheet;
    ts_response: TTabSheet;
    GridPanel2: TGridPanel;
    pc_member: TPageControl;
    ts_logging: TTabSheet;
    ts_regist: TTabSheet;
    ts_modify: TTabSheet;
    Panel3: TPanel;
    GridPanel3: TGridPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dt_id: TEdit;
    dt_pw: TEdit;
    btn_login: TButton;
    Panel5: TPanel;
    GridPanel4: TGridPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dt_r_id: TEdit;
    dt_r_pw1: TEdit;
    btn_regist: TButton;
    Button3: TButton;
    btn_idconfirm: TButton;
    Label6: TLabel;
    dt_r_pw2: TEdit;
    Label7: TLabel;
    dt_school: TEdit;
    Label8: TLabel;
    cb_grade: TComboBox;
    Label9: TLabel;
    cb_ban: TComboBox;
    Label10: TLabel;
    dt_name: TEdit;
    SQLConnection1: TSQLConnection;
    DSClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    ts_inapp: TTabSheet;
    ts_chatteacher: TTabSheet;
    Panel9: TPanel;
    lb_orderlist: TListBox;
    Splitter1: TSplitter;
    Panel10: TPanel;
    pc_response: TPageControl;
    Tab_choice: TTabSheet;
    Tab_conviction: TTabSheet;
    Tab_response: TTabSheet;
    Tab_ox: TTabSheet;
    Tab_sentence: TTabSheet;
    Tab_word: TTabSheet;
    Tab_wave: TTabSheet;
    pnl_choice: TPanel;
    pnl_conviction: TPanel;
    pnl_response: TPanel;
    pnl_wave: TPanel;
    pnl_sentence: TPanel;
    pnl_word: TPanel;
    pnl_ox: TPanel;
    GridPanel6: TGridPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    pnl_ox_x_name: TPanel;
    pnl_ox_o_name: TPanel;
    pnl_ox_x_num: TPanel;
    pnl_ox_o_num: TPanel;
    GridPanel7: TGridPanel;
    pnl_choiceT1: TPanel;
    pnl_choiceT2: TPanel;
    pnl_choicename_3: TPanel;
    pnl_choicename_2: TPanel;
    pnl_choicenum_3: TPanel;
    pnl_choicenum_2: TPanel;
    pnl_choicenum_1: TPanel;
    pnl_choiceT3: TPanel;
    pnl_choiceT4: TPanel;
    pnl_choicenum_4: TPanel;
    pnl_choicenum_5: TPanel;
    pnl_choicename_1: TPanel;
    pnl_choicename_4: TPanel;
    pnl_choicename_5: TPanel;
    pnl_choiceT0: TPanel;
    GridPanel8: TGridPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    pnl_convic2: TPanel;
    pnl_convic1: TPanel;
    pnl_convic5: TPanel;
    pnl_convic4: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    pnl_convic6: TPanel;
    Panel43: TPanel;
    pnl_convic3: TPanel;
    Panel46: TPanel;
    Timer: TTimer;
    PopupMenu: TPopupMenu;
    toChoice: TMenuItem;
    pnl_inapp: TPanel;
    pnl_bottom: TPanel;
    pc_bottom: TPageControl;
    Tab_Attendance: TTabSheet;
    Tab_event: TTabSheet;
    GridPanel5: TGridPanel;
    btn_send_event1: TButton;
    Tab_responConfirm: TTabSheet;
    mm_senderlist: TMemo;
    lbl_choicename_1: TLabel;
    lbl_choicename_2: TLabel;
    lbl_choicename_3: TLabel;
    lbl_choicename_4: TLabel;
    lbl_choicename_5: TLabel;
    lbl_ox_x_name: TLabel;
    lbl_ox_o_name: TLabel;
    lbl_convic1: TLabel;
    lbl_convic2: TLabel;
    lbl_convic3: TLabel;
    lbl_convic6: TLabel;
    lbl_convic5: TLabel;
    lbl_convic4: TLabel;
    Label13: TLabel;
    cb_lsncls: TComboBox;
    Label11: TLabel;
    dt_event1: TEdit;
    Label14: TLabel;
    dt_event2: TEdit;
    btn_send_event2: TButton;
    Panel45: TPanel;
    GridPanel9: TGridPanel;
    GroupBox1: TGroupBox;
    mm_chat: TMemo;
    pc_chatbottom: TPageControl;
    Tab_chat: TTabSheet;
    Panel47: TPanel;
    GridPanel10: TGridPanel;
    Label15: TLabel;
    dt_tchat: TEdit;
    btn_send_tchat: TButton;
    Tab_gongu: TTabSheet;
    Panel48: TPanel;
    GridPanel11: TGridPanel;
    Label16: TLabel;
    dt_gonguImg: TEdit;
    btn_sendImg: TButton;
    Label17: TLabel;
    dt_gonguMovie: TEdit;
    btn_sendMovie: TButton;
    Tab_ChatAttendance: TTabSheet;
    pc_teacher: TPageControl;
    Tab_teach: TTabSheet;
    Panel49: TPanel;
    Panel50: TPanel;
    Button2: TButton;
    btn_attention: TButton;
    GroupBox5: TGroupBox;
    pnl_img: TPanel;
    timgenv: TImageEnView;
    pnl_movie: TPanel;
    tWeb: TWebBrowser;
    Tab_ClassHomet: TTabSheet;
    Panel51: TPanel;
    WebClassHomeT: TWebBrowser;
    GroupBox6: TGroupBox;
    mm_myorder: TMemo;
    OImgD: TOpenImageEnDialog;
    IdHTTP_upload: TIdHTTP;
    sqlcon_98: TSQLConnection;
    tmr_attendance: TTimer;
    mm_ChatAttendance: TMemo;
    gpnl_command: TGridPanel;
    btn_ChatAttendanceconfirm: TButton;
    tmr_chatattendance: TTimer;
    ts_Cooperation: TTabSheet;
    Panel7: TPanel;
    GridPanel13: TGridPanel;
    btn_sendcooperation: TButton;
    Tab_action: TTabSheet;
    gpnl_action: TGridPanel;
    btn_order: TButton;
    Panel8: TPanel;
    pnl_opt: TPanel;
    pnl_dapji: TPanel;
    pnl_dapjititle: TPanel;
    btn_quit: TButton;
    OpenDialog: TOpenDialog;
    ts_config: TTabSheet;
    pnl_config: TPanel;
    pc_config: TPageControl;
    ts_MakeList: TTabSheet;
    ts_videourl: TTabSheet;
    ts_appregist: TTabSheet;
    Panel66: TPanel;
    gpnl_url: TGridPanel;
    Panel67: TPanel;
    lb_VideoRoom: TListBox;
    pnl_urlgrade: TPanel;
    pnl_url: TPanel;
    Panel88: TPanel;
    GridPanel18: TGridPanel;
    Panel13: TPanel;
    GridPanel19: TGridPanel;
    Panel14: TPanel;
    cbb_dl_grade: TComboBox;
    Panel15: TPanel;
    cbb_dl_lesson: TComboBox;
    Panel16: TPanel;
    Panel19: TPanel;
    dt_dl_filename: TEdit;
    btn_dl_add: TButton;
    pnl_previewLeft: TPanel;
    pnl_prevewlist: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel26: TPanel;
    GridPanel21: TGridPanel;
    cbb_app3: TComboBox;
    cbb_app2: TComboBox;
    cbb_app4: TComboBox;
    cbb_app1: TComboBox;
    Panel27: TPanel;
    Panel28: TPanel;
    dt_app1: TEdit;
    dt_app2: TEdit;
    dt_app3: TEdit;
    dt_app4: TEdit;
    btn_app4: TButton;
    btn_app1: TButton;
    btn_app3: TButton;
    btn_app2: TButton;
    pnl_view: TPanel;
    pnl_materialsViewLeft: TPanel;
    Panel55: TPanel;
    GridPanel14: TGridPanel;
    btn_mList: TButton;
    btn_viewalldel: TButton;
    pnl_scrlbox: TPanel;
    scrlbox: TScrollBox;
    Splitter2: TSplitter;
    sg_videourl: TStringGrid;
    Panel29: TPanel;
    GridPanel15: TGridPanel;
    cbb_gradeurl: TComboBox;
    cbb_banurl: TComboBox;
    btn_insertgradeban: TButton;
    btn_addline: TButton;
    btn_save: TButton;
    gpnl_scrlbox: TGridPanel;
    SaveDialog1: TSaveDialog;
    chkb_idpwmemory: TCheckBox;
    Panel30: TPanel;
    Panel34: TPanel;
    GridPanel17: TGridPanel;
    btn_removeword: TButton;
    btn_existone: TButton;
    mm_response: TMemo;
    btn_responseAnalize: TButton;
    Button7: TButton;
    Button8: TButton;
    Button11: TButton;
    pnl_attendance: TPanel;
    btn_videoattendanceconfirm: TButton;
    gpnl_letter: TGridPanel;
    cb_numletter: TCheckBox;
    pnl_numletter: TPanel;
    spinbtn: TSpinButton;
    dt_numletter: TEdit;
    gpnl_responsetype: TGridPanel;
    rbtn_response0: TRadioButton;
    rbtn_response1: TRadioButton;
    rbtn_response2: TRadioButton;
    rbtn_response3: TRadioButton;
    rbtn_response4: TRadioButton;
    Panel36: TPanel;
    pnl_previewtitle: TPanel;
    btn_scriptsave: TButton;
    btn_previewalldel: TButton;
    rbtn_response5: TRadioButton;
    btn_zoomfix: TButton;
    mm_dapji: TMemo;
    Panel1: TPanel;
    mm_InApp: TMemo;
    btn_inappsearch: TButton;
    btn_inappsave: TButton;
    pnl_inappfix: TPanel;
    pnl_inappbutton: TPanel;
    ScrlBx_inapp: TScrollBox;
    gpnl_inapp: TGridPanel;
    Panel17: TPanel;
    btn_responseSave: TButton;
    Panel18: TPanel;
    GridPanel1: TGridPanel;
    btn_removesentence: TButton;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    PopupMenu_sentence: TPopupMenu;
    sentenceToChoice: TMenuItem;
    Panel24: TPanel;
    GridPanel12: TGridPanel;
    btn_videourlopen: TButton;
    pnl_web: TPanel;
    Panel25: TPanel;
    Web_view: TWebBrowser;
    GridPanel16: TGridPanel;
    btn_back: TButton;
    btn_forward: TButton;
    cbb_url: TComboBox;
    btn_goUrl: TButton;
    tab_discuss: TTabSheet;
    Panel31: TPanel;
    GridPanel20: TGridPanel;
    GridPanel22: TGridPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    mm_chan: TMemo;
    mm_ban: TMemo;
    Panel42: TPanel;
    mm_discusssubject: TMemo;
    Panel44: TPanel;
    Panel52: TPanel;
    lb_cooplist: TListBox;
    Splitter3: TSplitter;
    Panel54: TPanel;
    IERdt_cooperation: TIERichEdit;
    btn_confirm: TButton;
    btn_ElecPen: TButton;
    btn_New: TButton;
    Panel56: TPanel;
    btn_MovieViewOff: TButton;
    pnl_video: TPanel;
    pnl_image: TPanel;
    imgEnV_view: TImageEnView;
    Splitter4: TSplitter;
    lb_preview: TListBox;
    Panel20: TPanel;
    BitBtn_del: TBitBtn;
    BitBtn_dn: TBitBtn;
    BitBtn_up: TBitBtn;
    btn_youtubeview: TButton;
    btn_scriptview: TButton;
    Popup_preview: TPopupMenu;
    N1: TMenuItem;
    ts_DataRegist: TTabSheet;
    pnl_regist: TPanel;
    Splitter5: TSplitter;
    pnl_r_left: TPanel;
    Panel21: TPanel;
    btn_fileerase: TButton;
    pnl_r_right: TPanel;
    Panel37: TPanel;
    Panel57: TPanel;
    gpnl_regist: TGridPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    prgrs_upload: TProgressBar;
    Splitter6: TSplitter;
    IEFolderTree1: TIEFolderTree;
    Panel58: TPanel;
    gpnl_Ext: TGridPanel;
    Label20: TLabel;
    Filter_cbb: TFilterComboBox;
    IEFLB_regist: TIEFileListBox;
    cbb_grade: TComboBox;
    cbb_lesson: TComboBox;
    cbb_pattern: TComboBox;
    Label21: TLabel;
    dt_materialsName: TEdit;
    dt_materialsComment: TEdit;
    btn_materialsRegist: TButton;
    pnl_preview: TPanel;
    pnl_pimage: TPanel;
    ImgEnV_preview: TImageEnView;
    pnl_pvideo: TPanel;
    pnl_makelist: TPanel;
    pnl_youtube: TPanel;
    Web_preview: TWebBrowser;
    pnl_script: TPanel;
    mm_scripts: TMemo;
    cbb_dl_title: TComboBox;
    Panel60: TPanel;
    cbb_dl_pattern: TComboBox;
    pnl_materialListSave: TPanel;
    GridPanel23: TGridPanel;
    Panel59: TPanel;
    Panel61: TPanel;
    pnl_LoadList: TPanel;
    GridPanel24: TGridPanel;
    Panel53: TPanel;
    pnl_v_tName: TPanel;
    Panel62: TPanel;
    cbb_v_lesson: TComboBox;
    Panel63: TPanel;
    cbb_v_title: TComboBox;
    btn_mListOpen: TButton;
    Panel64: TPanel;
    btn_ShownHide: TButton;
    pnl_e_tName: TPanel;
    cbb_e_lesson: TComboBox;
    Panel65: TPanel;
    cbb_e_title: TComboBox;
    btn_scriptopen: TButton;
    pnl_rWeb: TPanel;
    Panel69: TPanel;
    GridPanel25: TGridPanel;
    btn_sback: TButton;
    btn_sforword: TButton;
    cbb_surl: TComboBox;
    btn_gosUrl: TButton;
    Web_search: TWebBrowser;
    btn_WebSearch: TButton;
    GestureManager1: TGestureManager;
    Tab_Layer: TTabSheet;
    Panel68: TPanel;
    GridPanel26: TGridPanel;
    Panel70: TPanel;
    GridPanel27: TGridPanel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    btn_resize: TButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GridPanel28: TGridPanel;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    Panel71: TPanel;
    GridPanel29: TGridPanel;
    btn_Flip: TButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    GridPanel30: TGridPanel;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Panel72: TPanel;
    GridPanel31: TGridPanel;
    btn_rotate: TButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    GridPanel32: TGridPanel;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Panel73: TPanel;
    GridPanel33: TGridPanel;
    Button1: TButton;
    Button4: TButton;
    pnl_ppt: TPanel;
    VLCPlugin21: TVLCPlugin2;
    VLCPlugin22: TVLCPlugin2;
    IdHTTP_download: TIdHTTP;
    tab_studentexam: TTabSheet;
    sg_attendance: TStringGrid;
    GridPanel34: TGridPanel;
    Label22: TLabel;
    cbb_app: TComboBox;
    cbb_level: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    Panel35: TPanel;
    GridPanel35: TGridPanel;
    rbtn_newcode: TRadioButton;
    Panel74: TPanel;
    GridPanel36: TGridPanel;
    btn_sActivityOn: TButton;
    btn_sActivityOff: TButton;
    rbtn_oldcode: TRadioButton;
    procedure btn_loginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_orderClick(Sender: TObject);
    procedure btn_send_event1Click(Sender: TObject);
    procedure lb_orderlistClick(Sender: TObject);
    procedure pnl_wordMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pc_bodyChange(Sender: TObject);
    procedure btn_halfClick(Sender: TObject);
    procedure btn_oneClick(Sender: TObject);
    procedure btn_threeClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btn_quitClick(Sender: TObject);
    procedure toChoiceClick(Sender: TObject);
    procedure spinbtnDownClick(Sender: TObject);
    procedure spinbtnUpClick(Sender: TObject);
    procedure cb_numletterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_classChange(Sender: TObject);
    procedure sg_attendanceDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure pnl_timerClick(Sender: TObject);
    procedure dt_urlChange(Sender: TObject);
    procedure dt_11DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dt_11DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btn_saveClick(Sender: TObject);
    procedure cbb_responsetypeEnter(Sender: TObject);
    procedure dt_tchatKeyPress(Sender: TObject; var Key: Char);
    procedure btn_send_tchatClick(Sender: TObject);
    procedure dt_gonguImgClick(Sender: TObject);
    procedure dt_gonguMovieChange(Sender: TObject);
    procedure btn_sendMovieClick(Sender: TObject);
    procedure pc_teacherChange(Sender: TObject);
    procedure btn_ClientAndZoomClick(Sender: TObject);
    procedure btn_attentionClick(Sender: TObject);
    procedure btn_sendImgClick(Sender: TObject);
    procedure btn_videoattendanceconfirmClick(Sender: TObject);
    procedure btn_ChatAttendanceconfirmClick(Sender: TObject);
    procedure tmr_chatattendanceTimer(Sender: TObject);
    procedure IERchdtTChange(Sender: TObject);
    procedure btn_SendBlackBoardClick(Sender: TObject);
    procedure btn_dataviewClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure btn_mListClick(Sender: TObject);
    procedure Splitter2CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure btn_viewalldelClick(Sender: TObject);
    procedure btn_dl_add1Click(Sender: TObject);
    procedure btn_backClick(Sender: TObject);
    procedure dt_app11Click(Sender: TObject);
    procedure btn_app1Click(Sender: TObject);
    procedure btn_prvview1Click(Sender: TObject);
    procedure dt_dl_filename1Click(Sender: TObject);
    procedure pc_configChange(Sender: TObject);
    procedure sg_videourlDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure sg_videourlDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btn_addlineClick(Sender: TObject);
    procedure btn_insertgradebanClick(Sender: TObject);
    procedure btn_scriptsaveClick(Sender: TObject);
    procedure btn_responseAnalizeClick(Sender: TObject);
    procedure btn_removewordClick(Sender: TObject);
    procedure rbtn_response0Click(Sender: TObject);
    procedure btn_zoomfixClick(Sender: TObject);
    procedure btn_inappsearchClick(Sender: TObject);
    procedure btn_inappsaveClick(Sender: TObject);
    procedure btn_responseSaveClick(Sender: TObject);
    procedure btn_removesentenceClick(Sender: TObject);
    procedure sentenceToChoiceClick(Sender: TObject);
    procedure btn_videourlopenClick(Sender: TObject);
    procedure Web_viewCommandStateChange(ASender: TObject; Command: Integer;
      Enable: WordBool);
    procedure btn_forwardClick(Sender: TObject);
    procedure cbb_urlKeyPress(Sender: TObject; var Key: Char);
    procedure Web_viewDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      const URL: OleVariant);
    procedure btn_goUrlClick(Sender: TObject);
    procedure btn_ElecPenClick(Sender: TObject);
    procedure btn_sendcooperationClick(Sender: TObject);
    procedure lb_cooplistClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_confirmClick(Sender: TObject);
    procedure btn_MovieViewOffClick(Sender: TObject);
    procedure btn_scriptopenClick(Sender: TObject);
    procedure BitBtn_upClick(Sender: TObject);
    procedure BitBtn_dnClick(Sender: TObject);
    procedure BitBtn_delClick(Sender: TObject);
    procedure lb_previewKeyPress(Sender: TObject; var Key: Char);
    procedure lb_previewDblClick(Sender: TObject);
    procedure btn_scriptviewClick(Sender: TObject);
    procedure btn_youtubeviewClick(Sender: TObject);
    procedure btn_previewalldelClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Filter_cbbChange(Sender: TObject);
    procedure IEFLB_registDblClick(Sender: TObject);
    procedure btn_materialsRegistClick(Sender: TObject);
    procedure cbb_dl_lessonChange(Sender: TObject);
    procedure cbb_dl_titleChange(Sender: TObject);
    procedure btn_mListOpenClick(Sender: TObject);
    procedure cbb_v_lessonChange(Sender: TObject);
    procedure btn_ShownHideClick(Sender: TObject);
    procedure cbb_e_lessonChange(Sender: TObject);
    procedure btn_WebSearchClick(Sender: TObject);
    procedure btn_sbackClick(Sender: TObject);
    procedure btn_sforwordClick(Sender: TObject);
    procedure btn_gosUrlClick(Sender: TObject);
    procedure imgEnV_viewLayerNotifyEx(Sender: TObject; layer: Integer;
      event: TIELayerEvent);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btn_resizeClick(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure btn_FlipClick(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure btn_rotateClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure IdHTTP_uploadWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTP_uploadWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP_uploadWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdHTTP_downloadWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP_downloadWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTP_downloadWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure pnl_imageDblClick(Sender: TObject);
    procedure pnl_videoDblClick(Sender: TObject);
    procedure VLCPlugin21DblClick(Sender: TObject);
    procedure btn_sActivityOnClick(Sender: TObject);
    procedure btn_sActivityOffClick(Sender: TObject);

  private
    { Private declarations }
    FCallBackId : string;
    BalmoonNum : Integer;
    FAppWnd : DWORD;

    function GenerateId : String;
    function Generateocode : String;
    procedure add_orderlist;

    procedure wave_print(wave : string);
    procedure proc_word(OrderIndex: Integer);
    procedure proc_sentence(OrderIndex: Integer);
    procedure proc_choice(OrderIndex: Integer);
    procedure proc_conviction(OrderIndex: Integer);
    procedure proc_oxtype(OrderIndex: Integer);
    procedure timeronoff(onoff: Boolean);
    procedure ImgStreamPageView(PageTitle: String);
    function FindFile2(AFolder: string; AList: TStringList; AExt: string; AMaxDepth: Integer = -1): Integer;
    function Delete_DirNFiles(DirFN: String) : Boolean;

  public
    { Public declarations }
    procedure QueueMsg(s: string);
    procedure BtnOnClick(Sender : TObject);
    procedure DataBtnClick(Sender: TObject);
    procedure PreviewDataBtnClick(Sender: TObject);
    procedure InAppBtnClick(Sender: TObject);

    procedure pnl_wordMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure App_Fixed(AppName: String; App:TPanel);
    function StopProcess(ExeFilename: String) : Integer;
    procedure ShowNHidePanel(ParentPanel: TPanel; ShowPanel: TPanel);

    procedure DownLoad_Files(Sender: TObject);
    procedure Upload_Files(Sender: TObject);
    procedure StrGrid_AtdCheck(CheckBoard: TStringGrid; SName: String);
    procedure StrGrid_AtdSet(ClearBoard: TStringGrid; StudentNames: String);
    procedure CreateGroupCode;
  end;

var
  fm_mainteacher: Tfm_mainteacher;
  tname, tgrade, tban, tbunho, connectip : String;
  response : array[1..30] of TStringList;   //학생의 응답 저장하기 위한 목적
  PnlArray: array [0 .. 100] of TPanel; //학생응답의 보여줄 사각형
  DataStr : TStringList;  // 학생에게 제시할 교수자료 리스트
  ViewAppList, InAppList,CoopList  : TStringList; // 교수자료를 보여줄 앱리스트
  DataBtn,PrewDataBtn, InAppBtn : Array of TButton;
  pnl_width, pnl_height : integer;
  Order, Question, VideoRoom, ClassHome, Attendance, Discuss : TStringList;

  mNameLst, patternLst, FNLst, CmtLst, MaterialsLst, DownLoadLst, DownLoadPttnLst : TStringList;
  wave_pos, ResponsePos : integer;

  subpath, gongu, part, sndname, chat, lesson, FileName, Old_FileName : string;

  Grab: boolean = false;
  Offset: tpoint;
  MovingPanel: TPanel;
  Total_time, PinNum : Integer;

  DataNum : Integer;
  ResponseType : Integer = -1;
  movie : String = 'Qt5QWindowIcon';
  youtube : String = 'Chrome_WidgetWin_1';
  web : String = 'Chrome_WidgetWin_1';
  ppt : String = 'PPTFrameClass';
  pdf : String = 'AcrobatSDIWindow';
  InApp : String = 'Tfm_InApp';
  InAppFX : String = 'FMTfm_InApp';
  ExcuteClass : String;
  GroupCode: String;
  ExcuteAppFix : Boolean;
  DataStatus : String;

  Resize_Type, Resize_su : integer;
  Flip_type, Flip_dir : integer;
  Rotate_type, Rotate_dir : Integer;

implementation

{$R *.dfm}

uses u_servermethods, Winapi.ShellAPI;
var
  Server : TServerMethods1Client;
procedure Tfm_mainteacher.add_orderlist;
begin
  lb_orderlist.Items.Add(GenerateOcode)
end;

procedure Tfm_mainteacher.App_Fixed(AppName: String; App:TPanel);
var
  RetryCount: Integer;
begin
  RetryCount := 0;
  repeat
    FAppWnd := FindWindow(PChar(AppName), nil);
    Sleep(100);
    Inc(RetryCount);
  until (FAppWnd <> 0) or (RetryCount > 10);
  Sleep(1500);
//  Showmessage(FAppWnd.ToString());
  // 부모설정, 테두리제거, 최대화
  if FAppWnd <> 0 then
  begin
    WinAPI.Windows.SetParent(FAppWnd, App.Handle);
    SetWindowLong(FAppWnd, GWL_STYLE,
            GetWindowLong(FAppWnd, GWL_STYLE)  // 기존 스타일에서
        and  not WS_BORDER                     // 크기조정 테두리 - 제거
        and  not WS_THICKFRAME                 // 두꺼운 프레임 - 제거
        and  not WS_DLGFRAME                   // 이중 테두리 - 제거
    );
    //포함되는 외부프로그램의 크기를 부모 패널의 크기에 꼭맞게 하는 부분
    SetWindowPos(FAppWnd, HWND_TOP, 0, 0, TPanel(App).Width, TPanel(App).Height, SWP_NOACTIVATE or SWP_NOOWNERZORDER);
    ShowWindow(FAppWnd, SW_SHOWMAXIMIZED);
//    ShowWindow(FindWindow(PChar(ClassName), nil), SW_MINIMIZE);
    ExcuteAppFix := True;
  end;
end;

procedure Tfm_mainteacher.StrGrid_AtdCheck(CheckBoard: TStringGrid; SName: String);
var
  i, j: Integer;
begin
  for i := 0 to 1 do
    for j := 0 to TStringGrid(CheckBoard).ColCount - 1 do
    begin
      if TStringGrid(CheckBoard).Cells[j, i*2] = sName then
      begin
        TStringGrid(CheckBoard).Cells[j, i*2+1] := 'O'
      end;
    end;
end;

procedure Tfm_mainteacher.StrGrid_AtdSet(ClearBoard: TStringGrid;  StudentNames: String);
var
  i, j: Integer;
  Student : TStringList;
begin
  TStringGrid(ClearBoard).DefaultColWidth := (pc_bottom.Width - 100) div 19;

  for i := 0 to 3 do
    for j := 0 to TStringGrid(ClearBoard).ColCount - 1 do
      TStringGrid(ClearBoard).Cells[j, i] := '';

  if StudentNames <> '' then
  begin
    Student := TStringList.Create;
    ExtractStrings(['|'],[' '],PChar(StudentNames), Student);
    for I := 0 to 1 do
      for j := 0 to TStringGrid(ClearBoard).ColCount - 1 do
        if i = 0 then TStringGrid(ClearBoard).Cells[j, i*2] := Student.Strings[j]
        else
        begin
          TStringGrid(ClearBoard).Cells[j, i*2] := Student.Strings[(TStringGrid(ClearBoard).ColCount-1) + j];
          if Student.Count = (TStringGrid(ClearBoard).ColCount + j) then exit
        end;
  end;
  FreeAndNil(Student);
end;

procedure Tfm_mainteacher.BitBtn_delClick(Sender: TObject);
var
  ItemPos : Integer;
begin
  ShowNHidePanel(pnl_Preview, pnl_Script);
  if (lb_preview.ItemIndex <> -1) then
  begin
    ItemPos := lb_preview.ItemIndex;
    lb_preview.Items.Delete(ItemPos);
    mm_Scripts.Lines.Delete(ItemPos);
    if ItemPos < lb_preview.Items.Count - 1 then
      lb_preview.ItemIndex := ItemPos
    else lb_Preview.ItemIndex := ItemPos - 1;
  end;
end;

procedure Tfm_mainteacher.BitBtn_dnClick(Sender: TObject);
var
  ItemPos : Integer;
begin
  ShowNHidePanel(pnl_Preview, pnl_Script);
  if (lb_preview.SelCount <> 0) and (lb_Preview.ItemIndex <> lb_preview.Items.Count - 1) then
  begin
    ItemPos := lb_preview.ItemIndex;
    mm_Scripts.Lines.Exchange(ItemPos,ItemPos+1);
    lb_Preview.Items.Exchange(lb_preview.ItemIndex,lb_preview.ItemIndex+1);
  end;
end;

procedure Tfm_mainteacher.BitBtn_upClick(Sender: TObject);
var
  ItemPos : Integer;
begin
  ShowNHidePanel(pnl_Preview, pnl_Script);
  if (lb_preview.SelCount <> 0) and (lb_Preview.ItemIndex <> 0) then
  begin
    ItemPos := lb_preview.ItemIndex;
    lb_Preview.Items.Exchange(lb_preview.ItemIndex,lb_preview.ItemIndex-1);
    mm_Scripts.Lines.Exchange(ItemPos,ItemPos-1);
  end;
end;

procedure Tfm_mainteacher.BtnOnClick(Sender: TObject);
begin
  if TButton(Sender).Parent is TPanel then
    TPanel(TButton(Sender).Parent).Visible := False;
end;

procedure Tfm_mainteacher.DataBtnClick(Sender: TObject);
var
  Data, AppName : TStringList;
  i, id: Integer;
  path : String;
  fNamePr, fName : WideString;

  AClient : TDSAdminClient;
  Response : TJSONValue;
begin

//  ImgEnV_view.Visible := False;
//  if FAppWnd <> 0 then
//  begin
//    PostMessage(FAppWnd, WM_Close, 0, 0);
//    FAppWnd := 0;
//  end;

  ImgEnv_View.LayersClear(True);
  Path := ExtractFilePath(ParamStr(0)) + 'swmaterials\';
  Data := TStringList.Create;
  AppName := TStringList.Create;

  if (DataStr.Strings[TButton(Sender).Tag*3+1] = 'video') or (DataStr.Strings[TButton(Sender).Tag*3+1] = 'youtube') then
  begin
    ShowNHidePanel(pnl_View, pnl_video);

//    fNamePr := 'file:///';
//    fName := Path + DataStr.Strings[TButton(Sender).Tag*3+2];
//    fName := StringReplace(fName, '/','\\',[rfReplaceAll]);
//    fName := fNamePr + fName;

    VLCPlugin21.playlist.stop;
    VLCPlugin21.playlist.clear;
//    id := VLCPlugin21.playlist.add(PChar(fName),null,null);
    id := VLCPlugin21.playlist.add(DataStr.Strings[TButton(Sender).Tag*3+2],null,null);
    VLCPlugin21.playlist.playItem(id);

    // 콜백메시지로 동영상 링크를 보내는 부분
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
          AClient.BroadcastToChannel(
          DSClientCallbackChannelManager1.ChannelName,
          TJSonString.Create(FCallBackid + '|' + GenerateOcode +
          '|movieviewon|'+DataStr.Strings[TButton(Sender).Tag*3+2]+'|'));
    finally
      AClient.Free;
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;

    DataStatus := 'video';
    btn_MovieViewOff.Enabled := True;
  end;

//  if DataStr.Strings[TButton(Sender).Tag*3+1] = 'youtube' then
//  begin
//    Caption := (DataStr.Strings[TButton(Sender).Tag*3+2]);
//    ShowNHidePanel(pnl_View, pnl_video);
//
//    VLCPlugin21.playlist.stop;
//    VLCPlugin21.playlist.clear;
//    id := VLCPlugin21.playlist.add(PChar(DataStr.Strings[TButton(Sender).Tag*3+2]),null,null);
//    VLCPlugin21.playlist.playItem(id);
//
//    DataStatus := 'youtube';
//  end;

  if DataStr.Strings[TButton(Sender).Tag*3+1] = 'web' then
  begin
    ShowNHidePanel(pnl_View, pnl_web);

    Web_view.Navigate(DataStr.Strings[TButton(Sender).Tag*3+2]);
    if cbb_url.Items.IndexOf(DataStr.Strings[TButton(Sender).Tag*3+2]) = -1 then
      cbb_url.Items.Add(DataStr.Strings[TButton(Sender).Tag*3+2]);
    ExcuteClass := 'web';
    DataStatus := 'web';
  end;

  if DataStr.Strings[TButton(Sender).Tag*3+1] = 'ppt' then
  begin
    if FileExists(Path+DataStr.Strings[TButton(Sender).Tag*3+2]) then
    begin
      ShowNHidePanel(pnl_view, pnl_ppt);
      if ViewAppList.Values[DataStr.Strings[TButton(Sender).Tag*3+1]] <> '' then
      begin
        ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[DataStr.Strings[TButton(Sender).Tag*3+1]]),AppName);
        ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+DataStr.Strings[TButton(Sender).Tag*3+2]),nil,SW_SHOW);
        App_Fixed(ppt, pnl_ppt);
        ExcuteClass := 'ppt';
      end else Showmessage('파워포인트 뷰어의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
    end else Showmessage('제시할 파일이 다운로드되지 않았습니다. 잠시만 기다려주세요.');
  end;

  if DataStr.Strings[TButton(Sender).Tag*3+1] = 'pdf' then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+Data.Strings[2]),nil,SW_SHOW);
      App_Fixed(pdf, pnl_view);
      ExcuteClass := 'pdf';
    end else Showmessage('아크로벳 리더의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if DataStr.Strings[TButton(Sender).Tag*3+1] = 'image' then
  begin
    if FileExists(Path+DataStr.Strings[TButton(Sender).Tag*3+2]) then
    begin
      ShowNHidePanel(pnl_view, pnl_image);
      ImgEnV_view.IO.LoadFromFile(Path+DataStr.Strings[TButton(Sender).Tag*3+2]);
    end else Showmessage('제시할 파일이 다운로드되지 않았습니다. 잠시만 기다려주세요.');

    DataStatus := 'image';
  end;
  FreeAndNil(Data);
  FreeAndNil(AppName);
end;

function Tfm_mainteacher.Delete_DirNFiles(DirFN: String): Boolean;
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

procedure Tfm_mainteacher.InAppBtnClick(Sender: TObject);
var
  InAppBtn, AppName : String;
begin
  ImgEnV_view.Visible := False;
  if FAppWnd <> 0 then
  begin
    PostMessage(FAppWnd, WM_Close, 0, 0);
    FAppWnd := 0;
  end;

  InAppBtn := TButton(Sender).Name;

  AppName := StringReplace(InAppBtn,'_','.',[rfReplaceall]);
  ShellExecute(handle, 'open',PWideChar(ExtractFilepath(ParamStr(0))+'\inapp\'+AppName),nil,nil,SW_SHOW);
  App_Fixed(InApp, pnl_inappfix);
end;

procedure Tfm_mainteacher.btn_addlineClick(Sender: TObject);
begin
  if sg_videourl.RowCount < 50 then
    sg_videourl.RowCount :=  sg_videourl.RowCount + 1
  else Showmessage('더이상 추가할 수 없습니다. 관리자에게 문의하세요.');
end;

procedure Tfm_mainteacher.btn_app1Click(Sender: TObject);
var
  CompoName : String;
  Compo, Compo2 : TComponent;
begin
  CompoName := TButton(Sender).Name;
  Compo := FindComponent('cbb_'+Copy(CompoName,5,4));
  Compo2:= FindComponent('dt_'+Copy(CompoName,5,4));
  if (TComboBox(Compo).Text <> '') and (TEdit(Compo2).Text <> '') then
  begin
    if FileExists('ViewAppList.ini') then
    begin
      ViewAppList.LoadFromFile('ViewAppList.ini');
//      Showmessage(TComboBox(Compo).Text+'|'+Copy(CompoName,5,4)+'|'+Trim(TEdit(Compo2).Text));
      ViewAppList.Values[TComboBox(Compo).Text] := TComboBox(Compo).Text+'|'+Copy(CompoName,5,4)+'|'+Trim(TEdit(Compo2).Text);
      ViewAppList.SaveToFile('ViewAppList.ini');
    end else
    begin
      ViewAppList.Values[TComboBox(Compo).Text] := TComboBox(Compo).Text+'|'+Copy(CompoName,5,4)+'|'+Trim(TEdit(Compo2).Text);
      ViewAppList.SaveToFile('ViewAppList.ini');
    end;
  end;
end;

procedure Tfm_mainteacher.btn_attentionClick(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  if btn_attention.Caption = '선생님 말씀 읽기' then
  begin
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('command|on_notice'));
    finally
      AClient.Free;

    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;
  end else
  begin
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('command|off_notice'));
    finally
      AClient.Free;
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;
  end;
end;

procedure Tfm_mainteacher.btn_ChatAttendanceconfirmClick(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  mm_ChatAttendance.Lines.Clear;
  Attendance.Clear;
  if tname <> '' then
  begin
    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
    AClient.BroadcastToChannel(
    DSClientCallbackChannelManager1.ChannelName,
    TJSonString.Create(FCallBackid + '|' + 'chatstudyattendance'));
    FreeAndNil(AClient);
    if SqlConnection1.Connected then SqlConnection1.Connected := False;
  end;

  Tmr_ChatAttendance.Enabled := True;
  pc_chatbottom.ActivePage := Tab_ChatAttendance;
end;

procedure Tfm_mainteacher.btn_ClientAndZoomClick(Sender: TObject);
//var
//  AClient : TDSAdminClient;
begin
//  if tname <> '' then
//  begin
//    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
//    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
//    AClient.BroadcastToChannel(
//    DSClientCallbackChannelManager1.ChannelName,
//    TJSonString.Create('zoomfixed'));
//    FreeAndNil(AClient);
//    if SqlConnection1.Connected then SqlConnection1.Connected := False;
//  end;
end;

procedure Tfm_mainteacher.btn_confirmClick(Sender: TObject);
begin
  btn_New.Enabled := True;
end;

procedure Tfm_mainteacher.btn_ElecPenClick(Sender: TObject);
var
  AppName : TStringList;
begin
//  if not SQLConnection1.Connected then SQLConnection1.Connected := True;
//  AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
//  try
//          AClient.BroadcastToChannel(
//          DSClientCallbackChannelManager1.ChannelName,
//          TJSonString.Create(FCallBackid + '|' + GenerateOcode +
//          '|zoomshare|'));
//  finally
//    AClient.Free;
//  end;
//  if SQLConnection1.Connected then SQLConnection1.Connected := False;
  if (ViewAppList.Values['pen'] <> '') then
  begin
    if (btn_ElecPen.Caption = 'pen 실행') then
    begin
      AppName := TStringList.Create;
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values['pen']),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]), nil,nil,SW_SHOW);
      FreeAndNil(AppName);
      btn_ElecPen.Caption := 'pen 종료';
    end else
    begin
      StopProcess('ePicPen.exe');
      btn_ElecPen.Caption := 'pen 실행';
    end;
  end else
  begin
    Showmessage('펜으로 사용할 프로그램을 설치하신 후 등록하세요.');
  end;
end;

procedure Tfm_mainteacher.btn_dataviewClick(Sender: TObject);
begin
  ImgStreamPageView('자료 제시');

end;

procedure Tfm_mainteacher.btn_dl_add1Click(Sender: TObject);
begin
  if (cbb_dl_grade.ItemIndex <> -1) and (cbb_dl_lesson.ItemIndex <> -1) and (cbb_dl_title.Text <> '') and ( dt_dl_filename.Text <> '') then
  begin
//    ShowNHidePanel(pnl_preview, pnl_Script);
    DataStr.Add(cbb_dl_pattern.Text + '|' + dt_dl_filename.Text);

    if cbb_dl_pattern.Text = 'video' then
      mm_Scripts.Lines.Add(cbb_dl_pattern.Text + '|http://210.218.83.97:8088/swmaterials/video/' + dt_dl_filename.Text)
    else
      mm_Scripts.Lines.Add(cbb_dl_pattern.Text + '|' + dt_dl_filename.Text);

    lb_preview.Items.Add(cbb_dl_title.Text);

//    cbb_dl_grade.ItemIndex := -1;
    cbb_dl_title.Text := '';
    cbb_dl_pattern.ItemIndex := -1;
    cbb_dl_pattern.Text := '선택';
    cbb_dl_title.ItemIndex := -1;
    cbb_dl_title.Text := '선택 또는 입력';
    dt_dl_filename.Text := '';
//    DataNum := DataNum + 1;
    btn_ScriptSave.Enabled := True;
  end else
  begin
    Showmessage('등록 조건 필드를 확인하세요.');
  end;

end;

procedure Tfm_mainteacher.btn_FlipClick(Sender: TObject);
var
  i: Integer;
begin
  if Flip_type = 1 then
  begin
    if flip_dir = 1 then ImgEnv_View.IEBitmap.Flip(TFlipDir.fdVertical)
    else ImgEnv_View.IEBitmap.Flip(TFlipDir.fdHorizontal)
  end;

  if Flip_type = 2 then
  begin
    if Flip_dir = 1 then
    begin
      for i := 0 to ImgEnv_View.LayersCount - 1 do
        ImgEnv_View.Layers[i].Flip := fdVertical
    end else
    begin
      for i := 0 to ImgEnv_View.LayersCount - 1  do
         ImgEnv_View.Layers[i].Flip := fdHorizontal;
    end;
  end;
  ImgEnv_View.Update;
end;

procedure Tfm_mainteacher.btn_forwardClick(Sender: TObject);
begin
  Web_View.GoForward;
end;

procedure Tfm_mainteacher.btn_gosUrlClick(Sender: TObject);
begin
  Web_Search.Navigate(Trim(cbb_surl.Text));
end;

procedure Tfm_mainteacher.btn_goUrlClick(Sender: TObject);
begin
  Web_View.Navigate(Trim(cbb_url.Text));
end;

procedure Tfm_mainteacher.btn_loginClick(Sender: TObject);
var
  login, Dates, StudentNames : String;
  person, TeachClass, idpw : TStringList;
  I: Integer;
begin
  if cb_lsncls.ItemIndex <> -1 then
  begin

    if not sqlconnection1.Connected then sqlconnection1.Connected := True;
    server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);
    if (dt_id.Text <> '') and (dt_pw.Text <> '') then
      begin
        Login := Server.Member_Login(Trim(Lowercase(dt_id.Text)),Trim(Lowercase(dt_pw.Text)));
       if sqlconnection1.Connected then sqlconnection1.Connected := False;
       FreeAndNil(Server);
//       Showmessage(Login);
        if Login <> ''  then
        begin
          //로그인 하고 이름, 학년, 반 데이터 추출하는 부분
          Person := TStringList.Create;
          ExtractStrings(['|'],[' '],Pchar(Login), Person);
          tname := Person.Strings[0];
          tgrade := Person.Strings[1];
          tban := Person.Strings[2];
          tbunho := Person.Strings[3];

          pnl_v_tName.Caption := tName;
          pnl_e_tName.Caption := tName;


          if (chkb_idpwmemory.Checked) and (not FileExists('userinfo.ini')) then
          begin
            idpw := TStringList.Create;
            idpw.Values['userid'] := Trim(dt_id.Text);
            idpw.Values['userpw'] := Trim(dt_pw.Text);
            idpw.SaveToFile('userinfo.ini');
            FreeAndNil(idpw);
          end;

          if cb_lsncls.ItemIndex =0 then
          begin
            if tgrade = '1' then
            begin
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'first';
            end;
            if tgrade = '2' then
            begin
//                   connectip := '210.218.83.97';
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'second';
            end;
            if tgrade = '3' then
            begin
//                   connectip := '210.218.83.100';
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'third';
            end;
            if tgrade = '4' then
            begin
//                   connectip := '210.218.83.101';
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'forth';
            end;
            if tgrade = '5' then
            begin
//                   connectip := '210.218.83.102';
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'fifth';
            end;
            if tgrade = '6' then
            begin
//                   connectip := '210.218.83.103';
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'sixth';
            end;

             //콜백매니저에 등록하는 루틴
            if not sqlconnection1.Connected then sqlconnection1.Connected := True;
            server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);
            StudentNames := Server.member_lessonAll(tgrade, tban);
//            Showmessage(StudentNames);
//            StrGrid_AtdSet(sg_attendance, StudentNames);
//            Showmessage(tgrade + ' | ' + tban);
            FCallBackId := GenerateId;
            DSClientCallbackChannelManager1.ChannelName := 'ksongwon'+tgrade+tban;
            DSClientCallbackChannelManager1.ManagerId := FCallBackId;
            DSClientCallbackChannelManager1.RegisterCallback(FCallBackId, TMyCallBack.Create);
            if sqlconnection1.Connected then sqlconnection1.Connected := False;
          end else
          begin
            TeachClass := TStringList.Create;
            ExtractStrings(['-'],[' '],Pchar(cb_lsncls.Items.Strings[cb_lsncls.ItemIndex]), TeachClass);
            tGrade := TeachClass.Strings[0];
            tBan := TeachClass.Strings[1];

            if tgrade = '1' then
            begin
                   connectip := '210.218.83.98';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'first';
            end;
            if tgrade = '2' then
            begin
                   connectip := '210.218.83.97';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'second';
            end;
            if tgrade = '3' then
            begin
                   connectip := '210.218.83.100';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'third';
            end;
            if tgrade = '4' then
            begin
                   connectip := '210.218.83.101';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'forth';
            end;
            if tgrade = '5' then
            begin
                   connectip := '210.218.83.102';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'fifth';
            end;
            if tgrade = '6' then
            begin
                   connectip := '210.218.83.103';
                   SQLConnection1.Params.Values['HostName'] := connectip;
                   DSClientCallbackChannelManager1.DSHostname := connectip;
                   subpath := 'sixth';
            end;

            if not sqlconnection1.Connected then sqlconnection1.Connected := True;
            FCallBackId := GenerateId;
            DSClientCallbackChannelManager1.ChannelName := 'ksongwon'+TeachClass.Strings[0]+TeachClass.Strings[1];
            DSClientCallbackChannelManager1.ManagerId := FCallBackId;
            DSClientCallbackChannelManager1.RegisterCallback(FCallBackId, TMyCallBack.Create);
            if sqlconnection1.Connected then sqlconnection1.Connected := False;
            FreeAndNil(Server);
            FreeAndNil(TeachClass);
          end;

          FreeAndNil(Person);

//          Server.Member_update_cbi(Trim(Lowercase(dt_id.Text)),FCallBackId);


          dt_id.Enabled := False;
          dt_pw.Enabled := False;
          btn_login.Enabled := False;
          ts_videourl.TabVisible := True; //반별 화상수업 url
          ts_chatteacher.TabVisible := True;
          ts_balmoon.TabVisible := True;
          pc_body.ActivePage := ts_balmoon;
          ts_login.TabVisible := False;

////        Load_Student;
        end else
          showmessage('로그인에 실패하였습니다.');
      end
    else
      Showmessage('아이디와 비밀번호를 입력하세요.');
  end else Showmessage('먼저 수업할 반을 선택하세요.');
end;

procedure Tfm_mainteacher.btn_materialsRegistClick(Sender: TObject);
var
  MyThread : TRunThread;
begin
  if (cbb_grade.ItemIndex = -1) or (cbb_lesson.ItemIndex = -1) or (cbb_pattern.ItemIndex = -1)
    or (dt_materialsName.Text='') or (dt_materialsComment.Text = '') then
  begin
    Showmessage('등록할 자료의 학년, 교과, 자료유형, 제목, 설명을 확인하세요.');
    exit;
  end;

  PinNum := Random(10000);

  Filename := Trim(dt_id.text) + '_' + Trim(cbb_grade.Text) + '_' + FormatDateTime('yyyymmdd',now) +
    '_' + format('%.4d',[PinNum]) + ExtractFileExt(IEFLB_regist.filename);
  FileName := LowerCase(FileName);
  // 서버에 등록할 파일이름을 변경
  Old_FileName := IEFLB_regist.Filename;
  RenameFile(IEFLB_regist.Filename, ExtractFilePath(IEFLB_regist.filename)+Filename);

  //쓰레드를 이용하여 시간이 많이 걸리는 작업을 처리
  Mythread := TRunThread.Create(Upload_Files,Sender);

end;

procedure Tfm_mainteacher.btn_mListOpenClick(Sender: TObject);
var
  I: Integer;
  MyThread : TRunThread;
begin
  if (cbb_v_lesson.ItemIndex = -1) or (cbb_v_title.ItemIndex = -1) then
  begin
    Showmessage('먼저 교과와 수업주제를 선택하세요.');
    exit;
  end;

  ImgEnv_preview.LayersClear;

  DownLoadLst.Clear; //다운로드할 파일만 분류하여 저장
  DownLoadPttnLst.Clear; //다운로드할 파일의 패턴 저장
  DataStr.Clear;

  ExtractStrings(['|'],[' '],PChar(MaterialsLst.Strings[cbb_v_title.ItemIndex]),DataStr);
//  Showmessage(MaterialsLst.Strings[cbb_v_title.ItemIndex]);
  SetLength(DataBtn,(DataStr.Count div 3));
  ScrlBox.Height := (DataStr.Count div 3)* 60 + 4;
  for I := 0 to (DataStr.Count - 1) div 3 do
  begin
    if (DataStr.Strings[i*3+1]='image') or (DataStr.Strings[i*3+1]='ppt') then
    begin
      // swmaterials폴더에 해당 파일이 없을 때만 다운로드리스트에 추가하기
      if not FileExists('swmaterials\' + DataStr.Strings[i*3+2] ) then
      begin
        DownLoadLst.Add(DataStr.Strings[i*3+2]);
        DownLoadPttnLst.Add(DataStr.Strings[i*3+1]);
      end;
    end;

    gpnl_scrlbox.RowCollection.Add;
    gpnl_SCRLBOX.RowCollection[i].SizeStyle := ssAbsolute;
    gpnl_ScrlBox.RowCollection[i].Value := 60;
    DataBtn[i] := TButton.Create(gpnl_ScrlBox);
    DataBtn[i].Parent := gpnl_ScrlBox;
    DataBtn[i].Align := alTop;
    DataBtn[i].Name := 'btn_' + i.ToString;

    DataBtn[i].Caption := DataStr.Strings[i*3];

    DataBtn[i].Height := 60;
    DataBtn[i].Tag := i;
    DataBtn[i].OnClick := DataBtnClick;
    if DataStr.Strings[i*3+1] = 'image' then DataBtn[i].PopupMenu := Popup_preview;
    DataBtn[i].Visible := True;
    DataBtn[i].WordWrap := True;

  end;
  pnl_LoadList.Visible := False;
  if not DirectoryExists('swmaterials') then ForceDirectories(ExtractFilePath(ParamStr(0))+'swmaterials');

  //쓰레드를 이용하여 시간이 많이 걸리는 작업을 처리  - DownLoadLst에 요소가 있을 때만 실행
  if DownLoadLst.Count > 0 then
  begin
    pc_bottom.ActivePage := tab_studentexam;
    Mythread := TRunThread.Create(Download_Files,Sender);
  end;
end;

procedure Tfm_mainteacher.btn_NewClick(Sender: TObject);
begin
  lb_CoopList.Items.Clear;
  CoopList.Clear;
  IErdt_Cooperation.Text := '';
  btn_New.Enabled := False;
end;

procedure Tfm_mainteacher.btn_orderClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Radio : TComponent;
  ChoiceNum : TStringList;
begin
  if (ResponseType <> -1) then
  begin
    BalmoonNum := BalmoonNum + 1;

    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

    case ResponseType of
      0 : begin
            Radio := FindComponent('rbtn_response'+ResponseType.ToString);
            AClient.BroadcastToChannel(
            DSClientCallbackChannelManager1.ChannelName,
            TJSonString.Create(FCallBackid + '|' + GenerateOcode +
            '|'+ TRadioButton(Radio).Caption));

            //응답 StringList의 처음에 응답유형을 삽입
            Response[Balmoonnum].Add( TRadioButton(Radio).Caption);
            mm_dapji.Text := '';
           end;
      1 : begin
          // 선택형 - 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
            ChoiceNum := TStringList.Create;
            ExtractStrings([','],[' '],PChar(mm_dapji.Text), ChoiceNum);
            if ChoiceNum.Count > 5 then
            begin
              Showmessage('선택형 답지는 5개 이하로 작성해주세요.');
              exit;
            end;
            Radio := FindComponent('rbtn_response'+ResponseType.ToString);
            AClient.BroadcastToChannel(
            DSClientCallbackChannelManager1.ChannelName,
            TJSonString.Create(FCallBackid + '|' + GenerateOcode
            + '|'+ TRadioButton(Radio).Caption
            + '|'+Trim(mm_dapji.Text)));

            Response[Balmoonnum].Add( TRadioButton(Radio).Caption+'='+Trim(mm_dapji.Text));
            mm_dapji.Text := '';
          end;
      2,3 : begin
              // 낱말+문장형 - 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
              Radio := FindComponent('rbtn_response'+ResponseType.ToString);
              if cb_numletter.Checked then
              begin
                AClient.BroadcastToChannel(
                DSClientCallbackChannelManager1.ChannelName,
                TJSonString.Create(FCallBackid + '|' + GenerateOcode
                + '|'+ TRadioButton(Radio).Caption
                + '|'+ dt_numletter.Text ));
              end else
              begin
                AClient.BroadcastToChannel(
                DSClientCallbackChannelManager1.ChannelName,
                TJSonString.Create(FCallBackid + '|' + GenerateOcode
                + '|'+ TRadioButton(Radio).Caption
                + '|0' ));
              end;
//              Response[Balmoonnum].Add( GenerateOcode );
              Response[Balmoonnum].Add( TRadioButton(Radio).Caption);
            end;
      4 : begin
          // 선택형 - 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
            Radio := FindComponent('rbtn_response'+ResponseType.ToString);
            AClient.BroadcastToChannel(
            DSClientCallbackChannelManager1.ChannelName,
            TJSonString.Create(FCallBackid + '|' + GenerateOcode
            + '|'+ TRadioButton(Radio).Caption));
//            Showmessage(FCallBackid + '|' + GenerateOcode + '|'+ TRadioButton(Radio).Caption);
            Response[Balmoonnum].Add(TRadioButton(Radio).Caption);
          end;
       5 : begin
             if Trim(mm_dapji.Text) <> '' then
             begin
               Radio := FindComponent('rbtn_response'+ResponseType.ToString);
               AClient.BroadcastToChannel(
               DSClientCallbackChannelManager1.ChannelName,
               TJSonString.Create(FCallBackid + '|' + GenerateOcode +
               '|'+ TRadioButton(Radio).Caption + '|' + Trim(mm_dapji.Text)));

               //응답 StringList의 처음에 응답유형을 삽입
               mm_discusssubject.Lines.Clear;
               Response[Balmoonnum].Add( TRadioButton(Radio).Caption);
               Response[Balmoonnum].Add(mm_dapji.Text);
               mm_discusssubject.Lines.Add( Trim(mm_dapji.Text) );
               mm_dapji.Text := '';
               mm_chan.Lines.Clear;
               mm_ban.Lines.Clear;
             end else Showmessage('토론 주제를 입력해주세요.');
           end;
    end;
    AClient.Free;
    if SqlConnection1.Connected then SqlConnection1.Connected := False;
    Add_Orderlist;
    btn_order.Enabled := False;
    btn_quit.Enabled := True;

    mm_senderlist.Lines.Clear;
    TimerOnoff(True);
  end else Showmessage('수업차시와 반응 유형을 선택하세요.');
  pc_bottom.ActivePage := tab_ResponConfirm;
end;

procedure Tfm_mainteacher.btn_previewalldelClick(Sender: TObject);
var
  I: Integer;
begin
  lb_preview.Items.Clear;
  mm_Scripts.Lines.Clear;
  DataStr.Clear;
  DataNum := 0;

  StopProcess('AcroRd32.exe');
  StopProcess('pptview.exe');
end;

procedure Tfm_mainteacher.btn_prvview1Click(Sender: TObject);
//var
//  AppName : TStringList;
//  fName, fNamePr : WideString;
//  Path : String;
//  id : Integer;
begin
//  Path := ExtractFilePath(ParamStr(0));
//  if (cbb_dl_grade.ItemIndex <> -1) then
//  begin
//    case cbb_dl_grade.ItemIndex of
//    0 : begin
//          ShowNHidePanel(pnl_preview, pnl_pvideo);
//          fNamePr := 'file:///';
//          fName := Path + dt_dl_filename.Text;
//          fName := StringReplace(fName, '/','\\',[rfReplaceAll]);
//          fName := fNamePr + fName;
////
//          id := VLCPlugin22.playlist.add(PChar(fName),null,null);
//          VLCPlugin22.playlist.playItem(id);
//        end;
//    1 : begin
//          ShowNHidePanel(pnl_preview, pnl_pvideo);
//          id := VLCPlugin22.playlist.add(PChar(dt_dl_filename.Text),null,null);
//          VLCPlugin22.playlist.playItem(id);
//        end;
//    2 : begin
//          ShowNHidePanel(pnl_preview, pnl_pimage);
//          ImgEnV_preview.IO.LoadFromFile(dt_dl_filename.Text);
//        end;
//    3 : begin
//          ShowNHidePanel(pnl_preview, pnl_rweb);
//          Web_Preview.Navigate(dt_dl_filename.Text);
//        end;
//    4,5 : begin
//          ShowNHidePanel(pnl_preview, pnl_preview);
//          AppName := TStringList.Create;
//          ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[cbb_dl_grade.Text]),AppName);
//          ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(dt_dl_filename.Text),nil,SW_SHOW);
//          FreeAndNil(AppName);
//        end;
//    end;
//  end else Showmessage('자료 유형이 선택되었는지 확인하세요.');
end;

procedure Tfm_mainteacher.btn_videoattendanceconfirmClick(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  if tname <> '' then
  begin
    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
    AClient.BroadcastToChannel(
    DSClientCallbackChannelManager1.ChannelName,
    TJSonString.Create(FCallBackid + '|' + 'videostudyattendance'));
    FreeAndNil(AClient);
    if SqlConnection1.Connected then SqlConnection1.Connected := False;
  end;
  Attendance.Clear;
  Tmr_Attendance.Enabled := True;
  pc_bottom.ActivePage := Tab_Attendance;
end;

procedure Tfm_mainteacher.btn_videourlopenClick(Sender: TObject);
var
  VideoRoom : TStringList;
  i: Integer;
begin
  lb_VideoRoom.Items.Clear;
  If FileExists('VideoRoom.txt') then
  begin
    VideoRoom := TStringList.Create;
    VideoRoom.LoadFromFile('VideoRoom.txt');
    for i := 0 to VideoRoom.Count - 1 do
    begin
      lb_VideoRoom.Items.Add(VideoRoom.Strings[i]);
    end;
    FreeAndNil(VideoRoom);
  end else Showmessage('VideoRoom.txt 파일이 없습니다. 확인하세요.');
end;

procedure Tfm_mainteacher.btn_youtubeviewClick(Sender: TObject);
begin
  ShowNHidePanel(pnl_makelist, pnl_youtube);
  Web_Preview.Navigate('www.youtube.com');
end;

procedure Tfm_mainteacher.btn_zoomfixClick(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  if not SqlConnection1.Connected then SqlConnection1.Connected := True;
  AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

  // 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
  AClient.BroadcastToChannel(
  DSClientCallbackChannelManager1.ChannelName,
  TJSonString.Create(FCallBackid + '|' + 'zoomfixed'));

  AClient.Free;
  if SqlConnection1.Connected then SqlConnection1.Connected := False;
  btn_quit.Enabled := False;
end;

procedure Tfm_mainteacher.btn_backClick(Sender: TObject);
begin
  Web_View.GoBack;
end;

procedure Tfm_mainteacher.Button15Click(Sender: TObject);
begin
  ImgStreamPageView('자료 등록');
end;

procedure Tfm_mainteacher.Button1Click(Sender: TObject);
begin
  ImgEnv_View.LayersRemove(ImgEnv_View.LayersCurrent);
end;

procedure Tfm_mainteacher.Button4Click(Sender: TObject);
begin
  ImgEnv_View.LayersClear(True);
end;

procedure Tfm_mainteacher.btn_viewalldelClick(Sender: TObject);
var
  I: Integer;
begin
  if High(DataBtn) <> -1 then
  begin
    for I := gpnl_ScrlBox.ControlCount - 1 downto 0 do
      if gpnl_ScrlBox.Controls[i] is TButton then FreeAndNil(DataBtn[i]);

    SetLength(DataBtn,0);
    DataStr.Clear;
    DataNum := 0;
  end;
  scrlBox.Height := 0;
  StopProcess('AcroRd32.exe');
//  StopProcess('wmplayer.exe');
  StopProcess('powerpnt.exe');
//  StopProcess('explore.exe');
//  StopProcess('chrome.exe');
//  StopProcess('msedge.exe');

  btn_mList.Enabled := True;
  ShowNHidePanel(pnl_view, pnl_view);
end;

procedure Tfm_mainteacher.btn_WebSearchClick(Sender: TObject);
begin
  ShowNHidePanel(pnl_makelist, pnl_rweb);
  Web_Search.Navigate('www.daum.net');
end;

procedure Tfm_mainteacher.btn_scriptopenClick(Sender: TObject);
var
  i: Integer;
begin
  DataStr.Clear;
  lb_preview.Items.Clear;
  mm_Scripts.Lines.Clear;

  ExtractStrings(['|'],[' '],PChar(MaterialsLst.Strings[cbb_e_title.ItemIndex]),DataStr);
  SetLength(DataBtn,(DataStr.Count div 3));
  for I := 0 to (DataStr.Count - 1) div 3 do
  begin
    lb_preview.Items.Add(DataStr.Strings[i*3]);
    mm_Scripts.Lines.Add(DataStr.Strings[i*3+1]+'|'+DataStr.Strings[i*3+2]);
  end;

end;

procedure Tfm_mainteacher.btn_scriptsaveClick(Sender: TObject);
var
  Contents: String;
  i: Integer;
  lName : TStringList;
begin
//  if not FileExists(ExtractFilepath(ParamStr(0))+'MaterialsList') then
//    ForceDirectories(ExtractFilepath(ParamStr(0))+'MaterialsList');
//  savedialog1.InitialDir := ExtractFilepath(ParamStr(0))+'MaterialsList';
//  SaveDialog1.FilterIndex := 0;
  if cbb_e_title.ItemIndex = -1 then
    SaveDialog1.FileName := FormatDateTime('yymmdd', now)+'_' +cbb_dl_lesson.Text + '_'
  else
    SaveDialog1.FileName := cbb_e_title.Text;

  if savedialog1.Execute then
  begin
    Contents := '';

    lName := TStringList.Create;
    ExtractStrings(['.'],[' '],PChar(ExtractFileName(Savedialog1.FileName)), lName);

    for i := 0 to mm_Scripts.Lines.Count - 1 do
    begin
      Contents := Contents + lb_preview.Items.Strings[i] + '|' +
        mm_Scripts.Lines.Strings[i] + '|';
    end;

    if not sqlconnection1.Connected then sqlconnection1.Connected := True;
    server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);

  if cbb_e_title.ItemIndex = -1 then
    Server.swm_LessonSave(tName, cbb_dl_lesson.Text, lName.Strings[0], Contents)
  else
    Server.swm_LessonSave(tName, cbb_e_lesson.Text, lName.Strings[0], Contents);

    FreeAndNil(Server);
    if sqlconnection1.Connected then sqlconnection1.Connected := False;
    FreeAndNil(lName);
  end;

  cbb_e_lesson.ItemIndex := -1;
  cbb_e_lesson.Text := '선택';
  cbb_e_title.ItemIndex := -1;
  cbb_e_title.Text := '수정하실 주제를 선택하세요.';
end;

procedure Tfm_mainteacher.btn_scriptviewClick(Sender: TObject);
begin
  ShowNHidePanel(pnl_preview, pnl_Script);
end;

procedure Tfm_mainteacher.btn_mListClick(Sender: TObject);
begin
  pnl_LoadList.Width := pnl_view.Width;
  pnl_LoadList.Visible := True;
  btn_mList.Enabled := False;
end;

procedure Tfm_mainteacher.Button7Click(Sender: TObject);
begin
  ImgStreamPageView('캡춰 사진');
end;

procedure Tfm_mainteacher.btn_SendBlackBoardClick(Sender: TObject);
//var
//  AClient : TDSAdminClient;
begin
//  if tname <> '' then
//  begin
//    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
//    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
//    AClient.BroadcastToChannel(
//    DSClientCallbackChannelManager1.ChannelName,
//    TJSonString.Create('changeblackboard|'+IERchdtT.RTFText));
//    FreeAndNil(AClient);
//    if SqlConnection1.Connected then SqlConnection1.Connected := False;
//  end;
end;

procedure Tfm_mainteacher.btn_quitClick(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  if not SqlConnection1.Connected then SqlConnection1.Connected := True;
  AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

  // 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
  AClient.BroadcastToChannel(
  DSClientCallbackChannelManager1.ChannelName,
  TJSonString.Create(FCallBackid + '|' + GenerateOcode
  + '|responsequit'));

  AClient.Free;
  if SqlConnection1.Connected then SqlConnection1.Connected := False;
  btn_quit.Enabled := False;
end;

procedure Tfm_mainteacher.btn_removesentenceClick(Sender: TObject);
var
  i,cnt: Integer;
  Str : TStringList;
  dapji : String;
  AClient : TDSAdminClient;
begin
  dapji := '';
  cnt := 0;
  for i := 0 to pnl_sentence.ControlCount - 1 do
  begin
    if TPanel(pnl_sentence.Controls[i]).Visible = True then
    begin
      Str := TStringList.Create;
      ExtractStrings(['-'],[' '],PChar(TPanel(pnl_sentence.Controls[i]).Caption),Str);
      dapji := dapji + Trim(Str.Strings[0]) + ',';
      TPanel(pnl_sentence.Controls[i]).Caption := Trim(Str.Strings[0]);
      TLabel(FindComponent('anoun'+i.ToString)).Caption := '';
      TLabel(FindComponent('anoun'+i.ToString)).Tag := 0;
      FreeAndNil(Str);
      Inc(cnt);
    end;
  end;

  if (dapji = '') or (Cnt > 5) then
  begin
    Showmessage('선택지가 없거나 5개 이상입니다.');
    exit;
  end;

  if not SqlConnection1.Connected then SqlConnection1.Connected := True;
  AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

  // 선택형 - 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
  AClient.BroadcastToChannel(
  DSClientCallbackChannelManager1.ChannelName,
  TJSonString.Create(FCallBackid + '|' + 'removesenten'  //발문번호
  + '|'+'removesenten' // 응답 유형
  + '|'+Trim(dapji)));

  AClient.Free;
  if SqlConnection1.Connected then SqlConnection1.Connected := False;

//  btn_removeone.Enabled := False;
end;

procedure Tfm_mainteacher.btn_removewordClick(Sender: TObject);
var
  i,cnt: Integer;
  Str : TStringList;
  dapji : String;
  AClient : TDSAdminClient;
begin
  dapji := '';
  cnt := 0;
  for i := 0 to pnl_word.ControlCount - 1 do
  begin
    if TPanel(pnl_word.Controls[i]).Visible = True then
    begin
      Str := TStringList.Create;
      ExtractStrings(['-'],[' '],PChar(TPanel(pnl_word.Controls[i]).Caption),Str);
      dapji := dapji + Trim(Str.Strings[0]) + ',';
      TPanel(pnl_word.Controls[i]).Caption := Trim(Str.Strings[0]);
      TLabel(FindComponent('balpo'+i.ToString)).Caption := '';
      TLabel(FindComponent('balpo'+i.ToString)).Tag := 0;
      FreeAndNil(Str);
      Inc(Cnt);
    end;
  end;

  if (dapji = '') or (Cnt > 5) then
  begin
    Showmessage('선택지가 하나도 없거나 5개이상입니다.');
    exit;
  end;

  if not SqlConnection1.Connected then SqlConnection1.Connected := True;
  AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

  // 선택형 - 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
  AClient.BroadcastToChannel(
  DSClientCallbackChannelManager1.ChannelName,
  TJSonString.Create(FCallBackid + '|' + 'removeword'  //발문번호
  + '|'+'removeword' // 응답 유형
  + '|'+Trim(dapji)));

  AClient.Free;
  if SqlConnection1.Connected then SqlConnection1.Connected := False;

//  btn_removeone.Enabled := False;
end;

procedure Tfm_mainteacher.btn_resizeClick(Sender: TObject);
var
  i : integer;
begin
  if resize_type = 1 then
  begin
        case Resize_su of
          1 : begin
                ImgEnv_View.CurrentLayer.Width := ImgEnv_View.CurrentLayer.Width div 2;
                ImgEnv_View.CurrentLayer.Height := ImgEnv_View.CurrentLayer.Height div 2;
          end;
          2 : begin
                ImgEnv_View.CurrentLayer.Width := ImgEnv_View.CurrentLayer.Width div 4;
                ImgEnv_View.CurrentLayer.Height := ImgEnv_View.CurrentLayer.Height div 4;
          end;
          3 : begin
                ImgEnv_View.CurrentLayer.Width := Round(ImgEnv_View.CurrentLayer.Width * 0.9);
                ImgEnv_View.CurrentLayer.Height := Round(ImgEnv_View.CurrentLayer.Height * 0.9);
          end;
          4 : begin
                ImgEnv_View.CurrentLayer.Width := ImgEnv_View.CurrentLayer.Width * 2;
                ImgEnv_View.CurrentLayer.Height := ImgEnv_View.CurrentLayer.Height * 2;
          end;
          5 : begin
                ImgEnv_View.CurrentLayer.Width := ImgEnv_View.CurrentLayer.Width * 4;
                ImgEnv_View.CurrentLayer.Height := ImgEnv_View.CurrentLayer.Height * 4;
          end;
          6 : begin
                ImgEnv_View.CurrentLayer.Width := Round(ImgEnv_View.CurrentLayer.Width * 1.1);
                ImgEnv_View.CurrentLayer.Height := Round(ImgEnv_View.CurrentLayer.Height * 1.1);
          end;
        end;
  end;
  if Resize_type = 2 then
  begin
        case Resize_su of
           1 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := ImgEnv_View.Layers[i].Width div 2;
                   ImgEnv_View.Layers[i].Height := ImgEnv_View.Layers[i].Height div 2;
                 end;
           end;
           2 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := ImgEnv_View.Layers[i].Width div 4;
                   ImgEnv_View.Layers[i].Height := ImgEnv_View.Layers[i].Height div 4;
                 end;
           end;
           3 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := Round(ImgEnv_View.Layers[i].Width * 0.9);
                   ImgEnv_View.Layers[i].Height := Round(ImgEnv_View.Layers[i].Height * 0.9);
                 end;
           end;
           4 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := ImgEnv_View.Layers[i].Width * 2;
                   ImgEnv_View.Layers[i].Height := ImgEnv_View.Layers[i].Height * 2;
                 end;
           end;
           5 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := ImgEnv_View.Layers[i].Width * 4;
                   ImgEnv_View.Layers[i].Height := ImgEnv_View.Layers[i].Height * 4;
                 end;
           end;
           6 : begin
                 for i := 1 to ImgEnv_View.LayersCount - 1 do
                 begin
                   ImgEnv_View.Layers[i].Width := Round(ImgEnv_View.Layers[i].Width * 1.1);
                   ImgEnv_View.Layers[i].Height := Round(ImgEnv_View.Layers[i].Height * 1.1);
                 end;
           end;
        end;
  end;

  ImgEnv_View.Update;
end;

procedure Tfm_mainteacher.btn_responseAnalizeClick(Sender: TObject);
var
  SaveResponse : TStringList;
  i, resend: Integer;
  j: Integer;
begin
  mm_response.Lines.Clear;
  Tab_Response.TabVisible := True;
  pc_response.ActivePage := Tab_Response;

  SaveResponse := TStringList.Create;
  for i := 1 to BalmoonNum do
  begin
    if Response[i].Count > 2 then
    begin
//      SaveResponse.Add(lb_orderlist.Items.Strings[i-1] + ' = '+ Response[i].Strings[0]);
      if Response[i].Strings[0] = '토론형' then
      begin
        mm_response.Lines.Add(lb_orderlist.Items.Strings[i-1] + ' = '+ Response[i].Strings[0] + ', ' + Response[i].Strings[1]);
        for j := 0 to (Response[i].Count-3) div 3 do
        begin
          mm_response.Lines.Add(Response[i].Strings[j*3+2] +', ('+Response[i].Strings[j*3+3] + ') - ' + Response[i].Strings[j*3+4]);
        end;
      end else
      begin
        mm_response.Lines.Add(lb_orderlist.Items.Strings[i-1] + ' = '+ Response[i].Strings[0]);
        for j := 0 to (Response[i].Count-2) div 2 do
        begin
//          SaveResponse.Add(Response[i].Strings[j*2+1] + ', ' + Response[i].Strings[j*2+2]);
          mm_response.Lines.Add(Response[i].Strings[j*2+1] + ', ' + Response[i].Strings[j*2+2]);
        end;
      end;
    end;
  end;

end;

procedure Tfm_mainteacher.btn_responseSaveClick(Sender: TObject);
begin
  SaveDialog1.InitialDir := ExtractFilepath(ParamStr(0));
  SaveDialog1.FilterIndex := 1;
  if SaveDialog1.Execute then
    mm_response.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure Tfm_mainteacher.btn_rotateClick(Sender: TObject);
begin
  if rotate_type = 1 then
     if rotate_dir = 1 then
       ImgEnv_View.LayersRotateAll(-90, true, false)
     else
       ImgEnv_View.LayersRotateAll(90, true, false)
  else
     if rotate_dir = 1 then
       ImgEnv_View.LayersRotateAll(-90)
     else
       ImgEnv_View.LayersRotateAll(90);

  //회전한 레이어의 위아래를 현재 보이는 형태로 확정 - 이 명령이 없으면 레이어가 생성되 최초의 위, 아래, 좌, 우가 기억됨.
  ImgEnv_View.LayersFixRotations(ImgEnv_View.LayersCurrent);
  ImgEnv_View.Update;
end;

procedure Tfm_mainteacher.btn_sActivityOffClick(Sender: TObject);
var
  AClient : TDSAdminClient;

begin
  if (cbb_app.ItemIndex <> -1) and (cbb_level.ItemIndex <> -1) and
     (rbtn_newcode.Checked or rbtn_oldcode.Checked)  then
  begin
    if rbtn_newcode.Checked then CreateGroupCode;

    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

    server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);
    Server.kswresult_InsertGroupCodeData( tgrade, tban, cbb_app.Text, cbb_level.Text, GroupCode, 'close' );
//            Radio := FindComponent('rbtn_response'+ResponseType.ToString);
//    AClient.BroadcastToChannel(
//    DSClientCallbackChannelManager1.ChannelName,
//    TJSonString.Create(FCallBackid + '|' + GenerateOcode +
//    '|' ));

    //응답 StringList의 처음에 응답유형을 삽입
//    Response[Balmoonnum].Add( TRadioButton(Radio).Caption);
    FreeAndNil(AClient);
    FreeAndNil(Server);

    if SqlConnection1.Connected then SqlConnection1.Connected := False;
  end else Showmessage('활동 지시에 필요한 조건을 확인하세요.');
end;

procedure Tfm_mainteacher.btn_sActivityOnClick(Sender: TObject);
var
  AClient : TDSAdminClient;

begin
  if (cbb_app.ItemIndex <> -1) and (cbb_level.ItemIndex <> -1) and
     (rbtn_newcode.Checked or rbtn_oldcode.Checked)  then
  begin
    if rbtn_newcode.Checked then CreateGroupCode;

    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);

    server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);
    Server.kswresult_InsertGroupCodeData( tgrade, tban, cbb_app.Text, cbb_level.Text, GroupCode, 'open' );
//            Radio := FindComponent('rbtn_response'+ResponseType.ToString);
//    AClient.BroadcastToChannel(
//    DSClientCallbackChannelManager1.ChannelName,
//    TJSonString.Create(FCallBackid + '|' + GenerateOcode +
//    '|' ));

    //응답 StringList의 처음에 응답유형을 삽입
//    Response[Balmoonnum].Add( TRadioButton(Radio).Caption);
    FreeAndNil(AClient);
    FreeAndNil(Server);

    if SqlConnection1.Connected then SqlConnection1.Connected := False;
  end else Showmessage('활동 지시에 필요한 조건을 확인하세요.');
end;

procedure Tfm_mainteacher.btn_saveClick(Sender: TObject);
var
  i: Integer;
  url, tmp, grade, ban : String;
  gradeban : TStringList;
begin
  url := '';
  tmp := '';
  for i := 0 to sg_videourl.RowCount - 1 do
  begin
    if (sg_videourl.Cells[0,i] <> '') and (sg_videourl.Cells[1,i] <> '') then
    begin
      tmp := sg_videourl.Cells[0,i];
      gradeban := TStringList.Create;
      ExtractStrings(['-'],[' '],PChar(tmp),gradeban);
      if gradeban.Strings[0] = '영어' then
      begin
        grade := 'e';
        ban := Copy(GradeBan.Strings[1],1,1);
        url := url + grade + '|' + ban + '|' + Trim(sg_videourl.Cells[1,i]) + '|';
      end
      else
      begin
        grade := Copy(GradeBan.Strings[0],1,1);
        ban := Copy(GradeBan.Strings[1],1,1);
        url := url + grade + '|' + ban + '|' + Trim(sg_videourl.Cells[1,i]) + '|';
      end;
      FreeAndNil(GradeBan);
    end;
  end;

  if url <> '' then
  begin
    if not sqlcon_98.Connected then sqlcon_98.Connected := True;
    server := TServerMethods1Client.Create(sqlcon_98.DBXConnection);

    Server.Online_UrlSaveTeacher(url);

    if sqlcon_98.Connected then sqlcon_98.Connected := False;
    FreeAndNil(Server);
//    btn_save.Enabled := false;
  end else Showmessage('변경된 화상수업URL이 내용이 없습니다.');
end;

procedure Tfm_mainteacher.btn_sbackClick(Sender: TObject);
begin
  Web_search.GoBack;
end;

procedure Tfm_mainteacher.btn_MovieViewOffClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
begin
  if not SQLConnection1.Connected then SQLConnection1.Connected := True;
  AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
  try
          AClient.BroadcastToChannel(
          DSClientCallbackChannelManager1.ChannelName,
          TJSonString.Create(FCallBackid + '|' + GenerateOcode +
          '|movieviewoff|'));
  finally
    AClient.Free;
  end;
  if SQLConnection1.Connected then SQLConnection1.Connected := False;
  btn_MovieViewOff.Enabled := False;
end;

procedure Tfm_mainteacher.btn_sendcooperationClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
  i: Integer;
  Str : String;
begin
  if ierdt_cooperation.Text <> '' then
  begin
//    for i := 0 to ierdt_cooperation.Lines.Count - 1 do
//    begin
//      if IErdt_cooperation.Lines.Strings[i] = '' then Str := Str + '|z|'
//      else  Str := Str + IErdt_cooperation.Lines.Strings[i];
//    end;
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
            AClient.BroadcastToChannel(
            DSClientCallbackChannelManager1.ChannelName,
            TJSonString.Create(FCallBackid + '|' + GenerateOcode +
            '|cooperationTeacher|'+IErdt_cooperation.RTFText));
    finally
      AClient.Free;
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;

    lb_CoopList.Items.Add('선생님'+'-'+formatDateTime('hh:nn:ss',Now));
    CoopList.Add(IErdt_cooperation.RTFText);
  end;
end;

procedure Tfm_mainteacher.btn_sendImgClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
  FileName : String;
  pn : Integer;
begin
  Randomize;
  pn := Random(99);
  if Trim(dt_gonguImg.Text) <> '' then
  begin
    Filename := formatDateTime('yyyymmdd',Now) + '_' +
      format('%.2d', [pn]) + '_' + formatDateTime('zzz',Now);

    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('gonguimg|' + 'http://'+connectip+':8088/chatting/'+subpath+'/'+FileName+ExtractFileExt(Trim(dt_GonguImg.Text))));
    finally
      AClient.Free;

    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;

    IdHTTP_upload.post('http://'+connectip+':8088/chatting/'+subpath+'/'+FileName+ExtractFileExt(Trim(dt_GonguImg.Text)),Trim(dt_GonguImg.Text));
    btn_sendimg.Enabled := False;
  end;
end;

procedure Tfm_mainteacher.btn_sendMovieClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
begin
  if Trim(dt_gonguMovie.Text) <> '' then
  begin
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('gongumovie|' + Trim(dt_gongumovie.Text)));
    finally
      AClient.Free;
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;

    btn_sendMovie.Enabled := False;
  end;
end;

procedure Tfm_mainteacher.btn_send_event1Click(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
  if (dt_event1.Text <> '') then
  begin
    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
//    server := TServerMethods1Client.Create(SqlConnection1.DBXConnection);
          // 학생용으로 보낼 때 교사용 CallBackId를 선두에 붙여서 보냄
    AClient.BroadcastToChannel(
    DSClientCallbackChannelManager1.ChannelName,
    TJSonString.Create(FCallBackid + '|event|' + Trim(dt_event1.Text) ));

    if SqlConnection1.Connected then SqlConnection1.Connected := False;
    FreeAndNil(Server);
//    btn_send_event1.Enabled := false;
  end else Showmessage('이벤트에 사용할 퀴즈와 정답이 입력되었는지 확인하세요.');
end;

procedure Tfm_mainteacher.btn_send_tchatClick(Sender: TObject);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
begin
  if (dt_tchat.Text <> '') then
  begin
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('tchat|' + name + '|'+Trim(dt_tchat.Text)));
    finally
      AClient.Free;
      dt_tchat.Text := '';
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;
  end;
end;

procedure Tfm_mainteacher.btn_sforwordClick(Sender: TObject);
begin
  Web_Search.GoForward;
end;

procedure Tfm_mainteacher.btn_ShownHideClick(Sender: TObject);
begin
  if btn_ShownHide.Caption='Command Hide' then
  begin
    pnl_bottom.Visible := False;
    btn_ShownHide.Caption := 'Command Show';
  end else
  begin
    pnl_bottom.Visible := True;
    btn_ShownHide.Caption := 'Command Hide';
  end;
end;

procedure Tfm_mainteacher.btn_halfClick(Sender: TObject);
begin
  Total_Time := 30;
//  pnl_timer.Caption := '남은 시간 - '+format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
  Timer.Enabled := True;
end;

procedure Tfm_mainteacher.btn_inappsaveClick(Sender: TObject);
begin
  mm_InApp.Lines.SaveToFile('InAppList.ini');
end;

procedure Tfm_mainteacher.btn_inappsearchClick(Sender: TObject);
var
  InApp : TStringList;
  i: Integer;
begin
  InApp := TStringList.Create;
  FindFile2(ExtractFilepath(ParamStr(0))+'\inapp', InApp, '.exe', 0); //C:\Windows 에만 있는 *.dll, *.exe 를 검색 (하위 디렉토리 제외)
  for i := 0 to InApp.Count - 1 do
    mm_InApp.Lines.Add(ExtractFileName(InApp.Strings[i]));

  FreeAndNil(InApp);
end;

procedure Tfm_mainteacher.btn_insertgradebanClick(Sender: TObject);
begin
  if sg_videourl.Cells[0,sg_videourl.Row] = '' then
  begin
    if (cbb_gradeurl.ItemIndex <> -1) and (cbb_banurl.ItemIndex <> - 1) then
      sg_videourl.Cells[0, sg_videourl.Row] := Trim(cbb_gradeurl.Text) + '-' + Trim(cbb_banurl.Text);
  end
  else Showmessage('선택된 행에 입력된 학년-반이 있습니다.');
end;

procedure Tfm_mainteacher.btn_threeClick(Sender: TObject);
begin
  Total_Time := 60 * 3;
//  pnl_timer.Caption := '남은 시간 - '+format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
  Timer.Enabled := True;
end;

procedure Tfm_mainteacher.btn_oneClick(Sender: TObject);
begin
  Total_Time := 60 * 1;
//  pnl_timer.Caption := '남은 시간 - '+format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
  Timer.Enabled := True;
end;

procedure Tfm_mainteacher.cbb_classChange(Sender: TObject);
begin
  BalMoonNum := 0;
  mm_senderlist.Lines.Clear;
end;

procedure Tfm_mainteacher.cbb_dl_lessonChange(Sender: TObject);
var
  RtnStr : String;
  RtnStrList : TStringList;
  i: Integer;
begin
  PatternLst.Clear;
  mNameLst.Clear;
  FNLst.Clear;
  CmtLst.Clear;

  if not sqlconnection1.Connected then sqlconnection1.Connected := True;
  server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);

  RtnStr := Server.swm_DataLoad(cbb_dl_grade.Text, cbb_dl_lesson.text);

  FreeAndNil(Server);
  if sqlconnection1.Connected then sqlconnection1.Connected := False;

  if RtnStr = '' then
  begin
    Showmessage('선택하신 교과로 등록된 자료가 없습니다.');
    exit;
  end;

  RtnStrList := TStringList.Create;
  cbb_dl_title.Clear;
  ExtractStrings(['|'],[' '],PChar(RtnStr),RtnStrList);
  for i := 0 to (RtnStrList.Count - 1) div 4 do
  begin
    PatternLst.Add(RtnStrList.Strings[i*4]);
    cbb_dl_title.Items.Add(RtnStrList.Strings[i*4 + 1]);
    mNameLst.Add(RtnStrList.Strings[i*4 + 1]);
    FNLst.Add(RtnStrList.Strings[i*4 + 2]);
    CmtLst.Add(RtnStrList.Strings[i*4 + 3]);
  end;
  cbb_dl_title.Text := '선택 또는 입력';
  FreeAndNil(RtnStrList);
end;

procedure Tfm_mainteacher.cbb_dl_titleChange(Sender: TObject);
begin
  if cbb_dl_title.ItemIndex <> -1 then
  begin
    cbb_dl_pattern.Text := patternLst.Strings[cbb_dl_title.ItemIndex];
    dt_dl_filename.Text := FNLst.Strings[cbb_dl_title.ItemIndex];
  end;

end;

procedure Tfm_mainteacher.cbb_e_lessonChange(Sender: TObject);
var
  RtnStr : String;
  RtnStrList : TStringList;
  i: Integer;
begin
  if not sqlconnection1.Connected then sqlconnection1.Connected := True;
  server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);

  RtnStr := Server.swm_LessonLoad(pnl_e_tName.Caption, cbb_e_lesson.Text);

  FreeAndNil(Server);
  if sqlconnection1.Connected then sqlconnection1.Connected := False;

  if RtnStr = '' then
  begin
    Showmessage('선택하신 교과로 등록된 수업 주제가 없습니다.');
    exit;
  end;

  RtnStrList := TStringList.Create;
  cbb_e_title.Clear;
  MaterialsLst.Clear;

  ExtractStrings(['^'],[' '],PChar(RtnStr),RtnStrList);
  for i := 0 to (RtnStrList.Count - 1) div 2 do
  begin
    cbb_e_title.Items.Add(RtnStrList.Strings[i*2]);
    MaterialsLst.Add(RtnStrList.Strings[i*2+1])
  end;
  cbb_e_title.Text := '수정하실 주제를 선택하세요.';
  FreeAndNil(RtnStrList);
end;

procedure Tfm_mainteacher.cbb_responsetypeEnter(Sender: TObject);
begin
  btn_order.Enabled := True;
end;

procedure Tfm_mainteacher.cbb_urlKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (cbb_url.Text <> '') then
  begin
    Key := #0;
    Web_View.Navigate(Trim(cbb_url.Text));
  end;
end;

procedure Tfm_mainteacher.cbb_v_lessonChange(Sender: TObject);
var
  RtnStr : String;
  RtnStrList : TStringList;
  i: Integer;
begin
  if not sqlconnection1.Connected then sqlconnection1.Connected := True;
  server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);

  RtnStr := Server.swm_LessonLoad(pnl_v_tName.Caption, cbb_v_lesson.Text);
//  Showmessage(RtnStr);
  FreeAndNil(Server);
  if sqlconnection1.Connected then sqlconnection1.Connected := False;

  if RtnStr = '' then
  begin
    Showmessage('선택하신 교과로 등록된 수업 주제가 없습니다.');
    exit;
  end;

  RtnStrList := TStringList.Create;
  cbb_v_title.Clear;
  MaterialsLst.Clear;
  ExtractStrings(['^'],[' '],PChar(RtnStr),RtnStrList);
  for i := 0 to (RtnStrList.Count - 1) div 2 do
  begin
    cbb_v_title.Items.Add(RtnStrList.Strings[i*2]);
    MaterialsLst.Add(RtnStrList.Strings[i*2+1])
  end;
  cbb_v_title.Text := '수업하실 주제를 선택하세요.';
  FreeAndNil(RtnStrList);
end;

procedure Tfm_mainteacher.cb_numletterClick(Sender: TObject);
begin
  if cb_numletter.Checked = True then
    pnl_numletter.Visible := True
  else pnl_numletter.Visible := False;
end;

procedure Tfm_mainteacher.CreateGroupCode;
var
  I: Integer;
begin
  Randomize;
  for I := 0 to 7 do
    GroupCode := GroupCode + IntToStr(Random(10))
end;

procedure Tfm_mainteacher.dt_11DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if source = lb_VideoRoom then
  begin
    if lb_VideoRoom.Selected[lb_VideoRoom.ItemIndex] then
      TEdit(Sender).Text := (lb_VideoRoom.Items.Strings[lb_VideoRoom.ItemIndex]);
    btn_save.Enabled := True;
  end;
end;

procedure Tfm_mainteacher.dt_11DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListBox);
end;

procedure Tfm_mainteacher.dt_app11Click(Sender: TObject);
var
  Componame : String;
  Compo : TComponent;
begin
  Componame := TEdit(Sender).Name;
  Compo := FindComponent('cbb_'+Copy(Componame,4,4));
  Opendialog.FilterIndex := 2;
  if TComboBox(Compo).text <> '' then
  begin
    if Opendialog.Execute then
    begin
      TEdit(Sender).Text := Opendialog.FileName;
    end;
  end;
end;

procedure Tfm_mainteacher.dt_dl_filename1Click(Sender: TObject);
//var
//  AppName : TStringList;
begin
//  if (cbb_dl_grade.ItemIndex <> -1) then
//  begin
//    case cbb_dl_grade.ItemIndex of
//    0 : begin
//          Opendialog.InitialDir := ExtractFilepath(ParamStr(0));
//          Opendialog.FilterIndex := 6;
//          if opendialog.Execute then
//          begin
//            dt_dl_filename.Text := 'video\'+ExtractFileName(Opendialog.FileName);
//          end;
//        end;
//    2 : begin
//          Opendialog.InitialDir := ExtractFilepath(ParamStr(0));
//          Opendialog.FilterIndex := 5;
//          if opendialog.Execute then
//          begin
//            dt_dl_filename.Text := 'image\'+ExtractFileName(Opendialog.FileName);
//          end;
//        end;
//    4 : begin
//          Opendialog.InitialDir := ExtractFilepath(ParamStr(0));
//          Opendialog.FilterIndex := 4;
//          if opendialog.Execute then
//          begin
//            dt_dl_filename.Text := 'ppt\'+ExtractFileName(Opendialog.FileName);
//          end;
//        end;
//    5 : begin
//          Opendialog.InitialDir := ExtractFilepath(ParamStr(0));
//          Opendialog.FilterIndex := 3;
//          if opendialog.Execute then
//          begin
//            dt_dl_filename.Text := 'pdf\'+ExtractFileName(Opendialog.FileName);
//          end;
//        end;
//
//    end;
//  end else Showmessage('자료 유형이 선택되었는지 확인하세요.');
end;

procedure Tfm_mainteacher.dt_gonguImgClick(Sender: TObject);
begin
  timgenv.fIEBitmap.Clear;
  pnl_movie.Visible := False;
  pnl_img.Visible := True;
  if oimgd.Execute then
  begin
    timgenv.IO.LoadFromFile(oimgd.FileName);
    dt_gonguImg.Text := oimgd.FileName;
    btn_sendimg.Enabled := True;
  end;
end;

procedure Tfm_mainteacher.dt_gonguMovieChange(Sender: TObject);
begin
  pnl_movie.Visible := True;
  pnl_img.Visible := False;
  tWeb.Navigate(Trim(dt_gonguMovie.Text));
  btn_sendMovie.Enabled := True;
end;

procedure Tfm_mainteacher.dt_tchatKeyPress(Sender: TObject; var Key: Char);
var
  AClient : TDSAdminClient;
  Response : TJSONValue;
begin
  if (Key = #13) and (dt_tchat.Text <> '') then
  begin
    mm_myorder.Lines.Add(Trim(dt_tchat.Text));
    Key := #0;
    if not SQLConnection1.Connected then SQLConnection1.Connected := True;
    AClient := TDSAdminClient.Create(SQLConnection1.DBXConnection);
    try
      AClient.BroadcastToChannel(
      DSClientCallbackChannelManager1.ChannelName,
      TJSonString.Create('tchat|' + tname + '|'+Trim(dt_tchat.Text)));
    finally
      AClient.Free;
      dt_tchat.Text := '';
    end;
    if SQLConnection1.Connected then SQLConnection1.Connected := False;
  end;
end;

procedure Tfm_mainteacher.dt_urlChange(Sender: TObject);
begin
//  btn_urlregist.Enabled := True;
end;

procedure Tfm_mainteacher.Filter_cbbChange(Sender: TObject);
begin
  IEFLB_regist.Items.BeginUpdate;
  IEFLB_regist.FileTypes := iefCustom;
  IEFLB_regist.FileTypesMask := Filter_cbb.Mask;
  IEFLB_regist.Items.EndUpdate;
end;

function Tfm_mainteacher.FindFile2(AFolder: string; AList: TStringList;
  AExt: string; AMaxDepth: Integer): Integer;

  procedure Find_File(AFolder: string; AList: TStringList; AExt: string; AMaxDepth: Integer; ACurDepth: Integer);
  var
    LSr: TSearchRec;
    LExt: string;
  begin
    if (FindFirst(AFolder + '\*.*', faAnyFile, LSr)) = 0 then begin
      repeat
        if Pos(LSr.Name, '..') = 0 then begin
          if (LSr.Attr and faDirectory) = faDirectory then begin
            if (AMaxDepth = -1) or (ACurDepth < AMaxDepth) then
              Find_File(AFolder + '\' + LSr.Name, AList, AExt, AMaxDepth, ACurDepth + 1);
          end
          else begin
            LExt := UpperCase(ExtractFileExt(LSr.Name));
            if LExt  <> '' then begin
              if Pos(LExt + ';', AExt) > 0 then begin
                AList.Add(AFolder + '\' + LSr.Name);
              end;
            end;
          end;
        end;

        Application.ProcessMessages; //개발자 기호에 따라 사용여부와 사용주기를 조정하세요.
      until FindNext(LSr) <> 0;

     FindClose(LSr);
    end;
  end;
begin

  AFolder := ExcludeTrailingPathDelimiter(AFolder);
  AList.Clear;
  AExt := UpperCase(AExt);
  if RightStr(AExt, 1) <> ';' then AExt := AExt + ';';

  Find_File(AFolder, AList, AExt, AMaxDepth, 0);
  Result := AList.Count;
end;

procedure Tfm_mainteacher.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSClientCallbackChannelManager1.UnregisterCallback(FCallBackId);  //콜백등록 해제
  FreeAndNil(Question);
  FreeAndNil(Order);
  FreeAndNil(ClassHome);
  FreeAndNil(Attendance);
  FreeAndNil(DataStr);
  FreeAndNil(ViewAppList);
  FreeAndNil(InAppList);
  FreeAndNil(Discuss);
  FreeAndNil(CoopList);

  //검색된 교수자료 관련
   FreeAndNil(mNameLst);
   FreeAndNil(patternLst);
   FreeAndNil(FNLst);
   FreeAndNil(CmtLst);
   FreeAndNil(MaterialsLst);
   FreeAndNil(DownLoadLst);
   FreeAndNil(DownLoadPttnLst);

  StopProcess('AcroRd32.exe');
//  StopProcess('wmplayer.exe');
  StopProcess('pptview.exe');
//  StopProcess('explore.exe');
//  StopProcess('chrome.exe');
  StopProcess('fingertips.exe');

end;

procedure Tfm_mainteacher.FormCreate(Sender: TObject);
var
  RetryCount : integer;
begin
  if ParamStr(1) = '' then
  begin
    Showmessage('PowerOfSWT.EXE를 더블클릭하여 프로그램을 실행시키시기 바랍니다.');
    Application.Terminate;
  end;

  BalmoonNum := 0; //교사의 발문 개수를 초기화

  ClassHome := TStringList.Create;
  ClassHome.Values['11'] := 'http://www.k-songwon.es.kr/myclass/?addr=class1_1';
  ClassHome.Values['12'] := 'http://www.k-songwon.es.kr/myclass/?addr=class1_2';
  ClassHome.Values['13'] := 'http://www.k-songwon.es.kr/myclass/?addr=class1_3';
  ClassHome.Values['21'] := 'http://www.k-songwon.es.kr/myclass/?addr=class2_1';
  ClassHome.Values['22'] := 'http://www.k-songwon.es.kr/myclass/?addr=class2_2';
  ClassHome.Values['23'] := 'http://www.k-songwon.es.kr/myclass/?addr=class2_3';
  ClassHome.Values['31'] := 'http://www.k-songwon.es.kr/myclass/?addr=class3_1';
  ClassHome.Values['32'] := 'http://www.k-songwon.es.kr/myclass/?addr=class3_2';
  ClassHome.Values['33'] := 'http://www.k-songwon.es.kr/myclass/?addr=class3_3';
  ClassHome.Values['41'] := 'http://www.k-songwon.es.kr/myclass/?addr=class4_1';
  ClassHome.Values['42'] := 'http://www.k-songwon.es.kr/myclass/?addr=class4_2';
  ClassHome.Values['43'] := 'http://www.k-songwon.es.kr/myclass/?addr=class4_3';
  ClassHome.Values['51'] := 'http://www.k-songwon.es.kr/myclass/?addr=class5_1';
  ClassHome.Values['52'] := 'http://www.k-songwon.es.kr/myclass/?addr=class5_2';
  ClassHome.Values['53'] := 'http://www.k-songwon.es.kr/myclass/?addr=class5_3';
  ClassHome.Values['61'] := 'http://www.k-songwon.es.kr/myclass/?addr=class6_1';
  ClassHome.Values['62'] := 'http://www.k-songwon.es.kr/myclass/?addr=class6_2';
  ClassHome.Values['63'] := 'http://www.k-songwon.es.kr/myclass/?addr=class6_3';

//  RetryCount := 0;
//  repeat
//    FAppWnd := FindWindow(PChar(pdf), nil);
//    Sleep(100);
//    Inc(RetryCount);
//  until (FAppWnd <> 0) or (RetryCount > 10);
//
//  if FAppWnd <> 0 then
//  begin
//    PostMessage(FAppWnd, WM_Close, 0, 0);
//    FAppWnd := 0;
//  end;

end;

procedure Tfm_mainteacher.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
//var
//  LObj : TIEImageLayer;
//  LCompo : TComponent;
begin
//  LObj := ClientToScreen(EventInfo.Location);
//  if LObj = TIEImageLayer then
//  begin
//    if (not (TInteractiveGestureFlag.gfBegin in EventInfo.Flags)) and
//      (not (TInteractiveGestureFlag.gfEnd in EventInfo.Flags)) then
//      begin
//        LCompo := TIEImageLayer(LObj);
//
//      end;
//  end;
end;

procedure Tfm_mainteacher.FormShow(Sender: TObject);
var
  i : integer;
  AppStr, AppType, idpw : TStringList;
begin

  for i := 1 to 30 do
    Response[i] := TStringList.Create;

//  for i := 0 to pc_imgstream.PageCount - 1 do
//    pc_imgstream.Pages[i].TabVisible := False;

  Question := TStringList.Create;
  Order := TStringList.Create;
  VideoRoom := TStringList.Create;
  Attendance := TStringList.Create;
  DataStr := TStringList.Create;
  ViewAppList := TStringList.Create;
  InAppList := TStringList.Create;
  Discuss := TStringList.Create;
  CoopList := TStringList.Create;

  //검색된 교수 자료 관련
  mNameLst := TStringList.Create;
  patternLst := TStringList.Create;
  FNLst := TStringList.Create;
  CmtLst := TStringList.Create;
  MaterialsLst := TStringList.Create;
  DownLoadLst := TStringList.Create;
  DownLoadPttnLst := TStringList.Create;

  if FileExists('userinfo.ini') then
  begin
    chkb_idpwmemory.Checked := True;
    idpw := TStringList.Create;
    idpw.LoadFromFile('userinfo.ini');
    dt_id.Text := idpw.Values['userid'];
    dt_pw.Text := idpw.Values['userpw'];
    FreeAndNil(idpw);
  end;


  if FileExists('ViewAppList.ini') then
  begin
    ViewAppList.LoadFromFile('ViewAppList.ini');
    for i := 0 to ViewAppList.Count - 1 do
    begin
      AppStr := TStringList.Create;
      AppType := TStringList.Create;
      ExtractStrings(['|'],[' '],PChar(ViewAppList.Strings[i]),AppStr);
      ExtractStrings(['='],[' '],PChar(AppStr.Strings[0]),AppType);

      if AppType.Strings[1] = 'movie' then
      begin
        TEdit(FindComponent('dt_'+AppStr.Strings[1])).Text := AppStr.Strings[2];
        TComboBox(FindComponent('cbb_'+AppStr.Strings[1])).Text := AppType.Strings[0];
      end;
//      if AppType.Strings[1] = 'youtube' then
//      begin
//        TEdit(FindComponent('dt_'+AppStr.Strings[1])).Text := AppStr.Strings[2];
//        TComboBox(FindComponent('cbb_'+AppStr.Strings[1])).Text := AppType.Strings[0];
//      end;
      if AppType.Strings[1] = 'web' then
      begin
        TEdit(FindComponent('dt_'+AppStr.Strings[1])).Text := AppStr.Strings[2];
        TComboBox(FindComponent('cbb_'+AppStr.Strings[1])).Text := AppType.Strings[0];
      end;
      if AppType.Strings[1] = 'ppt' then
      begin
        TEdit(FindComponent('dt_'+AppStr.Strings[1])).Text := AppStr.Strings[2];
        TComboBox(FindComponent('cbb_'+AppStr.Strings[1])).Text := AppType.Strings[0];
      end;
      if AppType.Strings[1] = 'pdf' then
      begin
        TEdit(FindComponent('dt_'+AppStr.Strings[1])).Text := AppStr.Strings[2];
        TComboBox(FindComponent('cbb_'+AppStr.Strings[1])).Text := AppType.Strings[0];
      end;
      FreeAndNil(AppType);
      FreeAndNil(AppStr);
    end;
  end else Showmessage('로그인하신 후 교수자료 제시에 사용할 앱 을설정&등록탭에서 등록해 주세요.');
  cb_lsncls.ItemIndex := 0; //수업할 반을 '우리반'으로 선택

  pc_body.ActivePage := ts_login;
  pc_bottom.ActivePage := Tab_Action;
  pc_config.ActivePage := ts_MakeList;
  dt_id.SetFocus;

  TimerOnoff(False);

  scrlbox.Height := 0;
end;

function Tfm_mainteacher.GenerateId: String;
var
  p1, p2, p3 : Integer;
begin
  Randomize;
  p1 := Random(1000000);
  p2 := Random(1000000);
  p3 := Random(1000000);

  Result := Format('%d.%d.%d',[p1,p2,p3]);
end;

function Tfm_mainteacher.Generateocode: String;
begin
  result := Formatdatetime('yy-mm-dd',now())+'_' + IntToStr(BalmoonNum)+'번';
end;

procedure Tfm_mainteacher.IdHTTP_downloadWork(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
begin
//  prgrs_down.Position := AWorkCount;
end;

procedure Tfm_mainteacher.IdHTTP_downloadWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
//  prgrs_down.Max := AWorkCountMax;
//  prgrs_down.Position := 0;
end;

procedure Tfm_mainteacher.IdHTTP_downloadWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
//  prgrs_down.Position := 0;
end;

procedure Tfm_mainteacher.IdHTTP_uploadWork(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
begin
//  if AWorkMode = wmRead then
  begin
//    Showmessage(AWorkCount.ToString());
    prgrs_upload.Position := AWorkCount;
  end;
end;

procedure Tfm_mainteacher.IdHTTP_uploadWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
//  if AWorkMode = wmRead then
  begin
    prgrs_upload.Max := AWorkCountMax;
    prgrs_upload.Position := 0;
  end;
end;

procedure Tfm_mainteacher.IdHTTP_uploadWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  prgrs_upload.Position := 0;
end;

procedure Tfm_mainteacher.IEFLB_registDblClick(Sender: TObject);
var
  Data, AppName : TStringList;
  i, id: Integer;
  Ext : String;
  fNamePr, fName : WideString;
begin
  Ext := LowerCase(ExtractFileExt(IEFLB_regist.Filename));
  Data := TStringList.Create;
  AppName := TStringList.Create;

  pnl_previewtitle.Caption := '미 리 보 기';
  if (Ext = '.mp4') or (Ext = '.avi') or (Ext = '.wav') or (Ext = '.mpg') or (Ext = '.mpeg') then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pvideo);

    fNamePr := 'file:///';
    fName := IEFLB_regist.Filename;
    fName := StringReplace(fName, '/','\\',[rfReplaceAll]);
    fName := fNamePr + fName;

    id := VLCPlugin22.playlist.add(PChar(fName),null,null);
    VLCPlugin22.playlist.playItem(id);
  end;

  if (Ext = '.ppt') or (Ext = '.pptx') then
  begin
    if ViewAppList.Values[Copy(Ext,2,3)] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Copy(Ext,2,3)]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(IEFLB_regist.Filename),nil,SW_SHOW);
      App_Fixed(ppt, pnl_preview);
      ExcuteClass := 'ppt';
    end else Showmessage('파워포인트 뷰어의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if (Ext = '.pdf') then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(IEFLB_regist.Filename),nil,SW_SHOW);
      App_Fixed(pdf, pnl_view);
      ExcuteClass := 'pdf';
    end else Showmessage('아크로벳 리더의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.png') or (Ext = '.bmp') or (Ext = '.gif') then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pimage);

    ImgEnV_preview.IO.LoadFromFile(IEFLB_regist.Filename);
    ExcuteClass := 'image';
    DataStatus := 'image';
  end;

//  if Data.Strings[0] = 'web' then
//  begin
//    ShowNHidePanel(pnl_PreView, pnl_rweb);
//
//    Web_preview.Navigate(Data.Strings[2]);
//    if cbb_url.Items.IndexOf(Data.Strings[2]) = -1 then
//      cbb_url.Items.Add(Data.Strings[2]);
//    ExcuteClass := 'web';
//    DataStatus := 'web';
//  end;

  FreeAndNil(Data);
  FreeAndNil(AppName);

end;

procedure Tfm_mainteacher.IERchdtTChange(Sender: TObject);
var
  AClient : TDSAdminClient;
begin
//  if tname <> '' then
//  begin
//    if not SqlConnection1.Connected then SqlConnection1.Connected := True;
//    AClient := TDSAdminClient.Create(SqlConnection1.DBXConnection);
//    AClient.BroadcastToChannel(
//    DSClientCallbackChannelManager1.ChannelName,
//    TJSonString.Create('changeblackboard|'+IERchdtT.RTFText));
//    FreeAndNil(AClient);
//    if SqlConnection1.Connected then SqlConnection1.Connected := False;
//  end;
end;

procedure Tfm_mainteacher.imgEnV_viewLayerNotifyEx(Sender: TObject;
  layer: Integer; event: TIELayerEvent);
var
  Tmp : Integer;
  i: Integer;
begin

  if (event = ielSelected) and (layer <> 0) then
  begin
//    ImageEnView1.CurrentLayer.LayerIndex := 0;
//    ImageEnView1.layers
    i := 1;
    while i < imgEnV_view.LayersCount do
    begin
      if Layer = imgEnV_view.Layers[i].LayerIndex then
//        Showmessage('선택한 레이어와 같은 인덱스네.')
      else
        imgEnV_view.Layers[i].LayerIndex := i;
      Inc(i);
    end;
    imgEnV_view.Layers[layer].LayerIndex := i-1;
    imgEnV_view.Update;
//    Caption := ImageEnView1.CurrentLayer.LayerIndex.ToString();
  end;
end;

procedure Tfm_mainteacher.ImgStreamPageView(PageTitle: String);
var
  i: Integer;
begin
//  for i := 0 to pc_ImgStream.PageCount - 1 do
//  begin
//    pc_imgstream.Pages[i].TabVisible := False;
//    if TTabSheet(pc_imgstream.Pages[i]).Caption = PageTitle then
//    begin
//      TTabSheet(pc_imgstream.Pages[i]).TabVisible := True;
//      pc_imgstream.ActivePage := TTabSheet(pc_imgstream.Pages[i]);
//    end;
//  end;

end;

procedure Tfm_mainteacher.lb_cooplistClick(Sender: TObject);
begin
  IErdt_Cooperation.RTFText := CoopList.Strings[TListBox(Sender).ItemIndex];
end;

procedure Tfm_mainteacher.lb_orderlistClick(Sender: TObject);
var
  i, cho1,cho2,cho3,cho4,cho5,cho6 : Integer;
  Data, ChoiceStr, ChoiceTitle : TStringList;
  str : String;
  NameLabel: TLabel;
  Btn : TButton;
  JsonArray : TJsonArray;
begin
//  lyt_r_sentence.DeleteChildren;

  for i := 0 to pc_Response.PageCount - 1 do
    pc_Response.Pages[i].TabVisible := False;

//  Img_LoadOrder.Bitmap.Assign(DigiCam[Item.Index]); //교사의 지시 이미지
//  Showmessage(Response[TListBox(Sender).ItemIndex+1].Strings[0]);
  if Response[TListBox(Sender).ItemIndex+1].Strings[0] = '파상형' then
  begin
    wave_pos := 0;
    pnl_sentence.Width := pc_response.Width;
    pnl_sentence.Height := round(pc_Response.Height / 8) * (17);
    pnl_sentence.Left := 0;
    pnl_sentence.Top := 0;

    pnl_width := round((pc_Response.Width-60) / 2);
    pnl_height := round(pc_Response.Height / 8);
    Tab_sentence.Visible := True;

    for I := 0 to 33 do
    begin
      if (Response[TListBox(Sender).ItemIndex+1].Count <> 1) and
         (((Response[TListBox(Sender).ItemIndex+1].Count-1) div 2) = i) then exit;

      PnlArray[I] := TPanel.Create(self);
      PnlArray[I].Parent := pnl_sentence;
//      PnlArray[I].OnMouseDown := lyt_r_sentenceMouseDown;
//      PnlArray[I].OnMouseUp := lyt_r_sentenceMouseUp;
      PnlArray[I].Width := pnl_width;
      PnlArray[I].Height := pnl_height;
      PnlArray[I].Color := clWhite;
      PnlArray[I].Name := 'WaveRec' + I.ToString;
      PnlArray[I].Left := (i mod 2) * pnl_width;
      PnlArray[I].Top := (i div 2) * pnl_height;
      if Response[TListBox(Sender).ItemIndex+1].Count = 1 then PnlArray[I].Caption := ''
      else PnlArray[I].Caption := Response[TListBox(Sender).ItemIndex+1].Strings[(i+1)*2];
      Btn := TButton.Create(self);
      Btn.Parent := PnlArray[I];
      Btn.Caption := 'x';
      Btn.Width := 32;
      Btn.Height := 32;
      Btn.Align := TAlign.alNone;
      Btn.Left := Pnl_Width - Btn.Width;
      Btn.Top := Pnl_height - Btn.Height;
      Btn.OnClick := BtnOnClick;
      NameLabel := TLabel.Create(self);
      NameLabel.Parent := PnlArray[i];
      NameLabel.Align := TAlign.alBottom;
      NameLabel.Height := 14;
      NameLabel.Name := 'balpo'+i.ToString;
      NameLabel.Font.Color := clBlue;
      NameLabel.Tag := i;
//      PnlArray[I].AddObject(Btn);
    end;
  end;

  if Copy(Response[TListBox(Sender).ItemIndex+1].Strings[0],1,3) = '선택형' then
  begin
    for i := 0 to 5 do
    begin
      TPanel(FindComponent('pnl_choicet'+i.ToString)).Caption := '';
    end;
    ChoiceStr := TStringList.Create;
    ChoiceTitle := TStringList.Create;
    ExtractStrings(['='],[' '],PChar(Response[TListBox(Sender).ItemIndex+1].Strings[0]),ChoiceStr);
    ExtractStrings([','],[' '],PChar(ChoiceStr.Strings[1]),Choicetitle);
    for i := 0 to Choicetitle.Count - 1 do
    begin
      TPanel(FindComponent('pnl_choicet'+i.ToString)).Caption := ChoiceTitle.Strings[i];
    end;
    FreeAndNil(ChoiceStr);
    FreeAndNil(ChoiceTitle);
    proc_choice(TListBox(Sender).ItemIndex+1);
  end;

  if Response[TListBox(Sender).ItemIndex+1].Strings[0] = '낱말형' then
  begin
    pnl_width := round((pc_Response.Width-60) / 4);
    pnl_height := round(pc_Response.Height / 8);

    proc_word(TListBox(Sender).ItemIndex+1);
  end;

  if Response[TListBox(Sender).ItemIndex+1].Strings[0] = '토론형' then
  begin
    tab_discuss.TabVisible := True;
    pc_response.ActivePage := tab_discuss;
    mm_discusssubject.Lines.Clear;
    mm_discusssubject.Lines.Add(Response[TListBox(Sender).ItemIndex+1].Strings[1]);
    mm_chan.Lines.Clear;
    mm_ban.Lines.Clear;

    if Response[TListBox(Sender).ItemIndex+1].count > 2 then
    begin

      for i := 0 to (Response[TListBox(Sender).ItemIndex+1].Count - 3) div 3 do
      begin
        if Response[TListBox(Sender).ItemIndex+1].Strings[i*3+2] = '찬성' then
        begin
          mm_chan.Lines.Add('('+Response[TListBox(Sender).ItemIndex+1].Strings[i*3+3] + ') ' + Response[TListBox(Sender).ItemIndex+1].Strings[i*3+4]);
          mm_chan.Lines.Add('');
        end
        else
        begin
          mm_ban.Lines.Add('('+Response[TListBox(Sender).ItemIndex+1].Strings[i*3+3] + ') ' + Response[TListBox(Sender).ItemIndex+1].Strings[i*3+4]);
          mm_ban.Lines.Add('');
        end;
      end;
    end else Showmessage('아직 학생들의 응답이 도착하지 않았습니다.');

  end;

  if Response[TListBox(Sender).ItemIndex+1].Strings[0] = '문장형' then
  begin
    pnl_width := round((pc_Response.Width-60) / 2);
    pnl_height := round(pc_Response.Height / 8);
    proc_sentence(TListBox(Sender).ItemIndex+1);
  end;

  if (Response[TListBox(Sender).ItemIndex+1].Strings[0] = 'OX형') or
    (Response[TListBox(Sender).ItemIndex+1].Strings[0] = '찬반형') then
  begin
    proc_oxtype(TListBox(Sender).ItemIndex+1);
  end;

  if Pos('선택형',Response[TListBox(Sender).ItemIndex+1].Strings[0]) <> 0 then
  begin
//    proc_choice(i, Item, cho1, cho2, cho3, cho4, cho5, cho6);
  end;

  if Response[TListBox(Sender).ItemIndex+1].Strings[0] = '확신도' then
  begin
    proc_conviction(TListBox(Sender).ItemIndex+1);
  end;

  if (Response[TListBox(Sender).ItemIndex+1].Strings[0] = '낱말형') or  (Response[TListBox(Sender).ItemIndex+1].Strings[0] = '문장형') or
     (Response[TListBox(Sender).ItemIndex+1].Strings[0] = '파상형') then
  begin
    btn_removeword.Enabled := True;
  end;

end;

procedure Tfm_mainteacher.lb_previewDblClick(Sender: TObject);
var
  Data, AppName : TStringList;
  i, id: Integer;
  path : String;
  fNamePr, fName : WideString;
begin
  if FAppWnd <> 0 then
  begin
    PostMessage(FAppWnd, WM_Close, 0, 0);
    FAppWnd := 0;
  end;

  Path := ExtractFilePath(ParamStr(0));
  Data := TStringList.Create;
  AppName := TStringList.Create;
  ExtractStrings(['|'],[' '],PChar(DataStr.Strings[lb_preview.ItemIndex]), Data);

  pnl_previewtitle.Caption := '미 리 보 기';
  if Data.Strings[0] = 'video' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pvideo);

    fNamePr := 'file:///';
    fName := Path + Data.Strings[2];
    fName := StringReplace(fName, '/','\\',[rfReplaceAll]);
    fName := fNamePr + fName;

//    id := VLCPlugin22.playlist.add(PChar(fName),null,null);
//    VLCPlugin22.playlist.playItem(id);
    DataStatus := 'video';
  end;

  if Data.Strings[0] = 'youtube' then
  begin
//    ShowNHidePanel(pnl_PreView, pnl_rvideo);
//
//    id := VLCPlugin22.playlist.add(PChar(Data.Strings[2]),null,null);
//    VLCPlugin22.playlist.playItem(id);
//    DataStatus := 'youtube';

    ShowNHidePanel(pnl_PreView, pnl_rweb);

    Web_preview.Navigate(Data.Strings[2]);
    if cbb_url.Items.IndexOf(Data.Strings[2]) = -1 then
      cbb_url.Items.Add(Data.Strings[2]);
    ExcuteClass := 'web';
    DataStatus := 'web';
  end;

  if Data.Strings[0] = 'ppt' then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+Data.Strings[2]),nil,SW_SHOW);
      App_Fixed(ppt, pnl_view);
      ExcuteClass := 'ppt';
    end else Showmessage('파워포인트 뷰어의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if Data.Strings[0] = 'pdf' then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+Data.Strings[2]),nil,SW_SHOW);
      App_Fixed(pdf, pnl_view);
      ExcuteClass := 'pdf';
    end else Showmessage('아크로벳 리더의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if Data.Strings[0] = 'image' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pimage);

    ImgEnV_preview.IO.LoadFromFile(Path+Data.Strings[2]);
    ExcuteClass := 'image';
    DataStatus := 'image';
  end;

  if Data.Strings[0] = 'web' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_rweb);

    Web_preview.Navigate(Data.Strings[2]);
    if cbb_url.Items.IndexOf(Data.Strings[2]) = -1 then
      cbb_url.Items.Add(Data.Strings[2]);
    ExcuteClass := 'web';
    DataStatus := 'web';
  end;

  FreeAndNil(Data);
  FreeAndNil(AppName);
end;

procedure Tfm_mainteacher.lb_previewKeyPress(Sender: TObject; var Key: Char);
var
  ItemPos : Integer;
begin
  if (lb_preview.SelCount <> 0) then
    if Key = #46 then
    begin
      ItemPos := lb_Preview.ItemIndex;
      lb_preview.Items.Delete(ItemPos);
      mm_Scripts.Lines.Delete(ItemPos);
    end;
end;

procedure Tfm_mainteacher.N1Click(Sender: TObject);
var
  LayersCurrent : integer;
  jsg : TComponent;
  path : String;
begin
  Path := ExtractFilePath(ParamStr(0)) + 'swmaterials\';
  imgEnV_view.MouseInteractLayers := imgEnV_view.MouseInteractLayers + [ mlMoveLayers, mlResizeLayers];
  jsg := popup_preview.PopupComponent;
  if jsg is TButton then
  begin

      imgEnV_view.layersadd(Path+DataStr.Strings[TButton(jsg).Tag*3+2]);
      TIEImageLayer(ImgEnv_view.CurrentLayer).Width := ImgEnv_view.Width div 3;
      TIEImageLayer(ImgEnv_view.CurrentLayer).Height := ImgEnv_view.Height div 2;
      TIEImageLayer(ImgEnv_view.CurrentLayer).PosX := 10;
      TIEImageLayer(ImgEnv_view.CurrentLayer).PosY := 10;
    ImgEnv_View.Update;
  end;


//  TIEImageLayer( imgEnV_view.CurrentLayer ).ExecuteOpenDialog();
//  imgEnV_view.Layers [ LayersCurrent ]..Bitmap.lo.Assign( stdView.IEBitmap );
end;

procedure Tfm_mainteacher.sentenceToChoiceClick(Sender: TObject);
var
  Str : TStringList;
  i: Integer;
  dapji : String;
begin
  dapji := '';
  for i := 0 to pnl_sentence.ControlCount - 1 do
  begin
    if TPanel(pnl_sentence.Controls[i]).Visible = True then
    begin
      Str := TStringList.Create;
      ExtractStrings(['-'],[' '],PChar(TPanel(pnl_sentence.Controls[i]).Caption),Str);
      dapji := dapji + Trim(Str.Strings[0]) + ',';
      TPanel(pnl_sentence.Controls[i]).Caption := Trim(Str.Strings[0]);
      TLabel(FindComponent('anoun'+i.ToString)).Caption := '';
      TLabel(FindComponent('anoun'+i.ToString)).Tag := 0;
    end;
  end;
  mm_dapji.Text := dapji;
end;

procedure Tfm_mainteacher.tmr_chatattendanceTimer(Sender: TObject);
var
  i : integer;
begin
  Tmr_ChatAttendance.Enabled := False;

  for i := 0 to Attendance.Count - 1 do
  begin
    if i <> Attendance.Count-1 then
      mm_chatattendance.Text := mm_chatattendance.Text + Attendance.Strings[i] + ', '
    else
      mm_chatattendance.Text := mm_chatattendance.Text + Attendance.Strings[i] + ' - ' + Attendance.Count.ToString + '명';
  end;
end;

procedure Tfm_mainteacher.toChoiceClick(Sender: TObject);
var
  Str : TStringList;
  i: Integer;
  dapji : String;
begin
  dapji := '';
  for i := 0 to pnl_word.ControlCount - 1 do
  begin
    if TPanel(pnl_word.Controls[i]).Visible = True then
    begin
      Str := TStringList.Create;
      ExtractStrings(['-'],[' '],PChar(TPanel(pnl_word.Controls[i]).Caption),Str);
      dapji := dapji + Trim(Str.Strings[0]) + ',';
      TPanel(pnl_word.Controls[i]).Caption := Trim(Str.Strings[0]);
      TLabel(FindComponent('balpo'+i.ToString)).Caption := '';
      TLabel(FindComponent('balpo'+i.ToString)).Tag := 0;
    end;
  end;
  mm_dapji.Text := dapji;
end;

procedure Tfm_mainteacher.DownLoad_Files(Sender: TObject);
var
  i: Integer;
  DownLoad : TMemoryStream;
begin
  DownLoad := TMemoryStream.Create;
  for i := 0 to DownLoadLst.Count - 1 do
  begin
    Caption := ('http://210.218.83.97:8088/swmaterials/'+DownLoadPttnLst.Strings[i] +'/' + DownLoadLst.Strings[i]);
    IdHTTP_download.Get('http://210.218.83.97:8088/swmaterials/'+DownLoadPttnLst.Strings[i] +'/' + DownLoadLst.Strings[i], DownLoad);
    DownLoad.Position := 0;
    DownLoad.SaveToFile(ExtractFilePath(ParamStr(0))+'swmaterials\'+DownLoadLst.Strings[i]);
    DownLoad.Clear;
  end;
  pc_bottom.ActivePage := tab_action;
  FreeAndNil(DownLoad);
end;

procedure Tfm_mainteacher.Upload_Files(Sender: TObject);
var
  RetStr : String;
  RetStringList : TSTringList;
  DataStream: TIdMultiPartFormDataStream; // php CGI로 파일 업로드에 사용
  rs: TStringStream;                      // php CGI로 파일 업로드에 사용
begin
  DataStream:= TIdMultiPartFormDataStream.Create;
  rs:= TStringStream.Create;

//  RetStr := idHttp.Post('http://210.218.83.97:8088/swmaterials/' + Filename, IEFLB_regist.filename);
  try
    IdHTTP_upload.Request.ContentType := DataStream.RequestContentType;
//    idHTTP.Request.ContentType := 'multipart';

// Post 로 folder, filename 값을 전송합니다.
    if cbb_pattern.Text = 'video' then
      DataStream.AddFormField('folder','swmaterials/video'); // 서버에 저장될 video 폴더
    if cbb_pattern.Text = 'image' then
      DataStream.AddFormField('folder','swmaterials/image'); // 서버에 저장될 image 폴더
    if cbb_pattern.Text = 'ppt' then
      DataStream.AddFormField('folder','swmaterials/ppt'); // 서버에 저장될 ppt 폴더

    DataStream.AddFormField('filename',FileName);
    DataStream.AddFile('upfile',ExtractFilePath(IEFLB_regist.filename)+filename,'application/octet-stream');

// upfile 변수에 'e:\downlogo.bmp' 파일 을 추가 합니다..
    DataStream.Position := 0;
//    RetStr := idHttp.Post('http://210.218.83.97:8088/swmaterials/swmfileup.php', IEFLB_regist.filename);
    IdHTTP_upload.Post('http://210.218.83.97:8088/swmfileup.php', DataStream, rs);

  finally
//    Showmessage(IdHTTP_upload.ResponseText);
//    Showmessage(rs.DataString);
    RetStr := LowerCase(rs.DataString);
    FreeAndNil(DataStream);
    FreeAndNil(rs);
    //파일이름을 원래대로 복원
    RenameFile(ExtractFilePath(IEFLB_regist.filename)+Filename,Old_FileName);

  end;

  if Pos('success', RetStr) > 0 then
  begin
    //    서버의 테이블에 검색할 데이터 저장하는 부분
    if not sqlconnection1.Connected then sqlconnection1.Connected := True;
    server := TServerMethods1Client.Create(sqlconnection1.DBXConnection);

    Server.swm_DataSave(cbb_grade.Text, cbb_lesson.Text, cbb_pattern.Text,
      Trim(dt_materialsName.Text), Filename, Trim(dt_materialscomment.Text));

    FreeAndNil(Server);
    if sqlconnection1.Connected then sqlconnection1.Connected := False;
  end;
  FreeAndNil(RetStringList);
  cbb_pattern.ItemIndex := -1;
  cbb_pattern.Text := '선택';
  dt_materialsName.Text := '';
  dt_materialsComment.Text := '';
end;

procedure Tfm_mainteacher.VLCPlugin21DblClick(Sender: TObject);
begin
  Showmessage('더블클릭했네요.');
end;

procedure Tfm_mainteacher.pc_bodyChange(Sender: TObject);
var
  I, scrlbx_wid: Integer;
  SubItem : TStringList;
begin
  if pc_body.ActivePage <> ts_inapp then
  begin
    if High(InAppBtn) <> -1 then
    begin
      for I := InAppList.Count - 1 downto 0 do
      if InAppBtn[i] <> nil then
      begin
        FreeAndNil(InAppBtn[i]);
      end;

    SetLength(InAppBtn,0);
    InAppList.Clear;
    end;
    ScrlBx_inapp.Width := 0;
  end;

  if pc_body.ActivePage = ts_config then
  begin
    ShowNHidePanel(pnl_Preview, pnl_script);
  end;

  if pc_body.ActivePage = ts_balmoon then
  begin
    tab_ox.TabVisible := False;
    tab_word.TabVisible := False;
    tab_Sentence.tabvisible := False;
    tab_conviction.TabVisible := False;
    tab_choice.TabVisible := False;

    pc_bottom.ActivePage := Tab_Action;

    pnl_web.Visible := False;
    pnl_video.Visible := False;
    pnl_image.Visible := False;
  end;

  if pc_body.ActivePage = ts_inapp then
  begin
    scrlbx_wid := 0;
    if FileExists('InAppList.ini') then
    begin
      InAppList.LoadFromFile('InAppList.ini');

      SetLength(InappBtn,InAppList.Count);
      for I := 0 to InAppList.Count - 1 do
      begin
        scrlbx_inapp.Height := pnl_inappbutton.Height;
        gpnl_inapp.ColumnCollection.Add;
        gpnl_inapp.ColumnCollection[i].SizeStyle := ssAbsolute;
        InAppBtn[i] := TButton.Create(gpnl_inapp);
        InAppBtn[i].Parent := gpnl_inapp;
        InAppBtn[i].Align := alClient;
        SubItem := TStringList.Create;
        ExtractStrings([','],[' '],PChar(InAppList.Strings[i]),SubItem);
        InAppBtn[i].Caption := SubItem.Strings[1];
        gpnl_inapp.ColumnCollection[i].Value := Length(SubItem.Strings[1])*40;
        InAppBtn[i].Width := Length(SubItem.Strings[1])*40;
        InAppBtn[i].Name := StringReplace(SubItem.Strings[0],'.','_',[rfReplaceall]);
        FreeAndNil(SubItem);
        InAppBtn[i].Tag := i;
        InAppBtn[i].OnClick := InAppBtnClick;
        InAppBtn[i].Visible := True;
        InAppBtn[i].WordWrap := True;
        scrlbx_wid := scrlbx_wid + InAppBtn[i].Width;
      end;
      scrlbx_inapp.width := scrlbx_wid + 10;
    end else
    begin
      Showmessage('설정&등록 탭에서 InApp을 등록하신 후 사용하세요.');
      pc_body.ActivePage := ts_balmoon;
    end;
  end;
end;

procedure Tfm_mainteacher.pc_configChange(Sender: TObject);
var
  url : String;
  urlList, VideoRoomUrl : TStringList;
  i: Integer;
begin
  if pc_config.ActivePage = ts_makeList then
  begin
    ShowNHidePanel(pnl_MakeList, pnl_script);
  end;

  if pc_config.ActivePage = ts_dataregist then
  begin
    dt_materialsName.Width := (gpnl_regist.Width div 10) * 3;
    dt_materialsComment.Width := (gpnl_regist.Width div 10) * 7;
    btn_materialsregist.Width := (gpnl_regist.Width div 10) * 2 - 40
  end;

  if pc_config.ActivePage = ts_videourl then
  begin
    sg_videourl.ColWidths[0] := pnl_urlgrade.Width-3;
    sg_videourl.ColWidths[1] := pnl_url.Width-23;

    lb_VideoRoom.Items.Clear;
    If FileExists('VideoRoom.txt') then
    begin
      VideoRoomUrl := TStringList.Create;
      VideoRoomUrl.LoadFromFile('VideoRoom.txt');
      for i := 0 to VideoRoomUrl.Count - 1 do
      begin
        lb_VideoRoom.Items.Add(VideoRoomUrl.Strings[i]);
      end;
      FreeAndNil(VideoRoomUrl);
    end else Showmessage('VideoRoom.txt 파일이 없습니다. 확인하세요.');

    // 서버에서 화상강의실 자료를 다운받는 부분
    if not sqlcon_98.Connected then sqlcon_98.Connected := True;
    server := TServerMethods1Client.Create(sqlcon_98.DBXConnection);
    url := Server.online_urlloadTeacher;

    if sqlcon_98.Connected then sqlcon_98.Connected := False;
    FreeAndNil(Server);

    if url <> '' then
    begin
      UrlList := TStringList.Create;
      ExtractStrings(['|'],[' '],PChar(url),UrlList);
      sg_videourl.RowCount := (UrlList.Count + 2) div 3;
      for i := 0 to (UrlList.Count - 1) div 3 do
      begin
        VideoRoom.Values[UrlList.Strings[i*3] + UrlList.Strings[i*3+1]] := UrlList.Strings[i*3+2];
        TEdit(FindComponent('dt_'+UrlList.Strings[i*3]+UrlList.Strings[i*3+1])).Text := UrlList.Strings[i*3+2];
        if UrlList.Strings[i*3] = 'e' then
        begin
          sg_videourl.Cells[0,i] := '영어' +'-'+ UrlList.Strings[i*3+1]+'반';
          sg_videourl.Cells[1,i] := UrlList.Strings[i*3+2];
        end else
        begin
          sg_videourl.Cells[0,i] := UrlList.Strings[i*3]+'학년' +'-'+ UrlList.Strings[i*3+1]+'반';
          sg_videourl.Cells[1,i] := UrlList.Strings[i*3+2];
        end;
      end;
      FreeAndNil(UrlList);
    end;
  end;
end;

procedure Tfm_mainteacher.pc_teacherChange(Sender: TObject);
begin
  if pc_teacher.ActivePage = tab_ClassHomeT then
  begin
    WebClassHomeT.Navigate(ClassHome.Values[tgrade+tban]);
  end;
end;

procedure Tfm_mainteacher.pnl_imageDblClick(Sender: TObject);
begin
  Showmessage('더블클릭했네요.');
end;

procedure Tfm_mainteacher.pnl_timerClick(Sender: TObject);
begin
  Timer.Enabled := False;
//  pnl_timer.Caption := '남은 시간 - '+format('%0.2d:%0.2d', [00, 00]);
end;

procedure Tfm_mainteacher.pnl_videoDblClick(Sender: TObject);
begin
  Showmessage('더블클릭했네요.');
end;

procedure Tfm_mainteacher.pnl_wordMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Sender is TPanel then
  begin
    ReleaseCapture();
    TPanel(Sender).Perform(WM_SYSCOMMAND,$F012,0);
  end;
end;

procedure Tfm_mainteacher.pnl_wordMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Grab := false;
end;

procedure Tfm_mainteacher.PreviewDataBtnClick(Sender: TObject);
var
  Data, AppName : TStringList;
  i, id: Integer;
  path : String;
  fNamePr, fName : WideString;
begin
  if FAppWnd <> 0 then
  begin
    PostMessage(FAppWnd, WM_Close, 0, 0);
    FAppWnd := 0;
  end;

  Path := ExtractFilePath(ParamStr(0));
  Data := TStringList.Create;
  AppName := TStringList.Create;
  ExtractStrings(['|'],[' '],PChar(DataStr.Strings[TButton(Sender).Tag]), Data);

  if Data.Strings[0] = 'video' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pvideo);

    fNamePr := 'file:///';
    fName := Path + Data.Strings[2];
    fName := StringReplace(fName, '/','\\',[rfReplaceAll]);
    fName := fNamePr + fName;

//    id := VLCPlugin22.playlist.add(PChar(fName),null,null);
//    VLCPlugin22.playlist.playItem(id);
    DataStatus := 'video';
  end;

  if Data.Strings[0] = 'youtube' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pvideo);

//    id := VLCPlugin22.playlist.add(PChar(Data.Strings[2]),null,null);
//    VLCPlugin22.playlist.playItem(id);
    DataStatus := 'youtube';
  end;

  if Data.Strings[0] = 'ppt' then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+Data.Strings[2]),nil,SW_SHOW);
      App_Fixed(ppt, pnl_view);
      ExcuteClass := 'ppt';
    end else Showmessage('파워포인트 뷰어의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if Data.Strings[0] = 'pdf' then
  begin
    if ViewAppList.Values[Data.Strings[0]] <> '' then
    begin
      ExtractStrings(['|'],[' '],Pchar(ViewAppList.Values[Data.Strings[0]]),AppName);
      ShellExecute(handle, 'open',PWideChar(AppName.Strings[2]),PWideChar(Path+Data.Strings[2]),nil,SW_SHOW);
      App_Fixed(pdf, pnl_view);
      ExcuteClass := 'pdf';
    end else Showmessage('아크로벳 리더의 설치 경로를 설정&등록-앱설정에 등록하신 후 사용하세요.');
  end;

  if Data.Strings[0] = 'image' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_pimage);

    ImgEnV_preview.IO.LoadFromFile(Path+Data.Strings[2]);
    ExcuteClass := 'image';
    DataStatus := 'image';
  end;

  if Data.Strings[0] = 'web' then
  begin
    ShowNHidePanel(pnl_PreView, pnl_rweb);

    Web_preview.Navigate(Data.Strings[2]);
    if cbb_url.Items.IndexOf(Data.Strings[2]) = -1 then
      cbb_url.Items.Add(Data.Strings[2]);
    ExcuteClass := 'web';
    DataStatus := 'web';
  end;

  FreeAndNil(Data);
  FreeAndNil(AppName);
end;

procedure Tfm_mainteacher.proc_choice(OrderIndex: Integer);
var
//  Choice: TStringList;
  choicenum: Integer;
  cho1,cho2,cho3,cho4,cho5 : Integer;
  Choicename: string;
  Local_i: Integer;
  Local_i1: Integer;
  Local_i2: Integer;
begin
  tab_word.TabVisible := True;
  pc_response.ActivePage := tab_choice;

  cho1 := 0;
  cho2 := 0;
  cho3 := 0;
  cho4 := 0;
  cho5 := 0;

  lbl_choicename_1.Caption := '';
  lbl_choicename_2.Caption := '';
  lbl_choicename_3.Caption := '';
  lbl_choicename_4.Caption := '';
  lbl_choicename_5.Caption := '';

  pnl_choicenum_1.Caption := '';
  pnl_choicenum_2.Caption := '';
  pnl_choicenum_3.Caption := '';
  pnl_choicenum_4.Caption := '';
  pnl_choicenum_5.Caption := '';

  for Local_i2 := 1 to (Response[OrderIndex].Count - 1) div 2 do
  begin
    case StrToInt(Copy(Response[OrderIndex].Strings[Local_i2 * 2], 1, 1)) of
      0:
        begin
          cho1 := cho1 + 1;
          lbl_choicename_1.Caption := lbl_choicename_1.Caption + Response[OrderIndex].Strings[Local_i2 * 2 - 1] + ', ';
        end;
      1:
        begin
          cho2 := cho2 + 1;
          lbl_choicename_2.Caption := lbl_choicename_2.Caption + Response[OrderIndex].Strings[Local_i2 * 2 - 1] + ', ';
        end;
      2:
        begin
          cho3 := cho3 + 1;
          lbl_choicename_3.Caption := lbl_choicename_3.Caption + Response[OrderIndex].Strings[Local_i2 * 2 - 1] + ', ';
        end;
      3:
        begin
          cho4 := cho4 + 1;
          lbl_choicename_4.Caption := lbl_choicename_4.Caption + Response[OrderIndex].Strings[Local_i2 * 2 - 1] + ', ';
        end;
      4:
        begin
          cho5 := cho5 + 1;
          lbl_choicename_5.Caption := lbl_choicename_5.Caption + Response[OrderIndex].Strings[Local_i2 * 2 - 1] + ', ';
        end;
    end;
  end;
  pnl_choicenum_1.Caption := IntToStr(cho1);
  pnl_choicenum_2.Caption := IntToStr(cho2);
  pnl_choicenum_3.Caption := IntToStr(cho3);
  pnl_choicenum_4.Caption := IntToStr(cho4);
  pnl_choicenum_5.Caption := IntToStr(cho5);
end;

procedure Tfm_mainteacher.proc_conviction(OrderIndex: Integer);
var
  cho1: Integer;
  cho2: Integer;
  cho3: Integer;
  cho4: Integer;
  cho5: Integer;
  cho6: Integer;
  Local_i: Integer;
begin

  Tab_Conviction.tabVisible := True;
  pc_Response.ActivePage := Tab_Conviction;

  lbl_convic1.Caption := '';
  lbl_convic2.Caption := '';
  lbl_convic3.Caption := '';
  lbl_convic4.Caption := '';
  lbl_convic5.Caption := '';
  lbl_convic6.Caption := '';

  cho1 := 0;
  cho2 := 0;
  cho3 := 0;
  cho4 := 0;
  cho5 := 0;
  cho6 := 0;
  for Local_i := 1 to (Response[OrderIndex].Count - 1) div 2 do
  begin
    case StrToInt(Response[OrderIndex].Strings[Local_i * 2]) of
      0:
        begin
          cho1 := cho1 + 1;
          lbl_convic1.Caption := lbl_convic1.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
      1:
        begin
          cho2 := cho2 + 1;
          lbl_convic2.Caption := lbl_convic2.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
      2:
        begin
          cho3 := cho3 + 1;
          lbl_convic3.Caption := lbl_convic3.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
      3:
        begin
          cho4 := cho4 + 1;
          lbl_convic4.Caption := lbl_convic4.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
      4:
        begin
          cho5 := cho5 + 1;
          lbl_convic5.Caption := lbl_convic5.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
      5:
        begin
          cho6 := cho6 + 1;
          lbl_convic6.Caption := lbl_convic6.Caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
        end;
    end;
  end;
  if cho1 <> 0 then
    lbl_convic1.Caption := lbl_convic1.Caption + '- ' + IntToStr(cho1) + '명';
  if cho2 <> 0 then
    lbl_convic2.Caption := lbl_convic2.Caption + '- ' + IntToStr(cho2) + '명';
  if cho3 <> 0 then
    lbl_convic3.Caption := lbl_convic3.Caption + '- ' + IntToStr(cho3) + '명';
  if cho4 <> 0 then
    lbl_convic4.Caption := lbl_convic4.Caption + '- ' + IntToStr(cho4) + '명';
  if cho5 <> 0 then
    lbl_convic5.Caption := lbl_convic5.Caption + '- ' + IntToStr(cho5) + '명';
  if cho6 <> 0 then
    lbl_convic6.Caption := lbl_convic6.Caption + '- ' + IntToStr(cho6) + '명';
end;

procedure Tfm_mainteacher.proc_oxtype(OrderIndex: Integer);
var
  o: Integer;
  x: Integer;
  Local_i: Integer;
begin
  tab_ox.TabVisible := True;
  pc_response.ActivePage := tab_ox;

  o := 0;
  x := 0;
  lbl_ox_o_name.caption := '';
  lbl_ox_x_name.caption := '';

  for Local_i := 1 to (Response[OrderIndex].Count - 1) div 2 do
  begin
    if Response[OrderIndex].Strings[Local_i * 2] = 'O' then
    begin
      o := o + 1;
      lbl_ox_o_name.caption := lbl_ox_o_name.caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
    end
    else
    begin
      x := x + 1;
      lbl_ox_x_name.caption := lbl_ox_x_name.caption + Response[OrderIndex].Strings[Local_i * 2 - 1] + ', ';
    end;
  end;
  pnl_ox_o_num.caption := '찬성(O) : ' + IntToStr(o);
  pnl_ox_x_num.caption := '반대(X) : ' + IntToStr(x);
end;

procedure Tfm_mainteacher.proc_sentence(OrderIndex: Integer);
var
  I : integer;
  Btn : TButton;
  NameLabel : TLabel;
begin
  tab_word.TabVisible := True;
  pc_response.ActivePage := tab_Sentence;

  for i := 0 to 99 do
  begin
    if FindComponent('sentence'+i.ToString) is TPanel then
    begin
     TPanel(Findcomponent('sentence'+i.ToString)).Free;
    end;
  end;
    for I := 0 to (Response[OrderIndex].Count-2) div 2 do
    begin
//      if (Response[TListBox(OrderIndex).ItemIndex+1].Count <> 1) and
//         (((Response[TListBox(OrderIndex).ItemIndex+1].Count-1) div 2) = i) then exit;

      PnlArray[I] := TPanel.Create(self);
      PnlArray[I].Parent := pnl_sentence;
      PnlArray[I].OnMouseDown := pnl_wordMouseDown;
      PnlArray[I].OnMouseUp := pnl_wordMouseUp;
      PnlArray[I].Width := pnl_width;
      PnlArray[I].Height := pnl_height;
      PnlArray[I].Color := clWhite;
      PnlArray[I].BevelInner := bvLowered;
      PnlArray[I].Name := 'sentence' + I.ToString;
      PnlArray[I].Left := (i mod 2) * pnl_width;
      PnlArray[I].Top := (i div 2) * pnl_height;
      PnlArray[I].Font.Size := 18;
//      PnlArray[I].Font.Style := 0;
      PnlArray[I].Caption := Response[OrderIndex].Strings[i*2+2];

      Btn := TButton.Create(self);
      Btn.Parent := PnlArray[I];
      Btn.Caption := 'x';
      Btn.Width := 32;
      Btn.Height := 32;
      Btn.Align := TAlign.alNone;
      Btn.Left := Pnl_Width - Btn.Width;
      Btn.Top := Pnl_height - Btn.Height;
      Btn.OnClick := BtnOnClick;

      NameLabel := TLabel.Create(self);
      NameLabel.Parent := PnlArray[i];
      NameLabel.Align := TAlign.alBottom;
      NameLabel.Height := 24;
      NameLabel.Name := 'anoun'+i.ToString;
      NameLabel.Caption := '';
      NameLabel.Font.Color := clBlue;
      NameLabel.Font.Size := 12;
      NameLabel.WordWrap := True;
      NameLabel.Tag := 0;
//      PnlArray[I].AddObject(Btn);
    end;
end;

procedure Tfm_mainteacher.proc_word(OrderIndex: Integer);
var
  I : integer;
  Btn : TButton;
  NameLabel : TLabel;
begin
  tab_word.TabVisible := True;
  pc_response.ActivePage := tab_word;

  for i := 0 to 99 do
  begin
    if FindComponent('word'+i.ToString) is TPanel then
    begin
     TPanel(Findcomponent('word'+i.ToString)).Free;
    end;
  end;

  if Response[OrderIndex].Count > 1 then
  begin

    for I := 0 to (Response[OrderIndex].Count-2) div 2 do
    begin
//      if (Response[TListBox(OrderIndex).ItemIndex+1].Count <> 1) and
//         (((Response[TListBox(OrderIndex).ItemIndex+1].Count-1) div 2) = i) then exit;

      PnlArray[I] := TPanel.Create(self);
      PnlArray[I].Parent := pnl_word;
      PnlArray[I].OnMouseDown := pnl_wordMouseDown;
      PnlArray[I].OnMouseUp := pnl_wordMouseUp;
      PnlArray[I].Width := pnl_width;
      PnlArray[I].Height := pnl_height;
      PnlArray[I].Color := clWhite;
      PnlArray[I].BevelInner := bvLowered;
      PnlArray[I].Name := 'word' + I.ToString;
      PnlArray[I].Left := (i mod 4) * pnl_width;
      PnlArray[I].Top := (i div 4) * pnl_height;
      PnlArray[I].Font.Size := 24;
//      PnlArray[I].Font.Style := 0;
      PnlArray[I].Caption := Response[OrderIndex].Strings[i*2+2];

      Btn := TButton.Create(self);
      Btn.Parent := PnlArray[I];
      Btn.Caption := 'x';
      Btn.Width := 32;
      Btn.Height := 32;
      Btn.Align := TAlign.alNone;
      Btn.Left := Pnl_Width - Btn.Width;
      Btn.Top := Pnl_height - Btn.Height;
      Btn.OnClick := BtnOnClick;

      NameLabel := TLabel.Create(self);
      NameLabel.Parent := PnlArray[i];
      NameLabel.Align := TAlign.alBottom;
      NameLabel.Height := 24;
      NameLabel.Name := 'balpo'+i.ToString;
      NameLabel.Caption := '';
      NameLabel.Font.Color := clBlue;
      NameLabel.Font.Size := 12;
      NameLabel.WordWrap := True;
      NameLabel.Tag := 0;
//      PnlArray[I].AddObject(Btn);
    end;
  end else Showmessage('아직 학생들의 응답이 없습니다.');
end;

procedure Tfm_mainteacher.QueueMsg(s: string);
var
  Share,Str : String;
  TCompo : TComponent;
  Choice, CompleteStr : TStringList;
begin
  Share := '';
  TThread.Queue(nil,
    procedure
    var
      ServerStr : TStringList;
      i : integer;
    begin
      ServerStr := TStringList.Create;
      S := StringReplace(s,'"','',[rfReplaceall]);

      ServerStr := TStringList.Create;
      ExtractStrings(['|'],[' '], PChar(S),ServerStr);

      case ServerStr.Count of
      2 : begin
            gongu := ServerStr.Strings[1];            //응답 유형
          end;
      3 : begin
            part := ServerStr.Strings[0]; //교사의 콜백ID
            sndname := ServerStr.Strings[1];            //송신자 이름
            chat := ServerStr.Strings[2];
          end;
      end;

      if Pos('cooperationStudent',s) <> 0 then
      begin
        Choice := TStringList.Create;
        ExtractStrings(['|'],[' '],PChar(s), Choice);
        pc_body.ActivePage := ts_cooperation;
        Str := Copy(s,Pos('|{',s)+1, length(s));

        Ierdt_cooperation.Lines.Clear;
        IErdt_cooperation.RTFText := Str;

        lb_CoopList.Items.Add(Choice.Strings[1]+'-'+formatDateTime('hh:nn:ss',Now));
        CoopList.Add(Str);
        FreeAndNil(Choice);
      end;

      if Pos('removeword',s) <> 0 then
      begin
//        Showmessage(ServerStr.Strings[1] + ServerStr.Strings[2] + ServerStr.Strings[3]);
        for i := 0 to pnl_word.ControlCount - 1 do
        begin
          if Pos(ServerStr.Strings[3],TPanel(pnl_word.Controls[i]).Caption) <> 0 then
          begin
            TCompo := FindComponent('balpo'+i.ToString);
            if TCompo is TLabel then
              TLabel(TCompo).Caption := TLabel(TCompo).Caption + ServerStr.Strings[1] + ', ';

            TLabel(TCompo).Tag := TLabel(TCompo).Tag + 1;
            TPanel(pnl_word.Controls[i]).Caption := ServerStr.Strings[3] + ' - ' + TLabel(TCompo).Tag.ToString +'명'
//            ExtractStrings(['-'],[' '],PChar(), RemoveOne);
          end;
        end;
      end;

      if Pos('removesenten',s) <> 0 then
      begin
//        Showmessage(ServerStr.Strings[1] + ServerStr.Strings[2] + ServerStr.Strings[3]);
        for i := 0 to pnl_sentence.ControlCount - 1 do
        begin
          if Pos(ServerStr.Strings[3],TPanel(pnl_sentence.Controls[i]).Caption) <> 0 then
          begin
            TCompo := FindComponent('anoun'+i.ToString);
            if TCompo is TLabel then
              TLabel(TCompo).Caption := TLabel(TCompo).Caption + ServerStr.Strings[1] + ', ';

            TLabel(TCompo).Tag := TLabel(TCompo).Tag + 1;
            TPanel(pnl_sentence.Controls[i]).Caption := ServerStr.Strings[3] + ' - ' + TLabel(TCompo).Tag.ToString +'명'
//            ExtractStrings(['-'],[' '],PChar(), RemoveOne);
          end;
        end;
      end;

      if Pos('discuss',s) <> 0 then
      begin
//        Choice := TStringList.Create;
//        ExtractStrings(['|'],[' '],PChar(s),Choice);
        if ServerStr.Strings[1] = '찬성' then
        begin
          discuss.Add(ServerStr.Strings[1] + '|' + ServerStr.Strings[2] + '|' + ServerStr.Strings[3]);
          mm_chan.Lines.Add('('+ServerStr.Strings[2] + ') ' + ServerStr.Strings[3]);
          mm_chan.Lines.Add('');
          ResPonse[Balmoonnum].Add(ServerStr.Strings[1]);
          ResPonse[Balmoonnum].Add(ServerStr.Strings[2]);
          ResPonse[Balmoonnum].Add(ServerStr.Strings[3]);
        end else
        begin
          discuss.Add(ServerStr.Strings[2] + '|' + ServerStr.Strings[3]);
          mm_ban.Lines.Add('('+ServerStr.Strings[2] + ') ' + ServerStr.Strings[3]);
          mm_ban.Lines.Add('');
          ResPonse[Balmoonnum].Add(ServerStr.Strings[1]);
          ResPonse[Balmoonnum].Add(ServerStr.Strings[2]);
          ResPonse[Balmoonnum].Add(ServerStr.Strings[3]);
        end;
      end;

      if (ServerStr.Strings[0] = 'videostudyattendance') then
      begin
//        Attendance.Add(ServerStr.Strings[1]);
          StrGrid_Atdcheck(sg_attendance, ServerStr.Strings[1]);
      end;

      if (ServerStr.Strings[0] = 'chatstudyattendance') then
      begin
        Attendance.Add(ServerStr.Strings[1]);
      end;

      if (ServerStr.Strings[0] = 'response') then
      begin
        if (ResPonse[Balmoonnum].Strings[0] = '파상형') then wave_print(ServerStr.Strings[3]);
        mm_senderlist.Text := mm_SenderList.Text + ServerStr.Strings[1] + ', ';
        ResPonse[Balmoonnum].Add(ServerStr.Strings[1]);
        ResPonse[Balmoonnum].Add(ServerStr.Strings[3]);
      end;

      if ServerStr.Strings[0] = 'question' then
      begin
        question.Add(ServerStr.Strings[1]);
        question.Add(ServerStr.Strings[3]);
//        btn_questionview.text := '질문보기-'+IntToStr(question.Count div 2)+'개';
      end;
      ServerStr.Free;

        if Pos('schat',s) <> 0 then
        begin
          mm_chat.Lines.Add(SndName + '> ' + Chat);
          mm_chat.Lines.Add('');
        end;

        if Pos('tchat',s) <> 0 then
        begin
          mm_chat.Lines.Add('선생님> ' + Chat);
          mm_chat.Lines.Add('');
        end;

    end
    );
end;

procedure Tfm_mainteacher.RadioButton11Click(Sender: TObject);
begin
  flip_dir := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.RadioButton13Click(Sender: TObject);
begin
  Rotate_type := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.RadioButton15Click(Sender: TObject);
begin
    Rotate_Dir := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.RadioButton1Click(Sender: TObject);
begin
    Resize_Type := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.RadioButton2Click(Sender: TObject);
begin
    Resize_su := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.RadioButton9Click(Sender: TObject);
begin
  Flip_type := TRadioButton(Sender).Tag;
end;

procedure Tfm_mainteacher.rbtn_response0Click(Sender: TObject);
begin
  if Sender is TRadioButton then
     responsetype := TRadioButton(Sender).Tag;

  case responsetype of
  1 : begin
        pnl_opt.Visible := True;
        pnl_dapjititle.Caption := '답지';
        gpnl_letter.Visible := False;
        pnl_numletter.Visible := False;
        cb_numletter.Checked := False;
        cb_numletter.Visible := False;
      end;
  2, 3 : begin
            gpnl_letter.Visible := True;
            cb_numletter.Visible := True;
            pnl_opt.Visible := False;
         end;

  5 : begin
        pnl_opt.Visible := True;
        pnl_dapjititle.Caption := '주제';
        gpnl_letter.Visible := False;
        pnl_numletter.Visible := False;
        cb_numletter.Checked := False;
        cb_numletter.Visible := False;
      end

  Else begin
         pnl_opt.Visible := False;
         gpnl_letter.Visible := False;
         pnl_numletter.Visible := False;
         cb_numletter.Checked := False;
         cb_numletter.Visible := False;
       end;
  end;
  btn_order.Enabled := True;
end;

procedure Tfm_mainteacher.sg_attendanceDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
 vSize: TSize;
begin
   with TStringGrid(Sender).Canvas do
   begin
     vSize:=TextExtent(TStringGrid(Sender).Cells[ACol,ARow]);
     TextRect( Rect,Rect.Left+ Round((Rect.Right - Rect.Left - vSize.cx)/2), Rect.Top + Round((Rect.Bottom-Rect.Top-vSize.cy)/2), TStringGrid( Sender ).Cells[ACol, ARow ]);
   end;
//  TStringGrid(Sender).SetFocus;
//  s_cell := TStringGrid(Sender).Cells[ACol, ARow];
////  i_pos := Pos(CONST_FIND, s_cell);
//  if i_pos > 0 then
//  begin
//    TStringGrid(Sender).Canvas.FillRect(rect);
//
//    s_temp := Copy(s_cell, 1, i_pos - 1);
//    TStringGrid(Sender).Canvas.Font.Color := clBlack;
//    TStringGrid(Sender).Canvas.TextOut(rect.Left, rect.Top, s_temp);
//
//    i_width := TStringGrid(Sender).Canvas.TextWidth(s_temp);
//    s_temp := Copy(s_cell, i_pos, Length(s_cell) - i_pos + 1);
//    TStringGrid(Sender).Canvas.Font.Color := clRed;
//    TStringGrid(Sender).Canvas.TextOut(rect.Left + i_width, rect.Top, s_temp);
//  end;
end;

procedure Tfm_mainteacher.sg_videourlDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if source = lb_VideoRoom then
  begin
    if lb_VideoRoom.Selected[lb_VideoRoom.ItemIndex] then
      sg_videourl.Cells[1,sg_videourl.Row] := lb_VideoRoom.Items.Strings[lb_VideoRoom.ItemIndex];

    btn_save.Enabled := True;
  end;
end;

procedure Tfm_mainteacher.sg_videourlDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListBox);
end;

procedure Tfm_mainteacher.ShowNHidePanel(ParentPanel: TPanel; ShowPanel: TPanel);
var
  i: Integer;
begin
  if (DataStatus = 'video') or (DataStatus = 'youtube' )  then
  begin
    VLCPlugin21.playlist.stop;
    VLCPlugin21.playlist.clear;
    VLCPlugin22.playlist.stop;
    VLCPlugin22.playlist.clear;
  end;

  for i := 0 to TPanel(ParentPanel).ControlCount - 1 do
    if TPanel(ParentPanel).Controls[i] is TPanel then
    begin
      TPanel(ParentPanel).Controls[i].Visible := False;
      TPanel(ParentPanel).Controls[i].Align := alNone;
    end;
  TPanel(ShowPanel).Visible := True;
  TPanel(ShowPanel).Align := alClient;
end;

procedure Tfm_mainteacher.spinbtnDownClick(Sender: TObject);
begin
  if StrToInt(dt_numletter.Text) > 0 then
    dt_numletter.Text := IntToStr(StrToInt(dt_numletter.Text) - 1);
end;

procedure Tfm_mainteacher.spinbtnUpClick(Sender: TObject);
begin
  if StrToInt(dt_numletter.Text) < 40 then
    dt_numletter.Text := IntToStr(StrToInt(dt_numletter.Text) + 1);
end;

procedure Tfm_mainteacher.Splitter2CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  ScrlBox.Width := NewSize;
  scrlBox.Height := (DataStr.Count div 3) * 60 + 4;
end;

function Tfm_mainteacher.StopProcess(ExeFilename: String): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName)))
    then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure Tfm_mainteacher.timeronoff(onoff: Boolean);
begin
  if onoff then
  begin
//    pnl_timer.Visible := True;
//    btn_half.Visible := True;
//    btn_one.Visible := True;
//    btn_three.Visible := True;
  end else
  begin
//    pnl_timer.Visible := False;
//    btn_half.Visible := False;
//    btn_one.Visible := False;
//    btn_three.Visible := False;
  end;
end;

procedure Tfm_mainteacher.TimerTimer(Sender: TObject);
begin
  if Total_Time <> 0 then
  begin
    Total_Time := Total_Time - 1;
//    pnl_timer.Caption := '남은 시간 - '+format('%0.2d:%0.2d', [Total_Time div 60, Total_Time mod 60]);
    if Total_Time < 5 then Beep;
  end else
  begin
    Timer.Enabled := False;
    TimerOnOff(False);
  end;
end;

procedure Tfm_mainteacher.wave_print(wave: string);
begin
  TLabel(FindComponent('wave'+IntToStr(wave_pos))).Caption := wave;
  Wave_pos := Wave_Pos + 1;
end;

procedure Tfm_mainteacher.Web_viewCommandStateChange(ASender: TObject;
  Command: Integer; Enable: WordBool);
begin
  case DWORD(Command) of
  CSC_NAVIGATEBACK : btn_back.Enabled := Enable;
  CSC_NAVIGATEFORWARD : btn_forward.Enabled := Enable;
  // CSC_UPDATECOMMANDS : StopButton.Enabled := TWebBrowser(Sender).Busy;
end;
end;

procedure Tfm_mainteacher.Web_viewDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin

end;

{ TMyCallBack }

function TMyCallBack.Execute(const Arg: TJSONValue): TJSONValue;
begin
  fm_mainteacher.QueueMsg(Arg.ToString);

  result := TJSonTrue.Create;
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
