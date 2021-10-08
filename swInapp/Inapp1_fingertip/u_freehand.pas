unit u_freehand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, hyieutils, iexBitmaps,
  hyiedefs, iesettings, iexLayers, iexRulers, ieview, imageenview, Vcl.StdCtrls,
  Vcl.ComCtrls, iexColorButton;

type
  Tfm_freehand = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    iev_freehand: TImageEnView;
    GroupBox1: TGroupBox;
    lblBrushShape: TLabel;
    cmbBrushShape: TComboBox;
    lblBrushFill: TLabel;
    cmbBrushFill: TComboBox;
    lblBrushColor: TLabel;
    lblBrushSize: TLabel;
    lblFeathering: TLabel;
    edtFeathering: TEdit;
    updFeathering: TUpDown;
    lblTransparency: TLabel;
    trkTransparency: TTrackBar;
    lblEraserOpacity: TLabel;
    trkEraserOpacity: TTrackBar;
    Label5: TLabel;
    cmbOperation: TComboBox;
    lblPaintMode: TLabel;
    cmbPaintMode: TComboBox;
    chkAutoFit: TCheckBox;
    btnUndo: TButton;
    BtnSave: TButton;
    Image1: TImage;
    ColorDialog1: TColorDialog;
    lblbrsize: TLabel;
    Shape1: TShape;
    trkBrushHeight: TTrackBar;
    trkBrushWidth: TTrackBar;
    chkLink: TCheckBox;
    btnBrushColor: TIEColorButton;
    btnBrushColor2: TIEColorButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ControlChange(Sender: TObject);
    procedure chkAutoFitClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure iev_freehandImageChange(Sender: TObject);
    procedure updBrushSizeChanging(Sender: TObject; var AllowChange: Boolean);
    procedure updFeatheringChanging(Sender: TObject; var AllowChange: Boolean);
    procedure shpBrushColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkLinkClick(Sender: TObject);
    procedure trkBrushHeightChange(Sender: TObject);
    procedure trkBrushWidthChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartPainting();
    procedure UpdateCursorPreview();
  public
    { Public declarations }
  end;

var
  fm_freehand: Tfm_freehand;

implementation

{$R *.dfm}

procedure Tfm_freehand.btnUndoClick(Sender: TObject);
begin
  iev_freehand.Proc.Undo( True );
end;

procedure Tfm_freehand.chkAutoFitClick(Sender: TObject);
begin
  if chkAutoFit.checked then
    iev_freehand.Fit( False )
  else
    iev_freehand.Zoom := 100;
end;

procedure Tfm_freehand.chkLinkClick(Sender: TObject);
begin
  if chkLink.Checked then
    trkBrushWidth.Position := trkBrushHeight.Position;
end;

procedure Tfm_freehand.ControlChange(Sender: TObject);
var
  needImage, needGradient, isEraser: Boolean;
begin
  needImage    := TIEBrushFill( cmbBrushFill.ItemIndex ) = iebfImage;
  needGradient := TIEBrushFill( cmbBrushFill.ItemIndex ) = iebfGradient;
  isEraser     := TIEBrushFill( cmbBrushFill.ItemIndex ) = iebfEraser;

  if needImage then
    iev_freehand.BrushTool.BrushShape := iecsRectangle // Match shape of image
  else
    iev_freehand.BrushTool.BrushShape := TIECursorShape( cmbBrushShape.ItemIndex + 1 );
  iev_freehand.BrushTool.BrushFill  := TIEBrushFill( cmbBrushFill.ItemIndex );
  iev_freehand.BrushTool.BrushColor := btnBrushColor.SelectedColor;
  iev_freehand.BrushTool.BrushColor2:= btnBrushColor2.SelectedColor;

  iev_freehand.BrushTool.BrushHeight   := trkBrushHeight.Position;
  iev_freehand.BrushTool.BrushWidth    := trkBrushWidth.Position;

  iev_freehand.BrushTool.Operation  := TIERenderOperation( cmbOperation.ItemIndex );
  iev_freehand.BrushTool.Feathering := updFeathering.Position;
  iev_freehand.BrushTool.Transparency := trkTransparency.Position;
  iev_freehand.BrushTool.EraserOpacity := trkEraserOpacity.Position / 100;

  if needImage then
    // Brushes with transparency work best with iepmDiscrete or iepmStamp
    iev_freehand.BrushTool.PaintMode  := iepmStamp
  else
    iev_freehand.BrushTool.PaintMode  := TIEPaintMode( cmbPaintMode.ItemIndex );
  iev_freehand.Invalidate();

  btnBrushColor2.Visible := needGradient;

  lblBrushColor.Enabled := not needImage;
  btnBrushColor.Enabled := not needImage;
  btnBrushColor2.Enabled := not needImage;

  lblBrushSize.Enabled := not needImage;
