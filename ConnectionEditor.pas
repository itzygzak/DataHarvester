unit ConnectionEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel, RzRadGrp, Data.DB, IBX.IBDatabase, IBX.IBDatabaseInfo, Vcl.ComCtrls;

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
    edtIP: TEdit;
    edtPort: TEdit;
    edtSciezka: TEdit;
    btn2: TButton;
    tv1: TTreeView;
    shp1: TShape;
    procedure btnConnectClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtUserChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure ibDtBs1AfterConnect(Sender: TObject);
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
 ibDtBs1.DatabaseName:= mmo1.Text;
 ibDtBs1.Open;
end;

procedure TFrmConnectionEditor.btn2Click(Sender: TObject);
begin
mmo1.Lines.Add(edtIP.Text +'/' + edtPort.Text +':' +edtSciezka.Text);
//(edtUser.Text +' '+ edtPassword.Text);
end;

procedure TFrmConnectionEditor.btnConnectClick(Sender: TObject);
begin
ibDtBs1.Close;
ibDtBs1.Params.Clear;
ibDtBs1.Connected;
ibDtBs1.DatabaseName := edtSciezka.Text; //'127.0.0.1/3050:D:\Bazy\Dziennik2021\DZIENNIK2021.FDB';
ibDtBs1.Params.Add('user_name=' + edtUser.Text);
ibDtBs1.Params.Add('password=' + edtPassword.Text);
ibDtBs1.Open;
//mmo1.Lines.Add(edtIP.Text +'/' + edtPort.Text +':' +edtSciezka.Text);
end;

procedure TFrmConnectionEditor.edtUserChange(Sender: TObject);
begin
//edtParametry.Text:= edtUser.Text + edtPassword.Text;
end;

procedure TFrmConnectionEditor.ibDtBs1AfterConnect(Sender: TObject);
begin
shp1.Brush.Color:=clLime;
end;

end.
