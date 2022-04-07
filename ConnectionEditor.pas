unit ConnectionEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel, RzRadGrp, Data.DB, IBX.IBDatabase, IBX.IBDatabaseInfo;

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
    ibDtbsNf1: TIBDatabaseInfo;
    btn1: TButton;
    edtParametry: TEdit;
    btn2: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtUserChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConnectionEditor: TFrmConnectionEditor;

implementation

{$R *.dfm}

procedure TFrmConnectionEditor.btn1Click(Sender: TObject);
begin
if ibDtBs1.Connected then ibDtBs1.Close;
 ibDtBs1.DatabaseName:= EdtParametry.text;
 ibDtBs1.Open;
end;

procedure TFrmConnectionEditor.btn2Click(Sender: TObject);
begin
    if ibDtBs1.Connected then ibDtBs1.Close;
 ibDtBs1.DatabaseName:= EdtParametry.text;
 ibDtBs1.Open;
end;

procedure TFrmConnectionEditor.btnConnectClick(Sender: TObject);
begin
{ibDtBs1.DatabaseName:='';
ibDtBs1.CharacterSet:='';
ibDtBs1.TestConnected:='';
ibDtBs1.Connected:= True;
ibDtBs1.Params.s  }


ibDtBs1.Close;

ibDtBs1.Params.Clear;

ibDtBs1.Connected;
ibDtBs1.DatabaseName := '127.0.0.1/3050:D:\Bazy\Dziennik2021\DZIENNIK2021.FDB';
//'127.0.0.1:3050/d:\Bazy\Dziennik2021\dziennik2021.fdb';
//ibDtBs1.DatabaseName := 'c:\bazy\moja_baza.gdb';

ibDtBs1.Params.Add('user_name=SYSDBA');
ibDtBs1.Params.Add('password=masterkey');

//ibDtbsNf1.Database.Params.Add('ibDtBs1');

ibDtBs1.Open();
end;

procedure TFrmConnectionEditor.edtUserChange(Sender: TObject);
begin
edtParametry.Text:= edtUser.Text + edtPassword.Text;
end;

end.
