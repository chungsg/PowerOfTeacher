unit u_swquizmain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieview, imageenview, Vcl.OleCtrls, AXVLC_TLB, ieopensavedlg;

type
  Tfm_inapp = class(TForm)
    pc_quizmain: TPageControl;
    ts_main: TTabSheet;
    ts_make: TTabSheet;
    ts_solve: TTabSheet;
    ts_control: TTabSheet;
    ts_result: TTabSheet;
    gpnl_makequiz: TGridPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    cbb_grade: TComboBox;
    cbb_term: TComboBox;
    cbb_lesson: TComboBox;
    cbb_unit: TComboBox;
    cbb_time: TComboBox;
    Panel3: TPanel;
    pc_exam: TPageControl;
    ts_ox: TTabSheet;
    ts_choice: TTabSheet;
    ts_short: TTabSheet;
    rdb_ox: TRadioButton;
    rdb_choice: TRadioButton;
    rdb_short: TRadioButton;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Memo1: TMemo;
    Panel7: TPanel;
    ImageEnView1: TImageEnView;
    VLCPlugin21: TVLCPlugin2;
    Panel8: TPanel;
    Edit2: TEdit;
    btn_MediaAdd: TButton;
    ts_media: TTabSheet;
    GridPanel4: TGridPanel;
    pnl_view: TPanel;
    ImageEnView2: TImageEnView;
    VLCPlugin22: TVLCPlugin2;
    Panel9: TPanel;
    Panel10: TPanel;
    cbb_media: TComboBox;
    dt_searchword: TEdit;
    btn_search: TButton;
    lb_result: TListBox;
    Panel11: TPanel;
    Panel12: TPanel;
    Button1: TButton;
    OImgDlg: TOpenImageEnDialog;
    procedure FormShow(Sender: TObject);
    procedure cbb_gradeChange(Sender: TObject);
    procedure cbb_termChange(Sender: TObject);
    procedure cbb_lessonDropDown(Sender: TObject);
    procedure cbb_lessonChange(Sender: TObject);
    procedure cbb_unitChange(Sender: TObject);
    procedure rdb_oxClick(Sender: TObject);
    procedure btn_MediaAddClick(Sender: TObject);
    procedure cbb_mediaCloseUp(Sender: TObject);
    procedure dt_searchwordChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LessonNameAdd(gradeterm: String);
    procedure AdjustDropDownWidth(ExpandCont : TComponent);
    procedure PageShowNHide(MaMi: TPageControl; ActivePage: TTabSheet);
  public
    { Public declarations }
    procedure FindImgFile(Sender: TObject);
    procedure FindImgFileNo(Sender: TObject);
  end;

var
  fm_inapp: Tfm_inapp;
  lessonname : TStringList;

implementation

{$R *.dfm}

procedure Tfm_inapp.AdjustDropDownWidth(ExpandCont : TComponent);
var
  i, ItemWidth: Integer;
begin
   ItemWidth := 0;
   // 최대 pixel수를 구한다
   for i := 0 to TComboBox(ExpandCont).Items.Count - 1 do
       if Canvas.TextWidth(TComboBox(ExpandCont).Items[i]) > ItemWidth then
           ItemWidth := Canvas.TextWidth(TComboBox(ExpandCont).Items[i]) + 20;

     // TComboBox 의 drop-down list 의 width를 변경하는 것은 단지
     // pixel를 파라미터로 하여 CB_SETDROPPEDWIDTH 메시지를
     // TComboBox 보내면 된다
     SendMessage(TComboBox(ExpandCont).Handle,CB_SETDROPPEDWIDTH,ItemWidth, 0);
end;

procedure Tfm_inapp.btn_MediaAddClick(Sender: TObject);
begin
  PageShowNHide(pc_quizmain, ts_media);
end;

procedure Tfm_inapp.Button1Click(Sender: TObject);
begin
  PageShowNHide(pc_quizmain, ts_make);
end;

procedure Tfm_inapp.cbb_gradeChange(Sender: TObject);
begin
  case cbb_grade.ItemIndex of
  0 : begin
        cbb_term.Visible := False;
        cbb_term.Visible := False;
        cbb_lesson.Visible := False;
        cbb_unit.Visible := False;
        cbb_time.Visible := False;
      end;
  else
      cbb_term.Visible := True;
  end;

