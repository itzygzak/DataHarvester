unit ConnectionEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel, RzRadGrp, Data.DB, IBX.IBDatabase, IBX.IBDatabaseInfo, Vcl.ComCtrls;



type TlistaBaz = class
  nazwaBazy : string;
  parametryPolaczenia : string;
  userLogin : string;
  userHaslo : string;
end;

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
    edtIP: TEdit;
    edtPort: TEdit;
    edtSciezka: TEdit;
    tv1: TTreeView;
    shp1: TShape;
    edt1: TEdit;
    btn3: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure ibDtBs1AfterConnect(Sender: TObject);
    procedure WypelnijListe;
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConnectionEditor: TFrmConnectionEditor;
  bazy : array of TlistaBaz;

implementation

{$R *.dfm}


procedure TFrmConnectionEditor.WypelnijListe;
  var
  i : integer;
  item : TListItem;
begin
  for i:=low(bazy) to high(bazy) do
    begin
 //     if spelnionywarunekfiltru then
        begin
         // item := Tv1.items.add;
          item.caption := bazy[i].nazwaBazy;
          item.subitems.add(bazy[i].parametryPolaczenia);
          item.SubItems.Add(bazy[i].userLogin);
          item.SubItems.Add(bazy[i].userHaslo);
         //i tutaj zajmujemy siê nasz¹ w³aœciwoœci¹ data
          item.data := @bazy[i]; //wskaŸnik do konkretnego obiektu
        end;
    end;
end;

procedure TFrmConnectionEditor.btn3Click(Sender: TObject);
begin
WypelnijListe;
end;

procedure TFrmConnectionEditor.btnConnectClick(Sender: TObject);
var Node : TTreeNode;
begin
ibDtBs1.Close;
ibDtBs1.Params.Clear;
ibDtBs1.Connected;
ibDtBs1.DatabaseName := edtSciezka.Text; //'127.0.0.1/3050:D:\Bazy\Dziennik2021\DZIENNIK2021.FDB';
ibDtBs1.Params.Add('user_name=' + edtUser.Text);
ibDtBs1.Params.Add('password=' + edtPassword.Text);
ibDtBs1.Open;

Node := tv1.Items.Add(tv1.Selected, edtNazwaPol.Text);
Node := tv1.Items.AddChild(tv1.Selected, edtSciezka.Text);// + edtUser.Text + edtPassword.Text);

//Node.Selected:=True;
//Node.EditText;

//mmo1.Lines.Add(edtIP.Text +'/' + edtPort.Text +':' +edtSciezka.Text);
end;

procedure TFrmConnectionEditor.ibDtBs1AfterConnect(Sender: TObject);
begin
shp1.Brush.Color:=clLime;
end;

end.
