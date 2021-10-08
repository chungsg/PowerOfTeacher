unit u_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, hyiedefs, hyieutils, iexBitmaps,
  iesettings, iexLayers, iexRulers, iexToolbars, iexUserInteractions, imageenio,
  imageenproc, iemio, Vcl.ExtCtrls, Vcl.StdCtrls, iemview, iexFolderMView,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.Menus, ieview, imageenview, iexFolderTree,
  System.Actions, Vcl.ActnList, Winapi.ShellAPI;

type
  Tfm_main = class(TForm)
    IEOFD: TIEOpenFolderDialog;
    Panel2: TPanel;
    pm_imageenview: TPopupMenu;
    pm_RotateRight90: TMenuItem;
    pm_RotateRight180: TMenuItem;
    N1: TMenuItem;
    pm_RotateLeft90: TMenuItem;
    pm_RotateLeft180: TMenuItem;
    tmr_AutoMove: TTimer;
    tmr_AutoOpacity: TTimer;
    tmrUpdatePreview: TTimer;
    N2: TMenuItem;
    pm_Layerdel: TMenuItem;
    pm_DelAllLayer: TMenuItem;
    N3: TMenuItem;
    pm_hintwin: TMenuItem;
    pm_Opacity: TMenuItem;
    gp_body: TGridPanel;
    ImageEnView1: TImageEnView;
    pnl_Control: TPanel;
    page_main: TPageControl;
    ts_Image: TTabSheet;
    Panel4: TPanel;
    Panel1: TPanel;
    GridPanel4: TGridPanel;
    sBtn_ShowNHide: TSpeedButton;
    chk_preview: TCheckBox;
    pnl_rightmenu: TPanel;
    gp_rightmenu: TGridPanel;
    ActionList1: TActionList;
    actn_help: TAction;
    actn_turnright90: TAction;
    actn_turnright180: TAction;
    actn_turnleft90: TAction;
    actn_turnleft180: TAction;
    Btn_Menu: TButton;
    Btn_NextImage: TButton;
    Btn_Opacity: TButton;
    Btn_DelCurrentLayer: TButton;
    Btn_DelAllLayer: TButton;
    Btn_AutoHintWin: TButton;
    Btn_TurnRight90: TButton;
    Btn_TurnRight180: TButton;
    Btn_TurnLeft90: TButton;
    Btn_TurnLeft180: TButton;
    Button1: TButton;
    GridPanel5: TGridPanel;
    ImageEnFolderMView: TImageEnFolderMView;
    Btn_SelectFolder: TButton;
    btn_Manual: TButton;
    procedure sbtn_selectFolderClick(Sender: TObject);
    procedure chk_previewClick(Sender: TObject);
    procedure sBtn_ShowNHideClick(Sender: TObject);
    procedure page_mainChange(Sender: TObject);
    procedure ImageEnFolderMViewImageSelect(Sender: TObject; idx: Integer);
    procedure tmrUpdatePreviewTimer(Sender: TObject);
    procedure tmr_AutoMoveTimer(Sender: TObject);
    procedure tmr_AutoOpacityTimer(Sender: TObject);
    procedure pm_RotateRight90Click(Sender: TObject);
    procedure pm_RotateRight180Click(Sender: TObject);
    procedure pm_RotateLeft90Click(Sender: TObject);
    procedure pm_RotateLeft180Click(Sender: TObject);

    procedure ImageEnView1DrawLayer(Sender: TObject; Dest: TIEBitmap;
      LayerIndex: Integer);
    procedure ImageEnView1NoDrawLayer(Sender: TObject; Dest: TIEBitmap;
      LayerIndex: Integer);

    procedure ImageEnView1NewLayer(Sender: TObject; LayerIdx: Integer;
      LayerKind: TIELayerKind);
    procedure ImageEnView1NoNewLayer(Sender: TObject; LayerIdx: Integer;
      LayerKind: TIELayerKind);

    procedure FormShow(Sender: TObject);
    procedure sBtn_ManualClick(Sender: TObject);
    procedure pm_helpClick(Sender: TObject);
    procedure actn_helpExecute(Sender: TObject);
    procedure actn_turnright90Execute(Sender: TObject);
    procedure actn_turnright180Execute(Sender: TObject);
    procedure actn_turnleft90Execute(Sender: TObject);
    procedure actn_turnleft180Execute(Sender: TObject);
    procedure Btn_MenuClick(Sender: TObject);
    procedure Btn_NextImageClick(Sender: TObject);
    procedure Btn_OpacityClick(Sender: TObject);
    procedure Btn_DelCurrentLayerClick(Sender: TObject);
    procedure Btn_DelAllLayerClick(Sender: TObject);
    procedure Btn_AutoHintWinClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_SelectFolderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFile(Filename: string);
    procedure UpdateSelection();
  public
    { Public declarations }
  end;

