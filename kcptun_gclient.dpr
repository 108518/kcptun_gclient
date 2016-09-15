program kcptun_gclient;

{$IFOPT D-}{$WEAKLINKRTTI ON}{$ENDIF}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

uses
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  Main in 'Main.pas' {FMain},
  Class_ClientNode in 'Class_ClientNode.pas',
  PublicVar in 'PublicVar.pas',
  Interface_op in 'Interface_op.pas',
  Thread_ExecDOSCommand in 'Thread_ExecDOSCommand.pas',
  VerInfo in 'VerInfo.pas',
  OneCopy in 'OneCopy.pas',
  superdate in 'superobject\superdate.pas',
  superobject in 'superobject\superobject.pas',
  supertimezone in 'superobject\supertimezone.pas',
  supertypes in 'superobject\supertypes.pas',
  superxmlparser in 'superobject\superxmlparser.pas',
  PublicFun in 'PublicFun.pas',
  Photo in 'Photo.pas' {FPhoto};

{$R *.res}

{$SetPEFlags IMAGE_FILE_RELOCS_STRIPPED}

var
  VerInfoRes: TVerInfoRes;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'KCPTun �ͻ������ù�����';
  VerInfoRes:= TVerInfoRes.Create(Application.ExeName);
  try
    PublicVar.FileVer:= Copy(VerInfoRes.FileVersion, 1, (LastDelimiter('.', (VerInfoRes.FileVersion)) - 1));
  finally
    VerInfoRes.Free;
  end;       //ȡEXE�ļ��İ汾��Ϣ
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFPhoto, FPhoto);
  Application.Run;
end.
