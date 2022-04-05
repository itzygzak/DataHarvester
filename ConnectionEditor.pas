unit ConnectionEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel, RzRadGrp, Data.DB, IBX.IBDatabase;

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
    rzRdGrp1: TRzRadioGroup;
    edtNazwaPol: TEdit;
    rzLbl7: TRzLabel;
    ibDtBs1: TIBDatabase;
    btnConnect: TButton;
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConnectionEditor: TFrmConnectionEditor;

implementation

{$R *.dfm}

procedure TFrmConnectionEditor.btnConnectClick(Sender: TObject);
begin
{ibDtBs1.DatabaseName:='';
ibDtBs1.CharacterSet:='';
ibDtBs1.TestConnected:='';
ibDtBs1.Connected:= True;
ibDtBs1.Params.s  }
end;

end.
