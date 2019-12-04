unit MainUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdContext, Vcl.ComCtrls,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdCustomHTTPServer,
  IdHTTPServer, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    IdHTTPServer1: TIdHTTPServer;
    StatusBar1: TStatusBar;
    Memo1: TMemo;
    Label1: TLabel;
    procedure IdHTTPServer1Connect(AContext: TIdContext);
    procedure IdHTTPServer1Disconnect(AContext: TIdContext);
    procedure IdHTTPServer1SessionStart(Sender: TIdHTTPSession);
    procedure IdHTTPServer1SessionEnd(Sender: TIdHTTPSession);
    procedure IdHTTPServer1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdHTTPServer1CreateSession(ASender: TIdContext;
      var VHTTPSession: TIdHTTPSession);
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Log(log_string: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Log(log_string: string);
begin
  Memo1.Lines.Add(log_string);
end;

procedure TForm1.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  Log(Format('CommandGet: %s, Doc: %s, URI: %s, Params: %s',
    [ARequestInfo.Command, ARequestInfo.Document, ARequestInfo.URI, ARequestInfo.Params.Text]));
end;

procedure TForm1.IdHTTPServer1Connect(AContext: TIdContext);
begin
  Log('On connect');
end;

procedure TForm1.IdHTTPServer1CreateSession(ASender: TIdContext;
  var VHTTPSession: TIdHTTPSession);
begin
  Log('On Create session');
end;

procedure TForm1.IdHTTPServer1Disconnect(AContext: TIdContext);
begin
  Log('On disconnect');
end;

procedure TForm1.IdHTTPServer1SessionEnd(Sender: TIdHTTPSession);
begin
  Log('On session end');
end;

procedure TForm1.IdHTTPServer1SessionStart(Sender: TIdHTTPSession);
begin
  Log('On session start');
end;

procedure TForm1.IdHTTPServer1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  Log('On Status: ' + AStatusText);
end;

end.