//  edtBrushSize.Enabled := not needImage;
//  updBrushSize.Enabled := not needImage;

  lblBrushShape.Enabled := not needImage;
  cmbBrushShape.Enabled := not needImage;
  lblPaintMode .Enabled := not needImage;
  cmbPaintMode .Enabled := not needImage;

  lblEraserOpacity.Enabled := isEraser;
  trkEraserOpacity.Enabled := isEraser;
  lblTransparency .Enabled := not isEraser;
  trkTransparency .Enabled := not isEraser;


  btnUndo.Enabled := iev_freehand.Proc.CanUndo;
  btnSave.Enabled := not iev_freehand.IsEmpty2;

  UpdateCursorPreview();
end;

procedure Tfm_freehand.FormCreate(Sender: TObject);
begin
  Height := Screen.Height;
  Width  := Screen.Width;
end;

procedure Tfm_freehand.FormShow(Sender: TObject);
begin
  // 20 levels of undo
  iev_freehand.Proc.UndoLimit := 30;

  cmbBrushShape.ItemIndex := 0;
  cmbBrushFill .ItemIndex := 0;
  cmbOperation .ItemIndex := 0;
  cmbPaintMode .ItemIndex := 0;

  ControlChange(nil);

  StartPainting;

  iev_freehand.Update;
end;

procedure Tfm_freehand.iev_freehandImageChange(Sender: TObject);
begin
  btnUndo.Enabled := iev_freehand.Proc.CanUndo;
  btnSave.Enabled := not iev_freehand.IsEmpty2;
end;

procedure Tfm_freehand.shpBrushColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ColorDialog1.Color := TShape(Sender).Brush.Color;
  if ColorDialog1.Execute then
    TShape(Sender).Brush.Color := ColorDialog1.Color;
  ControlChange(nil);
end;

procedure Tfm_freehand.StartPainting;
begin
  // Assign an image to use as a brush
  iev_freehand.BrushTool.BrushImage.Assign( Image1.Picture.Bitmap );

  // Remove white background
  iev_freehand.BrushTool.BrushImage.SetTransparentColors( clWhite, clWhite, 0 );

  // How is transparency painted?
  iev_freehand.BrushTool.TransparencyMode := ietmCompositing; // When using transparency, merge with existing content. Or use ietmReplace to replace content with brush

  // ENABLE PAINTING
  iev_freehand.MouseInteract := [ miBrushTool ];
end;

procedure Tfm_freehand.trkBrushHeightChange(Sender: TObject);
begin
  if chkLink.Checked then
    trkBrushWidth.Position := trkBrushHeight.Position;
  ControlChange(nil);
end;

procedure Tfm_freehand.trkBrushWidthChange(Sender: TObject);
begin
  if chkLink.Checked then
    trkBrushHeight.Position := trkBrushWidth.Position;
  ControlChange(nil);
end;

procedure Tfm_freehand.UpdateCursorPreview;
const
  Ctrl_Left  = 375;
  Ctrl_Top   = 15;
  Max_Width  = 50;
  Max_Height = 50;
begin
  lblbrsize.Caption := format('%d x %d', [trkBrushWidth.Position, trkBrushHeight.Position]);

  Shape1.Width  := trkBrushWidth.Position  + 1;
  Shape1.Height := trkBrushHeight.Position + 1;
  Shape1.Left   := Ctrl_Left + ( Max_Width - Shape1.Width ) div 2;
  Shape1.Top    := Ctrl_Top + ( Max_Height - Shape1.Height ) div 2;
  if iev_freehand.BrushTool.BrushFill in [ iebfGradient, iebfImage ] then
    Shape1.Brush.Color := clGray
  else
    Shape1.Brush.Color := btnBrushColor.SelectedColor;

  if iev_freehand.BrushTool.BrushShape = iecsRectangle then
    Shape1.Shape := stRectangle
  else
    Shape1.Shape := stEllipse;
end;

procedure Tfm_freehand.updBrushSizeChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  ControlChange(nil);
end;

procedure Tfm_freehand.updFeatheringChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  ControlChange(nil);
end;

end.
