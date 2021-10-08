unit u_Manual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WebView2, Winapi.ActiveX, Vcl.Edge;

type
  Tfm_youtube = class(TForm)
    Edge_youtube: TEdgeBrowser;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_youtube: Tfm_youtube;

implementation

{$R *.dfm}

procedure Tfm_youtube.FormShow(Sender: TObject);
begin
  edge_youtube.Navigate('https://www.youtube.com/channel/UCF3JQenMkBhbBvGOe6-_YXw');
end;

end.
