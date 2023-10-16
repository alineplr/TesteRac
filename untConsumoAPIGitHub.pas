unit untConsumoAPIGitHub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.ExtCtrls,
  IPPeerClient, Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, System.JSON, REST.Types,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxGroupBox, cxRadioGroup, Vcl.Menus,
  cxButtons, dxBarBuiltInMenu, cxLabel, cxPC;

type
  TfrmConsumoAPIGitHub = class(TForm)
    Panel1: TPanel;
    pgGeral: TcxPageControl;
    tbConsulta: TcxTabSheet;
    tbManutencao: TcxTabSheet;
    pnConsultaGeral: TPanel;
    pnConsultaPrinc: TPanel;
    Panel2: TPanel;
    rgrPesquisa: TcxRadioGroup;
    lbPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    lbOwner: TLabel;
    edOwner: TcxTextEdit;
    Label2: TLabel;
    mmResultado: TcxMemo;
    pnManutGeral: TPanel;
    pnlManutBotao: TPanel;
    pnManutPrinc: TPanel;
    rgrManutRepositorio: TcxRadioGroup;
    Label4: TLabel;
    edManutRepositorio: TcxTextEdit;
    lblManutProprietario: TLabel;
    edManutProprietario: TcxTextEdit;
    Label1: TLabel;
    mmManutResultado: TcxMemo;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    btnFechar: TcxButton;
    btConsultar: TcxButton;
    btDetalhe: TcxButton;
    btExecutar: TcxButton;
    procedure rgrPesquisaClick(Sender: TObject);
    procedure rgrManutRepositorioClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure btDetalheClick(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    const
      cAccept: string = 'Este é um exemplo de texto';
      cAutorizacao: string = 'Bearer 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';
      cVersao: string = '2022-11-28';

    type TRetornoApi = Record
      JsonResponse  : TJSONObject;
      NrStatus : Integer;
    end;
    function fMontaURL(pTipo : Integer) : String;
    function fCriarRepositorio(pMetodo : String) : TRetornoApi;
    function fRemoverRepositorio : TRetornoApi;
    function fConsultar(pMetodo : String) : TRetornoApi;
    function fValidaManutencao : Boolean;
    function fValidaConsulta : Boolean;
  public
    { Public declarations }
  end;

var
  frmConsumoAPIGitHub: TfrmConsumoAPIGitHub;

implementation

uses untDetalheConsumoAPIGitHub;

{$R *.dfm}

procedure TfrmConsumoAPIGitHub.btConsultarClick(Sender: TObject);
var
  vRetornoAPpi: TRetornoApi;
begin
mmResultado.Clear;
if fValidaConsulta then
  begin
  vRetornoAPpi := fConsultar('get');
  if vRetornoAPpi.JsonResponse.ToString <> '{}' then
    begin
      mmResultado.Lines.Add(vRetornoAPpi.JsonResponse.ToString);
      ShowMessage('Consulta realizada sucesso!');
    end;
  end;
  if vRetornoAPpi.NrStatus = 800 then
    begin
      ShowMessage('Erro ao realiar a consulta.');
    end;
end;

procedure TfrmConsumoAPIGitHub.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmConsumoAPIGitHub.btDetalheClick(Sender: TObject);
begin
if frmDetalheConsumoAPIGitHub = nil then
  begin
    Application.CreateForm(TfrmDetalheConsumoAPIGitHub,frmDetalheConsumoAPIGitHub);
    frmDetalheConsumoAPIGitHub.JsonResponse := TJSONObject.ParseJSONValue(mmResultado.Text) as TJSONObject;
    frmDetalheConsumoAPIGitHub.vTipoPesquisa := rgrPesquisa.ItemIndex;
    frmDetalheConsumoAPIGitHub.ShowModal;
    FreeAndNil(frmDetalheConsumoAPIGitHub);
  end;

end;

procedure TfrmConsumoAPIGitHub.btExecutarClick(Sender: TObject);
var
  vRetornoAPpi: TRetornoApi;
begin
mmManutResultado.Clear;
if fValidaManutencao then
  begin
  if rgrManutRepositorio.ItemIndex = 0 then
    begin
    vRetornoAPpi := fCriarRepositorio('post');
    if vRetornoAPpi.JsonResponse.ToString <> '{}' then
      begin
        mmManutResultado.Lines.Add(vRetornoAPpi.JsonResponse.ToString);
        ShowMessage('Repositório criado com sucesso!');
      end;
    end;
    if vRetornoAPpi.NrStatus = 800 then
      begin
        ShowMessage('Erro ao criar repositório');
      end;
    if rgrManutRepositorio.ItemIndex = 1 then
      begin
      vRetornoAPpi := fRemoverRepositorio;
      if vRetornoAPpi.NrStatus = 200 then
        begin
          ShowMessage('Repositório excluído com sucesso!');
        end
      else
        begin
          ShowMessage('Erro ao excluir repositório');
        end;
      end;
  end;
end;

function TfrmConsumoAPIGitHub.fConsultar(pMetodo: String): TRetornoApi;
var
  RESTClientGit: TRESTClient;
  RESTRequestGit: TRESTRequest;
  RESTResponseGit: TRESTResponse;
  JsonResponse: TJSONObject;
  JSArray: TJSONArray;
begin
  JsonResponse := TJSONObject.Create(nil);
  RESTClientGit := TRESTClient.Create(nil);
  RESTRequestGit := TRESTRequest.Create(nil);
  RESTResponseGit := TRESTResponse.Create(nil);
  Result.NrStatus := 0;
  Result.JsonResponse := JsonResponse;
  RESTRequestGit.Client := RESTClientGit;
  RESTRequestGit.Response := RESTResponseGit;
  RESTRequestGit.Method := TRESTRequestMethod.rmGET;
  RESTRequestGit.Params.AddItem('Accept', cAccept, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('Authorization', cAutorizacao, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('X-GitHub-Api-Version', cVersao, pkHTTPHEADER, [poDoNotEncode]);
  RESTClientGit.BaseURL := fMontaURL(0);

  try
    RESTRequestGit.Execute;
    if RESTResponseGit.Status.ClientError then
      begin
        Result.NrStatus := 800;
      end;
    if RESTResponseGit.Status.SuccessOK_200 then
      begin
        if rgrPesquisa.ItemIndex = 0 then
          begin
            Result.JsonResponse := RESTResponseGit.JSONValue as TJSONObject;
          end;
        if rgrPesquisa.ItemIndex = 1 then
          begin
            JSArray := RESTResponseGit.JSONValue as TJSONArray;
            Result.JsonResponse := (JSArray.Items[0] as TJSONObject);
          end;
        Result.NrStatus := 200;
      end;
  Except
    Result.NrStatus := 800;
  end;

end;

function TfrmConsumoAPIGitHub.fCriarRepositorio(pMetodo : String) : TRetornoApi;
var
  RESTClientGit: TRESTClient;
  RESTRequestGit: TRESTRequest;
  RESTResponseGit: TRESTResponse;
  JsonResponse: TJSONObject;
begin
  JsonResponse := TJSONObject.Create(nil);
  RESTClientGit := TRESTClient.Create(nil);
  RESTRequestGit := TRESTRequest.Create(nil);
  RESTResponseGit := TRESTResponse.Create(nil);
  Result.NrStatus := 0;
  Result.JsonResponse := JsonResponse;
  RESTRequestGit.Client := RESTClientGit;
  RESTRequestGit.Response := RESTResponseGit;
  RESTRequestGit.Params.AddItem('Accept', cAccept, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('Authorization', cAutorizacao, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('X-GitHub-Api-Version', cVersao, pkHTTPHEADER, [poDoNotEncode]);

  RESTRequestGit.Method := TRESTRequestMethod.rmPOST;
  RESTClientGit.BaseURL := fMontaURL(1);
  RESTRequestGit.AddBody('{"name":"' + edManutRepositorio.Text + '"}',TRESTContentType.ctAPPLICATION_JSON);

  try
    RESTRequestGit.Execute;
    if RESTResponseGit.Status.SucessCreated_201 then
      begin
        Result.NrStatus := 201;
        Result.JsonResponse := RESTResponseGit.JSONValue as TJSONObject;
      end;
    if RESTResponseGit.Status.ClientError then
      begin
        Result.NrStatus := 800;
      end;

  Except
    Result.NrStatus := 800;
  end;
end;

function TfrmConsumoAPIGitHub.fMontaURL(pTipo : Integer): String;
begin
  if pTipo = 0 then
    begin
     if rgrPesquisa.ItemIndex = 0 then
      begin
        Result := 'https://api.github.com/users/' + edPesquisa.Text;
      end;

     if rgrPesquisa.ItemIndex = 1 then
      begin
        Result := ' https://api.github.com/repos/' + edOwner.Text + '/' + edPesquisa.Text + '/collaborators';
      end;

     if rgrPesquisa.ItemIndex = 2 then
      begin
        Result := 'https://api.github.com/orgs/' + edPesquisa.Text;
      end;
    end;

  if pTipo = 1 then
    begin
      Result := 'https://api.github.com/user/repos/';
    end;

  if pTipo = 2 then
    begin
      Result := 'https://api.github.com/repos/'  + edManutProprietario.Text + '/' + edManutRepositorio.Text;
    end;
end;


procedure TfrmConsumoAPIGitHub.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  SelectNext(ActiveControl as TWinControl,True,True);
  key:=#0;
end;
end;

function TfrmConsumoAPIGitHub.fRemoverRepositorio: TRetornoApi;
var
  RESTClientGit: TRESTClient;
  RESTRequestGit: TRESTRequest;
  RESTResponseGit: TRESTResponse;
  JsonResponse: TJSONObject;
begin
  JsonResponse := TJSONObject.Create(nil);
  RESTClientGit := TRESTClient.Create(nil);
  RESTRequestGit := TRESTRequest.Create(nil);
  RESTResponseGit := TRESTResponse.Create(nil);
  Result.NrStatus := 0;
  Result.JsonResponse := JsonResponse;
  RESTRequestGit.Client := RESTClientGit;
  RESTRequestGit.Response := RESTResponseGit;
  RESTRequestGit.Params.AddItem('Accept', cAccept, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('Authorization', cAutorizacao, pkHTTPHEADER, [poDoNotEncode]);
  RESTRequestGit.Params.AddItem('X-GitHub-Api-Version', cVersao, pkHTTPHEADER, [poDoNotEncode]);

  RESTRequestGit.Method := TRESTRequestMethod.rmDELETE;
  RESTClientGit.BaseURL := fMontaURL(2);
  //RESTRequestGit.AddBody('{"name":"' + edManutRepositorio.Text + '"}',TRESTContentType.ctAPPLICATION_JSON);

  try
    RESTRequestGit.Execute;
    if RESTResponseGit.Status.ClientError then
      begin
        Result.NrStatus := 800;
      end
    else
      begin
        Result.NrStatus := 200;
        Result.JsonResponse := RESTResponseGit.JSONValue as TJSONObject;
      end;

  Except
    Result.NrStatus := 800;
  end;

end;

function TfrmConsumoAPIGitHub.fValidaConsulta: Boolean;
begin
  Result := True;
  if edPesquisa.Text = '' then
    begin
      ShowMessage('Nome Repositório é obrigatório.');
      Result := False;
    end;
  if rgrPesquisa.ItemIndex = 1 then
    begin
      if edOwner.Text = '' then
      begin
        ShowMessage('Nome Proprietário é obrigatório.');
        Result := False;
      end;
    end;
end;

function TfrmConsumoAPIGitHub.fValidaManutencao: Boolean;
begin
  Result := True;
  if edManutRepositorio.Text = '' then
    begin
      ShowMessage('Nome Repositório é obrigatório.');
      Result := False;
    end;
end;

procedure TfrmConsumoAPIGitHub.rgrManutRepositorioClick(Sender: TObject);
begin
  edManutRepositorio.Clear;
  mmManutResultado.Clear;
  edManutProprietario.Clear;
 if rgrManutRepositorio.ItemIndex = 0 then
  begin
    lblManutProprietario.Visible := False;
    edManutProprietario.Visible := False;
  end;

 if rgrManutRepositorio.ItemIndex = 1 then
  begin
    lblManutProprietario.Visible := True;
    edManutProprietario.Visible := True;
  end;
end;

procedure TfrmConsumoAPIGitHub.rgrPesquisaClick(Sender: TObject);
begin
  edPesquisa.Clear;
  mmResultado.Clear;
  edOwner.Clear;
 if rgrPesquisa.ItemIndex = 0 then
  begin
    lbPesquisa.Caption := 'Nome Usuário';
    edOwner.Visible := False;
    lbOwner.Visible := False;
  end;

 if rgrPesquisa.ItemIndex = 1 then
  begin
    lbPesquisa.Caption := 'Nome Repositório';
    edOwner.Visible := True;
    lbOwner.Visible := True;
  end;

 if rgrPesquisa.ItemIndex = 2 then
  begin
    lbPesquisa.Caption := 'Nome Organização';
    edOwner.Visible := False;
    lbOwner.Visible := False;
  end;
end;

end.
