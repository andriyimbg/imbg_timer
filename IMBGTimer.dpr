program IMBGTimer;

uses
  Vcl.Forms,
  MainUnit1 in 'MainUnit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
