unit u_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, hyieutils, iexBitmaps, hyiedefs,
  iesettings, iexLayers, iexRulers, iemview, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, ieview, imageenview, Vcl.ExtCtrls, ieopensavedlg,
  System.ImageList, Vcl.ImgList, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Data.DB, Data.SqlExpr, iexToolbars;

type
  Tfm_InApp = class(TForm)
    ImageList1: TImageList;
    OpenIDE: TOpenImageEnDialog;
    pnl_all: TPanel;
    Splitter1: TSplitter;
    pnl_body: TPanel;
    pnl_left: TPanel;
    OpenDialog1: TOpenDialog;
    pnl_imageEn: TPanel;
    scrb_ImgEn: TScrollBox;
    ImageEnView1: TImageEnView;
    SQLConnect: TSQLConnection;
    Panel6: TPanel;
    SpeedButton9: TSpeedButton;
    sbtn_New: TSpeedButton;
    ImageEnMView1: TImageEnMView;
    Panel1: TPanel;
    GridPanel4: TGridPanel;
    Panel2: TPanel;
    GridPanel5: TGridPanel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    btn_resize: TButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GridPanel6: TGridPanel;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    Panel3: TPanel;
    GridPanel7: TGridPanel;
    btn_Flip: TButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    Panel4: TPanel;
    GridPanel8: TGridPanel;
    btn_rotate: TButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    GridPanel9: TGridPanel;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    GridPanel10: TGridPanel;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Panel5: TPanel;
    GridPanel11: TGridPanel;
    Button1: TButton;
    Button3: TButton;
    procedure spdBtn_LoadImageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ImageEnView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageEnView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ImageEnView1LayerNotify(Sender: TObject; layer: Integer;
      event: TIELayerEvent);
    procedure ImageEnView1DShowNewFrame(Sender: TObject);
    procedure sbtn_NewClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sBtn_SaveClick(Sender: TObject);
    procedure btn_shotClick(Sender: TObject);
    procedure ImageEnView1LayerNotifyEx(Sender: TObject; layer: Integer;
      event: TIELayerEvent);
    procedure btn_vertexpandClick(Sender: TObject);
    procedure sBtn_LoadBackImgClick(Sender: TObject);
    procedure btn_resizeClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btn_FlipClick(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure btn_rotateClick(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_InApp: Tfm_InApp;
  ReMemberX, RememberY : Integer;

  Resize_Type, Resize_su : integer;
  Flip_type, Flip_dir : integer;
  Rotate_type, Rotate_dir : Integer;
implementation

{$R *.dfm}

uses
  iexCanvasUtils;

procedure Tfm_InApp.btn_FlipClick(Sender: TObject);
var
  i: Integer;
begin
  if Flip_type = 1 then
  begin
    if flip_dir = 1 then ImageEnView1.IEBitmap.Flip(TFlipDir.fdVertical)
    else ImageEnView1.IEBitmap.Flip(TFlipDir.fdHorizontal)
  end;

  if Flip_type = 2 then
  begin
    if Flip_dir = 1 then
    begin
      for i := 0 to ImageEnView1.LayersCount - 1 do
        ImageEnView1.Layers[i].Flip := fdVertical
    end else
    begin
      for i := 0 to ImageEnView1.LayersCount - 1  do
         ImageEnView1.Layers[i].Flip := fdHorizontal;
    end;
  end;
  ImageEnView1.Update;
end;

procedure Tfm_InApp.btn_resizeClick(Sender: TObject);
var
  i : integer;
begin
  if resize_type = 1 then
  begin
        case Resize_su of
          1 : begin
                ImageEnView1.CurrentLayer.Width := ImageEnView1.CurrentLayer.Width div 2;
                ImageEnView1.CurrentLayer.Height := ImageEnView1.CurrentLayer.Height div 2;
          end;
          2 : begin
                ImageEnView1.CurrentLayer.Width := ImageEnView1.CurrentLayer.Width div 4;
                ImageEnView1.CurrentLayer.Height := ImageEnView1.CurrentLayer.Height div 4;
          end;
          3 : begin
                ImageEnView1.CurrentLayer.Width := Round(ImageEnView1.CurrentLayer.Width * 0.9);
                ImageEnView1.CurrentLayer.Height := Round(ImageEnView1.CurrentLayer.Height * 0.9);
          end;
          4 : begin
                ImageEnView1.CurrentLayer.Width := ImageEnView1.CurrentLayer.Width * 2;
                ImageEnView1.CurrentLayer.Height := ImageEnView1.CurrentLayer.Height * 2;
          end;
          5 : begin
                ImageEnView1.CurrentLayer.Width := ImageEnView1.CurrentLayer.Width * 4;
                ImageEnView1.CurrentLayer.Height := ImageEnView1.CurrentLayer.Height * 4;
          end;
          6 : begin
                ImageEnView1.CurrentLayer.Width := Round(ImageEnView1.CurrentLayer.Width * 1.1);
                ImageEnView1.CurrentLayer.Height := Round(ImageEnView1.CurrentLayer.Height * 1.1);
          end;
        end;
  end;
  if Resize_type = 2 then
  begin
        case Resize_su of
           1 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := ImageEnView1.Layers[i].Width div 2;
                   ImageEnView1.Layers[i].Height := ImageEnView1.Layers[i].Height div 2;
                 end;
           end;
           2 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := ImageEnView1.Layers[i].Width div 4;
                   ImageEnView1.Layers[i].Height := ImageEnView1.Layers[i].Height div 4;
                 end;
           end;
           3 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := Round(ImageEnView1.Layers[i].Width * 0.9);
                   ImageEnView1.Layers[i].Height := Round(ImageEnView1.Layers[i].Height * 0.9);
                 end;
           end;
           4 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := ImageEnView1.Layers[i].Width * 2;
                   ImageEnView1.Layers[i].Height := ImageEnView1.Layers[i].Height * 2;
                 end;
           end;
           5 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := ImageEnView1.Layers[i].Width * 4;
                   ImageEnView1.Layers[i].Height := ImageEnView1.Layers[i].Height * 4;
                 end;
           end;
           6 : begin
                 for i := 1 to ImageEnView1.LayersCount - 1 do
                 begin
                   ImageEnView1.Layers[i].Width := Round(ImageEnView1.Layers[i].Width * 1.1);
                   ImageEnView1.Layers[i].Height := Round(ImageEnView1.Layers[i].Height * 1.1);
                 end;
           end;
        end;
  end;

  ImageEnView1.Update;
end;

procedure Tfm_InApp.btn_rotateClick(Sender: TObject);
begin
  if rotate_type = 1 then
     if rotate_dir = 1 then
       ImageEnView1.LayersRotateAll(-90, true, false)
     else
       ImageEnView1.LayersRotateAll(90, true, false)
  else
     if rotate_dir = 1 then
       ImageEnView1.LayersRotateAll(-90)
     else
       ImageEnView1.LayersRotateAll(90);

  //회전한 레이어의 위아래를 현재 보이는 형태로 확정 - 이 명령이 없으면 레이어가 생성되 최초의 위, 아래, 좌, 우가 기억됨.
  ImageEnView1.LayersFixRotations(ImageEnView1.LayersCurrent);
end;

procedure Tfm_InApp.btn_shotClick(Sender: TObject);
var
  i:integer;
begin
  i:=ImageEnMView1.AppendImage;
  ImageEnMView1.SetIEBitmap(i, ImageEnView1.IEBitmap);
end;

procedure Tfm_InApp.btn_vertexpandClick(Sender: TObject);
var
  I: Integer;
begin
//  pnl_ImageEn.Align := alNone;
//  pnl_ImageEn.Left := 0;
//  pnl_ImageEn.Width := Screen.Width - (pnl_left.Width + Splitter1.Width+20);
//  pnl_ImageEn.Height := 2000;
  if scrb_ImgEn.VertScrollBar.Range = 0 then
    scrb_ImgEn.VertScrollBar.Range := scrb_ImgEn.Height + Round(scrb_ImgEn.Height * 0.2)
  else
    scrb_ImgEn.VertScrollBar.Range := scrb_ImgEn.VertScrollBar.Range + Round(scrb_ImgEn.Height * 0.2);

  RememberY := 20;
  scrb_ImgEn.VertScrollBar.Position := 0;
  for I := 1 to ImageEnView1.LayersCount - 1 do
  begin
    ImageEnView1.Layers[i].PosY := RememberY;
    ImageEnView1.Update;
    RememberY := RememberY + ImageEnView1.Layers[i].Height;
  end;
  caption := 'Range = ' + scrb_ImgEn.VertScrollBar.Range.ToString() + ' , RememberY = ' + RememberY.ToString()
end;

procedure Tfm_InApp.Button1Click(Sender: TObject);
begin
  ImageEnView1.LayersRemove(ImageEnView1.LayersCurrent);
end;

procedure Tfm_InApp.Button3Click(Sender: TObject);
begin
  ImageEnView1.LayersClear(True);
end;

procedure Tfm_InApp.FormCreate(Sender: TObject);
begin
  Height := Screen.Height;
  Width  := Screen.Width;
end;

procedure Tfm_InApp.FormShow(Sender: TObject);
//const
//  Draw_Shapes: array[0..7] of TIEShape = ( iesEllipse, iesRectangle, iesStar5, iesCloud, iesShootingArrowNW, iesHeart, iesLightningLeft, iesExplosion );

var
  I: Integer;
  Draw_Shapes: array[0..99] of TIEShape;
begin
  ImageEnView1.LegacyBitmap := False;
  ImageEnView1.IEBitmap.Allocate( ImageEnView1.ClientWidth, ImageEnView1.ClientHeight );
  ImageEnView1.IEBitmap.Fill( clWhite );
  ImageEnView1.Update();

  // Fill TImageEnMView from a TImageList
  ImageEnMView1.LockUpdate();
  ImageEnMView1.SetModernStyling( False, -1, -1, False );
  ImageEnMView1.SetThumbnailSize( 200, 200, True );
  ImageEnMView1.GridWidth := 1; // One column
//  ImageEnMView1.Assign( ImageList1 );
//  ImageEnMView1.SelectedImage := 0;
  ImageEnMView1.UnlockUpdate();

//  ImageEnMView1.EnableMultiSelect := True;

  ReMemberY := 10;
  ReMemberX := 50;
end;

procedure Tfm_InApp.ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  ImageEnMView1.IEEndDrag;
  ImageEnMView1.MouseInteract := [mmiSelect];
end;

procedure Tfm_InApp.ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssLeft in Shift then
  begin
    ImageEnMView1.MouseInteract := [];
    ImageEnMView1.IEBeginDrag( False, -1 );
  end;
end;

procedure Tfm_InApp.ImageEnView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  bmp: TIEBitmap;
  idx: Integer;
  layerShape: TIEShape;
  layerText: string;
  SenTence : TStringList;
begin

  If TControl( Source )is TImageEnMView then
  begin
    idx := TImageEnMView( Source ).SelectedImage;
    if idx >= 0 then
    begin
      bmp := ImageEnMView1.GetTIEBitmap( idx );
      ImageEnView1.LayersAdd( bmp );
      ImageEnView1.CurrentLayer.PosX := X;
      ImageEnView1.CurrentLayer.PosY := Y;
      TImageEnMView( Source ).ReleaseBitmap( idx, False );
    end;
  end;

  ImageEnView1.Update();
end;

procedure Tfm_InApp.ImageEnView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if ( Source is TListBox ) or
     ( Source is TImageEnMView ) then
    Accept := True;
end;

procedure Tfm_InApp.ImageEnView1DShowNewFrame(Sender: TObject);
var
  p:int64;
begin
  // copy current sample to ImageEnView bitmap
  ImageEnView1.IO.DShowParams.GetSample(ImageEnView1.IEBitmap);

  // refresh ImageEnView1
  ImageEnView1.Update;
end;

procedure Tfm_InApp.ImageEnView1LayerNotify(Sender: TObject;
  layer: Integer; event: TIELayerEvent);
begin
  // 레이어의 이동, 크기조절 등의 동작할 때 작동되는 이벤트
//  if (Layer > 0) and (event = ielMoved) then
//    Showmessage('Select Layer = > ' + ImageEnView1.LayersCurrent.ToString + ' : ' + Layer.ToString());

end;

procedure Tfm_InApp.ImageEnView1LayerNotifyEx(Sender: TObject;
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
    while i < ImageEnView1.LayersCount do
    begin
      if Layer = ImageEnView1.Layers[i].LayerIndex then
//        Showmessage('선택한 레이어와 같은 인덱스네.')
      else
        ImageEnView1.Layers[i].LayerIndex := i;
      Inc(i);
    end;
    ImageEnView1.Layers[layer].LayerIndex := i-1;
    ImageEnView1.Update;
//    Caption := ImageEnView1.CurrentLayer.LayerIndex.ToString();
  end;
end;

procedure Tfm_InApp.RadioButton11Click(Sender: TObject);
begin
  flip_dir := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.RadioButton13Click(Sender: TObject);
begin
  Rotate_type := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.RadioButton15Click(Sender: TObject);
begin
    Rotate_Dir := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.RadioButton1Click(Sender: TObject);
begin
//  if TRadioButton(Sender).Checked = True then
    Resize_Type := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.RadioButton2Click(Sender: TObject);
begin
    Resize_su := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.RadioButton9Click(Sender: TObject);
begin
  Flip_type := TRadioButton(Sender).Tag;
end;

procedure Tfm_InApp.sBtn_LoadBackImgClick(Sender: TObject);
var
  LoadFilename : String;
begin
  LoadFilename := ImageEnView1.IO.ExecuteOpenDialog;
  If LoadFilename <> '' then
    ImageEnView1.IO.LoadFromFile( LoadFileName )
end;

procedure Tfm_InApp.sbtn_NewClick(Sender: TObject);
begin
  ImageEnMView1.Clear;
end;

procedure Tfm_InApp.sBtn_SaveClick(Sender: TObject);
begin
//  with ImageEnMView1.MIO do
//    ImageEnMView1.MIO.SaveToFile( ExecuteSaveDialog('','output.tif',false,0,'') );
end;

procedure Tfm_InApp.spdBtn_LoadImageClick(Sender: TObject);
var
  LoadFilename : String;
begin
  ImageEnMView1.Clear;

  LoadFileName := ImageEnMView1.MIO.ExecuteOpenDialog('','output.tif',false,0,'');

  If LowerCase(ExtractFileExt(LoadFileName)) = '.tif' then
    ImageEnMView1.MIO.LoadFromFile( LoadFileName )
  else
  begin
    ImageEnMView1.FillFromDirectory(ExtractFilePath(OpenIDE.FileName));
    ImageEnMView1.SelectedImage := 0;
  end;

end;

procedure Tfm_InApp.SpeedButton1Click(Sender: TObject);
begin
  ImageEnView1.LayersCropBackground(true);
end;

procedure Tfm_InApp.SpeedButton7Click(Sender: TObject);
begin
  ImageEnView1.LayersUngroup();
end;

procedure Tfm_InApp.SpeedButton8Click(Sender: TObject);
begin
  ImageEnView1.LayersGroup();
end;

end.
