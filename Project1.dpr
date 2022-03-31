program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {FrmMain},
  ConnectionEditor in 'ConnectionEditor.pas' {FrmConnectionEditor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmConnectionEditor, FrmConnectionEditor);
  Application.Run;
end.
