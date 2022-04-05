unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, RzPanel, Vcl.Menus;

type
  TFrmMain = class(TForm)
    spltvw1: TSplitView;
    rzPnlTop: TRzPanel;
    rzPnlTopSplit: TRzPanel;
    img1: TImage;
    imgConnect: TImage;
    imgDisconnect: TImage;
    imgRemove: TImage;
    imgSettings: TImage;
    mm1: TMainMenu;
    Plik1: TMenuItem;
    Narzdzia1: TMenuItem;
    Ustawienia1: TMenuItem;
    Pomoc1: TMenuItem;
    Oprogramie1: TMenuItem;
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation
uses ConnectionEditor;

{$R *.dfm}

procedure TFrmMain.img1Click(Sender: TObject);
begin
FrmConnectionEditor.Top := FrmMain.Top + 50;
FrmConnectionEditor.Left := FrmMain.Left + 50;
FrmConnectionEditor.ShowModal;
end;

end.