//  if (cbb_grade.ItemIndex = 1) and (cbb_grade.ItemIndex <> -1) then
//  begin
//    cbb_term.Visible := True;
//    cbb_term.SetFocus;
//  end
//  else
//  begin
//    cbb_term.Visible := False;
//    cbb_lesson.Visible := False;
//    cbb_unit.Visible := False;
//    cbb_time.Visible := False;
//  end;
end;

procedure Tfm_inapp.cbb_lessonChange(Sender: TObject);
begin
  if cbb_lesson.ItemIndex <> -1 then
    cbb_unit.Visible := True;
end;

procedure Tfm_inapp.cbb_lessonDropDown(Sender: TObject);
begin
  AdjustDropDownWidth(cbb_lesson);
end;

procedure Tfm_inapp.cbb_mediaCloseUp(Sender: TObject);
begin
  if (cbb_media.ItemIndex <> -1) and (dt_searchword.Text <> '') then
    btn_search.Enabled := True;
  if (cbb_media.ItemIndex = 2) then dt_searchword.OnClick := FindImgFile
  else  dt_searchword.OnClick := FindImgFileNo;
end;

procedure Tfm_inapp.cbb_termChange(Sender: TObject);
begin
  if cbb_term.ItemIndex <> -1 then
  begin
    cbb_lesson.Visible := True;
    LessonNameAdd(cbb_grade.ItemIndex.ToString+IntToStr(cbb_term.ItemIndex+1));
  end;
end;

procedure Tfm_inapp.cbb_unitChange(Sender: TObject);
begin
  if cbb_unit.ItemIndex <> -1 then
  begin
    cbb_time.Visible := True;
//    LessonNameAdd(cbb_grade.ItemIndex.ToString+IntToStr(cbb_term.ItemIndex+1));
  end;
end;

procedure Tfm_inapp.dt_searchwordChange(Sender: TObject);
begin
  if (cbb_media.ItemIndex <> -1) and (dt_searchword.Text <> '') then
    btn_search.Enabled := True
  else btn_search.Enabled := False;
end;

procedure Tfm_inapp.FindImgFile(Sender: TObject);
begin
  if oimgdlg.Execute then
    dt_searchword.Text := oimgdlg.FileName;
end;

procedure Tfm_inapp.FindImgFileNo(Sender: TObject);
begin
//
end;

procedure Tfm_inapp.FormShow(Sender: TObject);
begin
  pc_quizmain.ActivePage := ts_main;
  if FileExists('lessonname.ini') then
  begin
      lessonname := TStringList.Create;
      LessonName.LoadFromFile('lessonname.ini');
  end else Showmessage('교과파일이 없습니다.' );
end;

procedure Tfm_inapp.lessonNameAdd(gradeterm: String);
var
  Lesson : TStringList;
  I: Integer;
begin
  cbb_lesson.Items.Clear;
  Lesson := TStringList.Create;
  ExtractStrings([','],[' '],PChar(LessonName.Values[gradeterm]), Lesson);
  for I := 0 to Lesson.Count - 1 do
  begin
    cbb_lesson.Items.Add(Lesson.Strings[i]);
  end;
end;

procedure Tfm_inapp.PageShowNHide(MaMi: TPageControl; ActivePage: TTabSheet);
var
  i: Integer;
begin
  for i := 0 to MaMi.PageCount - 1 do
    MaMi.Pages[i].TabVisible := False;
  MaMi.ActivePage := ActivePage;
  TTabSheet(ActivePage).TabVisible := True;
end;

procedure Tfm_inapp.rdb_oxClick(Sender: TObject);
begin
  if TRadioButton(Sender).Checked then
  begin
    case TRadioButton(Sender).Tag of
    1 : begin
          PageShowNHide(pc_exam, ts_ox)
        end;
    2:  begin
          PageShowNHide(pc_exam, ts_choice)
        end;
    3:  begin
          PageShowNHide(pc_exam, ts_short)
        end;
    end;
  end;
end;

end.