var
  fm_main: Tfm_main;
  Opacity : Integer;
  tid, tname, tgrade, tban, tbunho, tiphak, tconnectip : String;

implementation

{$R *.dfm}

uses u_Manual;

procedure Tfm_main.actn_helpExecute(Sender: TObject);
begin
  fm_youtube.Show;
end;

procedure Tfm_main.actn_turnleft180Execute(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(180);
end;

procedure Tfm_main.actn_turnleft90Execute(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(90);
end;

procedure Tfm_main.actn_turnright180Execute(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(-180);
end;

procedure Tfm_main.actn_turnright90Execute(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(-90);
end;

procedure Tfm_main.Btn_AutoHintWinClick(Sender: TObject);
var
  selSz: Integer;
  posx, posy : Integer;

begin
  if ImageEnFolderMView.SelectedImage <> -1 then
  begin
    if Btn_AutoHintWin.Caption = '힌트창 자동' then
    begin
      ImageEnView1.LayersClear(False);
      selSz := imin( Round( ImageEnView1.IEBitmap.Width  * 0.25 ), Round( ImageEnView1.IEBitmap.Height  * 0.25 ));
      ImageEnView1.LayersAdd( ielkImage,
                            Round( ImageEnView1.IEBitmap.Width  * 0.40 ),
                            Round( ImageEnView1.IEBitmap.Height * 0.50 ),
                            selSz, selSz );
      tmr_AutoMove.Enabled := True;
      Btn_AutoHintWin.Caption := '힌트창 수동';
      pm_HintWin.Caption := '힌트창 수동';
      Btn_AutoHintWin.Caption := '힌트창 수동';
    end else
    begin
      tmr_AutoMove.Enabled := False;
      Btn_AutoHintWin.Caption := '힌트창 자동';
      pm_HintWin.Caption := '힌트창 자동';
      Btn_AutoHintWin.Caption := '힌트창 자동';

      ImageEnView1.LayersClear(False);
    end;
  end else Showmessage('상세 Menu에서 첫 Image를 선택하세요.');
end;

procedure Tfm_main.Btn_DelAllLayerClick(Sender: TObject);
begin
//ImageEnView1.IO.ExecuteOpenDialog('', '', false, 1, '');
  ImageEnView1.LayersClear(False);
end;

procedure Tfm_main.Btn_DelCurrentLayerClick(Sender: TObject);
begin
  if ImageEnView1.LayersCurrent > 0 then
    ImageEnView1.LayersRemove();
end;

procedure Tfm_main.Btn_MenuClick(Sender: TObject);
begin
  ImageEnView1.LayersClear(False);

    pnl_rightmenu.Visible := False;
    gp_body.ColumnCollection.Items[4].SizeStyle := ssAbsolute;
    gp_body.ColumnCollection.Items[4].Value := 0;

    pnl_Control.Visible := True;
    gp_body.RowCollection.Items[4].SizeStyle := ssAbsolute;
    gp_body.RowCollection.Items[4].Value := 220;
end;

procedure Tfm_main.Btn_NextImageClick(Sender: TObject);
var
  SelectImg : Integer;
begin
  if (ImageEnFolderMView.SelectedImage <> -1) then
  begin
    SelectImg := ImageEnFolderMView.SelectedImage;
    if (ImageEnFolderMView.ImageCount-1 = SelectImg) then
      ImageEnFolderMView.SelectedImage := 0 else ImageEnFolderMView.SelectedImage := SelectImg + 1;
    ImageEnView1.LayersClear(False);
//  Showmessage(ImageEnFolderMView.SelectedFilename);
    UpdateSelection();
  end else
    Showmessage('상세 Menu에서 첫 Image를 선택하세요.');
end;

procedure Tfm_main.Btn_OpacityClick(Sender: TObject);
begin
  ImageEnView1.LayersClear(False);
  if btn_Opacity.Tag = 0 then
  begin
    tmr_AutoOpacity.Tag := 0;
    tmr_AutoOpacity.Enabled := True;
    Btn_Opacity.Caption :=  'Image'+#13#10#13#10+'투명도 낮춤';
    btn_Opacity.Tag := 9;
  end else
  begin
    tmr_AutoOpacity.Tag := 9;
    tmr_AutoOpacity.Enabled := True;

    Btn_Opacity.Caption :=  'Image'+#13#10#13#10+'투명도 높임';
    btn_Opacity.Tag := 0;
  end;
end;

procedure Tfm_main.Btn_SelectFolderClick(Sender: TObject);
var
  Folder: String;
begin
  IEOFD.Folder := ExtractFilePath( Application.ExeName );
//  ImageEnFolderMView.PromptForFolder;
//  SelectDirectory('Your Caption','c:\;h:\;',Folder);
  if IEOFD.Execute then
  ImageEnFolderMView.Folder := IEOFD.Folder;
//  ImageEnFolderMView.Folder := ExtractFilePath(IEOFD.Folder);
end;

procedure Tfm_main.Button1Click(Sender: TObject);
begin
  if ImageEnFolderMView.SelectedImage <> -1 then
  begin
    ImageEnView1.IO.SaveToFile(ImageEnFolderMView.SelectedFilename);
  end;
end;

procedure Tfm_main.chk_previewClick(Sender: TObject);
begin
  if chk_preview.Checked then
  begin
    ImageEnView1.Layers[0].Opacity := 1;
    ImageEnView1.Update;
  end else
  begin
    ImageEnView1.Layers[0].Opacity := 0;
    ImageEnView1.Update;
  end;
end;


procedure Tfm_main.ImageEnFolderMViewImageSelect(Sender: TObject; idx: Integer);
begin
  UpdateSelection();

  if chk_preview.Checked then
  begin
    ImageEnView1.Layers[0].Opacity := 1;
    ImageEnView1.Update;
  end else
  begin
    ImageEnView1.Layers[0].Opacity := 0;
    ImageEnView1.Update;
  end;
end;

procedure Tfm_main.ImageEnView1DrawLayer(Sender: TObject; Dest: TIEBitmap;
  LayerIndex: Integer);
var
  scrX, scrY, scrX2, scrY2: integer; scrWidth, scrHeight: integer;
  lyr: TIELayer;
  isElliptical: Boolean;
begin
  if LayerIndex = 0 then
    exit;

//  isElliptical := chkElliptical.Enabled and chkElliptical.Checked;

  lyr := ImageEnView1.Layers[ LayerIndex ];

  scrX  := ImageEnView1.XBmp2Scr( lyr.PosX );
  scrY  := ImageEnView1.YBmp2Scr( lyr.PosY );
  scrX2 := ImageEnView1.XBmp2Scr( lyr.PosX + lyr.Width );
  scrY2 := ImageEnView1.YBmp2Scr( lyr.PosY + lyr.Height );
  scrWidth  := scrX2 - scrX;
  scrHeight := scrY2 - scrY;

  if ImageEnView1.Zoom <> 100 then
    // Render scaled image
    ImageEnView1.Layers[0].Bitmap.RenderToTIEBitmapEx( Dest,
                                                       scrX, scrY,
                                                       scrWidth, scrHeight,
                                                       lyr.PosX, lyr.PosY,
                                                       lyr.Width, lyr.Height,
                                                       False, 255, rfFastLinear )
  else
    // Quick mem copy
    ImageEnView1.Layers[0].Bitmap.CopyToEx( Dest,
                                            lyr.PosX, lyr.PosY,
                                            scrX, scrY,
                                            scrWidth, scrHeight,
                                            False, { CopyAlpha }
                                            iemmReplaceWithSrc,
                                            isElliptical );

  With Dest.IECanvas do
  begin
    Brush.Style := bsClear;

    Pen.Color := clNone_;
    Pen.Style := psSolid;
    Pen.Width := 1;

//    if isElliptical then
//      Ellipse( scrX, scrY, scrX2, scrY2 )
//    else
      Rectangle( scrX, scrY, scrX2, scrY2 );
  end;
end;

procedure Tfm_main.ImageEnView1NewLayer(Sender: TObject; LayerIdx: Integer;
  LayerKind: TIELayerKind);
begin
  if ( LayerIdx > 0 ) and ( LayerKind = ielkImage ) then
  begin
    // Make layers transparent
    // But of a valid size (so paint is called)
    ImageEnView1.Layers[ LayerIdx ].Bitmap.Allocate( 2, 2, clWhite, 0 );
  end;
end;

procedure Tfm_main.ImageEnView1NoDrawLayer(Sender: TObject; Dest: TIEBitmap;
  LayerIndex: Integer);
begin
//
end;

procedure Tfm_main.ImageEnView1NoNewLayer(Sender: TObject; LayerIdx: Integer;
  LayerKind: TIELayerKind);
begin
//
end;

procedure Tfm_main.LoadFile(Filename: string);
var
  selSz: Integer;
begin
  if Filename = '' then
    exit;

  ImageEnView1.LayersClear();

  // Zoom must be 100% because we are doing a straight memory copy when drawing

  ImageEnView1.Zoom := 100;

  ImageEnView1.IO.LoadFromFile( Filename );

//  ImageEnView1.Layers[0].Opacity := trkOpacity.Position / 100;
  ImageEnView1.Layers[0].Opacity := 1;
  ImageEnView1.Layers[0].Selectable := False;

//  selSz := imin( Round( ImageEnView1.IEBitmap.Width  * 0.10 ), Round( ImageEnView1.IEBitmap.Height  * 0.10 ));

//  ImageEnView1.LayersAdd( ielkImage,
//                          Round( ImageEnView1.IEBitmap.Width  * 0.40 ),
//                          Round( ImageEnView1.IEBitmap.Height * 0.50 ),
//                          selSz, selSz );
end;

procedure Tfm_main.page_mainChange(Sender: TObject);
var
  fName : String;
begin
//  if TPageControl(Sender).ActivePage = ts_Control then
//  begin
//    ImageEnView1.MouseInteractLayers := [ mlMoveLayers, mlResizeLayers, mlCreateImageLayers ];
//    ImageEnView1.OnDrawLayer := ImageEnView1DrawLayer;
//    ImageEnView1.OnNewLayer := ImageEnView1NewLayer;
//    ImageEnView1.Layers[0].Opacity := 0;
//    ImageEnView1.Layers[0].Selectable := False;
//
//    ImageEnView1.Update;
//    chk_preview.Visible := False;
//  end;

  if TPageControl(Sender).ActivePage = ts_Image then
  begin
    ImageEnView1.MouseInteractLayers := [];
    ImageEnView1.OnDrawLayer := ImageEnView1NoDrawLayer;
    ImageEnView1.OnNewLayer := ImageEnView1NoNewLayer;
    ImageEnView1.LayersClear;
//    ImageEnView1.Layers[0].Opacity := 1;
//    ImageEnView1.Layers[0].Selectable := False;
    fName := IncludeTrailingBackSlash( ExtractFilePath( Application.ExeName ))
             + 'whatsthis.png';
    if FileExists( fName ) then LoadFile( fName );
    ImageEnView1.Update;
    chk_preview.Visible := True;
    chk_preview.Checked := True;
  end;
end;

procedure Tfm_main.pm_helpClick(Sender: TObject);
begin
  fm_youtube.Show;
end;

procedure Tfm_main.pm_RotateLeft180Click(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(180);
end;

procedure Tfm_main.pm_RotateLeft90Click(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(90);
end;

procedure Tfm_main.pm_RotateRight180Click(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(-180);
end;

procedure Tfm_main.pm_RotateRight90Click(Sender: TObject);
begin
  ImageEnView1.proc.Rotate(-90);
end;

procedure Tfm_main.sBtn_ManualClick(Sender: TObject);
begin
  fm_youtube.Show;
end;

procedure Tfm_main.sbtn_selectFolderClick(Sender: TObject);
var
  Folder: String;
begin
  IEOFD.Folder := ExtractFilePath( Application.ExeName );
//  ImageEnFolderMView.PromptForFolder;
//  SelectDirectory('Your Caption','c:\;h:\;',Folder);
  if IEOFD.Execute then
  ImageEnFolderMView.Folder := IEOFD.Folder;
//  ImageEnFolderMView.Folder := ExtractFilePath(IEOFD.Folder);
end;

procedure Tfm_main.sBtn_ShowNHideClick(Sender: TObject);
begin
  ImageEnView1.MouseInteractLayers := [ mlMoveLayers, mlResizeLayers, mlCreateImageLayers ];
  ImageEnView1.OnDrawLayer := ImageEnView1DrawLayer;
  ImageEnView1.OnNewLayer := ImageEnView1NewLayer;
  ImageEnView1.Layers[0].Opacity := 0;
  ImageEnView1.Layers[0].Selectable := False;

  pnl_rightmenu.Visible := True;
  gp_body.ColumnCollection.Items[4].SizeStyle := ssAbsolute;
  gp_body.ColumnCollection.Items[4].Value := 120;

  gp_body.RowCollection.Items[4].SizeStyle := ssAbsolute;
  gp_body.RowCollection.Items[4].Value := 0;

end;

procedure Tfm_main.tmrUpdatePreviewTimer(Sender: TObject);
const
  __cmbButtonStyle_Default         = 0;
  __cmbButtonStyle_BigCustom       = 1;
  __cmbButtonStyle_SemiTransparent = 2;
  __cmbButtonStyle_Solid           = 3;

  Show_Nav_Buttons = True;
begin
  tmrUpdatePreview.Enabled := False;

  ImageEnView1.LayersClear(False);

  ImageEnView1.LockUpdate();

//  ImageEnView1.ButtonParams.OnlyOnHover := chkHoverButtons.Checked;

  // Update button status
//  if Show_Nav_Buttons = False then
//    ImageEnView1.ShowButtons := []
//  else
//  begin
//    // Show either Zoom In or Zoom Out depending on which is most relevant
//    ImageEnView1.ShowButtons := [ iebtZoomIn, iebtZoomOut ];
//
//    // Have previous image?
//    if ImageEnFolderMView.SelectedImage > 0 then
//      ImageEnView1.ShowButtons := ImageEnView1.ShowButtons + [ iebtPrevious ];
//
//    // Have next image?
//    if ImageEnFolderMView.SelectedImage < ImageEnFolderMView.ImageCount - 1 then
//      ImageEnView1.ShowButtons := ImageEnView1.ShowButtons + [ iebtNext ];
//  end;

  // Customize styling...
//  case cmbButtonStyle.ItemIndex of
//
//    __cmbButtonStyle_BigCustom:
//      begin
//        // Big yellow buttons with red border
//        ImageEnView1.ButtonParams.FillColor          := clGold;
//        ImageEnView1.ButtonParams.FillTransparency   := 255;
//        ImageEnView1.ButtonParams.BorderWidth        := 2;
//        ImageEnView1.ButtonParams.BorderColor        := clPastelRed;
//        ImageEnView1.ButtonParams.BorderTransparency := 255;
//
//        ImageEnView1.ButtonParams.Size  := 40;
//      end;
//
//    __cmbButtonStyle_SemiTransparent:
//      begin
//        // Buttons with gray border and semi-transparent fill
//        ImageEnView1.ButtonParams.FillColor          := clWhite;
//        ImageEnView1.ButtonParams.FillTransparency   := 110;
//        ImageEnView1.ButtonParams.BorderWidth        := 2;
//        ImageEnView1.ButtonParams.BorderColor        := clDarkGray;
//        ImageEnView1.ButtonParams.BorderTransparency := 255;
//
//        ImageEnView1.ButtonParams.Size  := 30;
//      end;
//
//    __cmbButtonStyle_Solid:
//      begin
//        // Solid red buttons without border
//        ImageEnView1.ButtonParams.FillColor          := clPastelRed;
//        ImageEnView1.ButtonParams.FillTransparency   := 255;
//        ImageEnView1.ButtonParams.BorderWidth        := 0;
//        ImageEnView1.ButtonParams.BorderColor        := clDarkGray;
//        ImageEnView1.ButtonParams.BorderTransparency := 255;
//
//        ImageEnView1.ButtonParams.Size  := 30;
//      end;
//
//    else // __cmbButtonStyle_Default
//      begin
//        // Standard buttons with gray border and white fill
//        ImageEnView1.ButtonParams.FillColor          := clWhite;
//        ImageEnView1.ButtonParams.FillTransparency   := 255;
//        ImageEnView1.ButtonParams.BorderWidth        := 1;
//        ImageEnView1.ButtonParams.BorderColor        := clDarkGray;
//        ImageEnView1.ButtonParams.BorderTransparency := 255;
//
//        ImageEnView1.ButtonParams.Size  := 25;
//      end;
//  end;

  // Load Image
  if ImageEnView1.IO.Params.Filename <> ImageEnFolderMView.SelectedFilename then
  begin
    if ImageEnFolderMView.SelectedFilename = '' then
      ImageEnView1.Blank
    else
      ImageEnView1.IO.LoadFromFile(ImageEnFolderMView.SelectedFilename);
  end;

  // Default to fitting to window size
  ImageEnView1.AutoShrink := True;

  ImageEnView1.UnlockUpdate();
end;

procedure Tfm_main.tmr_AutoMoveTimer(Sender: TObject);
var
  selSz: Integer;
  posx, posy : Integer;
begin
  selSz := imin( Round( ImageEnView1.IEBitmap.Width  * 0.25 ), Round( ImageEnView1.IEBitmap.Height  * 0.25 ));

  PosX := Random(Screen.Width-selSz);
  if posX + selSz > Screen.Width then PosX := PosX - (selSZ * 2);
  PosY := Random(Screen.Height-(Page_main.Height+selSz));
  if posY + selSz > (Screen.Height+Page_Main.Height) then PosY := PosY - (selSZ * 2);

  ImageEnView1.CurrentLayer.PosX := PosX;
  ImageEnView1.CurrentLayer.PosY := PosY;
  ImageEnView1.Update;
end;

procedure Tfm_main.tmr_AutoOpacityTimer(Sender: TObject);
begin
  case tmr_AutoOpacity.Tag of
  0 : begin
        if Opacity < 100 then
        begin
          Opacity := Opacity + 4;
          ImageEnView1.layers[0].Opacity := Opacity/100;
          ImageEnView1.Update;
        end else
        begin
          tmr_AutoOpacity.Enabled := False;
        end;
      end;
  9 : begin
        if Opacity > 0 then
        begin
          Opacity := Opacity - 4;
          ImageEnView1.layers[0].Opacity := Opacity/100;
          ImageEnView1.Update;
        end else
        begin
          tmr_AutoOpacity.Enabled := False;
        end;
      end;
  end;

end;

procedure Tfm_main.UpdateSelection;
begin
  tmrUpdatePreview.Enabled := False;
  tmrUpdatePreview.Enabled := True;
end;

type TIELayersPreviewQuality = ( iepqFast, iepqBestDelayed, iepqBest );
procedure SetLayersPreviewQuality(ImageEnView: TImageEnView; Quality: TIELayersPreviewQuality);
begin
  // Seperate code to make it easier to understand

  if Quality = iepqFast then
  begin
    // FASTEST DISPLAY

    // Zoom filter
    ImageEnView.ZoomFilter := rfNone;
    ImageEnView.DelayZoomFilter := False;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := False;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefFast;
  end
  else
  if Quality = iepqBestDelayed then
  begin
    // DELAYED HIGH QUALITY

    // Zoom filter
    ImageEnView.ZoomFilter := rfLanczos3;
    ImageEnView.DelayZoomFilter := True;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := True;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefDelayed;
  end
  else
  // iepqBest
  begin
    // HIGH QUALITY

    // Zoom filter
    ImageEnView.ZoomFilter := rfLanczos3;
    ImageEnView.DelayZoomFilter := False;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := True;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefNormal;
  end;

  ImageEnView.Update();
end;

procedure Tfm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ShellExecute(handle, 'open','poweroftmain.exe',PChar(tid+'|'+tname+'|'+tgrade+'|'+tban+'|'+tbunho+'|'+tiphak+'|'+tconnectip),nil,SW_NORMAL);
end;

procedure Tfm_main.FormCreate(Sender: TObject);
var
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
end;

procedure Tfm_main.FormShow(Sender: TObject);
const
 _cmbPreviewQuality_Fast          = 0;
 _cmbPreviewQuality_Delayed_Best  = 1;
 _cmbPreviewQuality_Best          = 2;

var
  fName: string;
begin
  Page_Main.ActivePage := ts_image;

//  ImageEnView1.LayersClear(True);

  pnl_rightmenu.Visible := False;
  gp_body.ColumnCollection.Items[4].SizeStyle := ssAbsolute;
  gp_body.ColumnCollection.Items[4].Value := 0;

//  레이어의 품질 설정
//  SetLayersPreviewQuality( ImageEnView1, TIELayersPreviewQuality( cmbPreviewQuality.ItemIndex ));
  SetLayersPreviewQuality( ImageEnView1, TIELayersPreviewQuality( 0 ));

  btn_selectFolder.Caption := 'Image'+#13#10#13#10+'선택';
  btn_Manual.Caption := '동영상'+#13#10#13#10+'설명서';

  Btn_Opacity.Caption := '이미지'+#13#10#13#10+'투명도 높임';
  btn_DelCurrentLayer.Caption := '현재'+#13#10#13#10+'Layer 지움';
  btn_DelAllLayer.Caption := '모든'+#13#10#13#10+'Layer 지움';

  Btn_turnright90.Caption := '시계방향' + #13#10#13#10 + '90°돌리기';
  Btn_turnright180.Caption := '시계방향' + #13#10#13#10 + '180°돌리기';
  Btn_turnleft90.Caption := '반시계방향' + #13#10#13#10 + '90°돌리기';
  Btn_turnleft180.Caption := '반시계방향' + #13#10#13#10 + '180°돌리기';


  // Black background
//  ImageEnView1.Background := clBlack;
//  ImageEnView1.BackgroundStyle := iebsSolid;

  // 레이어를 선택할 수 있는 8개의 점의 색깔과 그립의 크기
  ImageEnView1.SetLayersGripStyle( clBlack, clLime, bsSolid, 15, iegsCircle );

  ImageEnView1.MouseInteractLayers := [];

  // Need this because layers are transparent!!!
  ImageEnView1.SelectionOptions := ImageEnView1.SelectionOptions + [iesoSelectTranspLayers];

  // Lock to circular/square
//  ImageEnView1.ShiftKeyLock := [iessAlt_MaintainAR];
  ImageEnView1.ShiftKeyLock := [];

  fName := IncludeTrailingBackSlash( ExtractFilePath( Application.ExeName )) + 'whatsthis.png';

  if FileExists( fName ) then
    LoadFile( fName );
end;

end.
