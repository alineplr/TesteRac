program prjRacGitHub;

uses
  Vcl.Forms,
  untConsumoAPIGitHub in 'untConsumoAPIGitHub.pas' {frmConsumoAPIGitHub},
  untDetalheConsumoAPIGitHub in 'untDetalheConsumoAPIGitHub.pas' {frmDetalheConsumoAPIGitHub};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Projeto Rac';
  Application.CreateForm(TfrmConsumoAPIGitHub, frmConsumoAPIGitHub);
  Application.Run;
end.
