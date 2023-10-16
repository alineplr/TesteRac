unit untDetalheConsumoAPIGitHub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, Vcl.ExtCtrls, System.JSON, REST.Types,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmDetalheConsumoAPIGitHub = class(TForm)
    Panel1: TPanel;
    edLogin: TcxTextEdit;
    cxLabel1: TcxLabel;
    edUrl: TcxTextEdit;
    cxLabel2: TcxLabel;
    edOrganizationsUrl: TcxTextEdit;
    cxLabel3: TcxLabel;
    edReposUrl: TcxTextEdit;
    cxLabel4: TcxLabel;
    edTipo: TcxTextEdit;
    cxLabel5: TcxLabel;
    edCompaninha: TcxTextEdit;
    cxLabel7: TcxLabel;
    edBlog: TcxTextEdit;
    cxLabel8: TcxLabel;
    edLocalixacao: TcxTextEdit;
    cxLabel9: TcxLabel;
    edEmail: TcxTextEdit;
    cxLabel10: TcxLabel;
    edTwitter: TcxTextEdit;
    cxLabel11: TcxLabel;
    edNome: TcxTextEdit;
    cxLabel6: TcxLabel;
    Panel3: TPanel;
    cxLabel12: TcxLabel;
    btnFechar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    JsonResponse: TJSONObject;
    vTipoPesquisa : Integer;
  end;

var
  frmDetalheConsumoAPIGitHub: TfrmDetalheConsumoAPIGitHub;

implementation

{$R *.dfm}

procedure TfrmDetalheConsumoAPIGitHub.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmDetalheConsumoAPIGitHub.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
begin
  SelectNext(ActiveControl as TWinControl,True,True);
  key:=#0;
end;
end;

procedure TfrmDetalheConsumoAPIGitHub.FormShow(Sender: TObject);
begin
edLogin.Text := JsonResponse.GetValue('login').Value;
edUrl.Text := JsonResponse.GetValue('url').Value;
if vTipoPesquisa <> 2 then
  edOrganizationsUrl.Text := JsonResponse.GetValue('organizations_url').Value;

edReposUrl.Text := JsonResponse.GetValue('repos_url').Value;
edTipo.Text := JsonResponse.GetValue('type').Value;
if vTipoPesquisa in [0,2] then
  begin
  edNome.Text := JsonResponse.GetValue('name').Value;
  edCompaninha.Text := JsonResponse.GetValue('company').Value;
  edBlog.Text := JsonResponse.GetValue('blog').Value;
  edLocalixacao.Text := JsonResponse.GetValue('location').Value;
  edEmail.Text := JsonResponse.GetValue('email').Value;
  edTwitter.Text := JsonResponse.GetValue('twitter_username').Value;
  end;
end;

end.
