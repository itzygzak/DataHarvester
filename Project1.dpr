program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {FrmMain},
  ConnectionEditor in 'ConnectionEditor.pas' {FrmConnectionEditor},
  Settnigs in 'Settnigs.pas' {FrmSettnigs};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmConnectionEditor, FrmConnectionEditor);
  Application.CreateForm(TFrmSettnigs, FrmSettnigs);
  Application.Run;
end.
