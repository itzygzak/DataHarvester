unit ConnectionEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel;

type
  TFrmConnectionEditor = class(TForm)
    rzGrpBx1: TRzGroupBox;
    rzGrpBx2: TRzGroupBox;
    rzLbl1: TRzLabel;
    rzLbl2: TRzLabel;
    rzLbl3: TRzLabel;
    rzLbl4: TRzLabel;
    rzLbl5: TRzLabel;
    rzLbl6: TRzLabel;
    mmo1: TMemo;
    edtUser: TEdit;
    edtPassword: TEdit;
    edtRole: TEdit;
    cbbCharset: TComboBox;
    cbbDialect: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConnectionEditor: TFrmConnectionEditor;

implementation

{$R *.dfm}

end.
