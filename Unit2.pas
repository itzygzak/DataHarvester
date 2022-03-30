unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, RzPanel;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

end.
