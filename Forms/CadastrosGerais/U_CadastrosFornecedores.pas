unit U_CadastrosFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, U_constantes;

type
  Tfrm_CadastrosFornecedores = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField;
    fd_QueryCadastroRAZAO_SOCIAL: TStringField;
    fd_QueryCadastroFANTASIA: TStringField;
    fd_QueryCadastroCNPJ: TStringField;
    fd_QueryCadastroENDERECO: TStringField;
    fd_QueryCadastroBAIRRO: TStringField;
    fd_QueryCadastroNUMERO: TStringField;
    fd_QueryCadastroCONTROLE_CIDADE: TIntegerField;
    fd_QueryCadastroNOME_CIDADE: TStringField;
    fd_QueryCadastroCONTROLE_ESTADO: TIntegerField;
    fd_QueryCadastroEMAIL: TStringField;
    lb_controle: TLabel;
    lb_razao: TLabel;
    lb_fantasia: TLabel;
    lb_CNPJ: TLabel;
    lb_endereco: TLabel;
    lb_bairro: TLabel;
    lb_numero: TLabel;
    fd_QueryCadastroUF: TStringField;
    lb_UF: TLabel;
    lb_cidade: TLabel;
    lb_email: TLabel;
    cbox_UF: TDBLookupComboBox;
    cbox_Cidade: TDBLookupComboBox;
    txt_controle: TDBEdit;
    txt_Razao: TDBEdit;
    txt_Fantasia: TDBEdit;
    txt_CNPJ: TDBEdit;
    txt_Endereco: TDBEdit;
    txt_Bairro: TDBEdit;
    txt_Numero: TDBEdit;
    txt_Email: TDBEdit;
    procedure cbox_UFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure ValidaModoAbertura;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
    Fmodo : TModoAbertura;
  public
    { Public declarations }
    property modo: TModoAbertura read Fmodo write Fmodo;
  end;

var
  frm_CadastrosFornecedores: Tfrm_CadastrosFornecedores;

implementation

{$R *.dfm}

uses U_LookUp;

procedure Tfrm_CadastrosFornecedores.btn_gravarClick(Sender: TObject);
begin
  fd_QueryCadastro.FieldByName('UF').AsString := cbox_UF.Text;
  fd_QueryCadastro.FieldByName('NOME_CIDADE').AsString := cbox_Cidade.Text;
  inherited;
  txt_controle.Enabled := false;
  txt_Razao.Enabled    := false;
  txt_Fantasia.Enabled := false;
  txt_CNPJ.Enabled     := false;
  txt_Endereco.Enabled := false;
  txt_Bairro.Enabled   := false;
  txt_Numero.Enabled   := false;
  txt_Email.Enabled    := false;
  cbox_UF.Enabled      := false;
  cbox_Cidade.Enabled  := false;

  txt_controle.Clear;
  txt_Razao.Clear;
  txt_Fantasia.Clear;
  txt_CNPJ.Clear;
  txt_Endereco.Clear;
  txt_Bairro.Clear;
  txt_Numero.Clear;
  txt_Email.Clear;


end;

procedure Tfrm_CadastrosFornecedores.btn_novoClick(Sender: TObject);
begin
  inherited;
    txt_controle.Enabled := False;
    txt_Razao.Enabled    := true;
    txt_Fantasia.Enabled := true;
    txt_CNPJ.Enabled     := true;
    txt_Endereco.Enabled := true;
    txt_Bairro.Enabled   := true;
    txt_Numero.Enabled   := true;
    txt_Email.Enabled    := true;
    cbox_UF.Enabled      := true;
    cbox_Cidade.Enabled  := true;
end;

procedure Tfrm_CadastrosFornecedores.cbox_UFExit(Sender: TObject);
begin
  inherited;
  LookUp.FD_qryCidades.Close;
  LookUp.FD_qryCidades.SQL.clear;
  LookUp.FD_qryCidades.SQL.Add('SELECT * FROM CIDADE WHERE UF ='+ QuotedStr(cbox_UF.Text));

  LookUp.FD_qryCidades.Open();
  LookUp.FD_qryCidades.FetchAll;
end;

procedure Tfrm_CadastrosFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  modo := maInicial;
  ValidaModoAbertura;
  LookUp.FD_qryEstados.Open();
  LookUp.FD_qryEstados.FetchAll;



end;

procedure Tfrm_CadastrosFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  ValidaModoAbertura;
end;

procedure Tfrm_CadastrosFornecedores.ValidaModoAbertura;
begin
  if modo = maInicial then
    begin
      txt_controle.Enabled := false;
      txt_Razao.Enabled    := false;
      txt_Fantasia.Enabled := false;
      txt_CNPJ.Enabled     := false;
      txt_Endereco.Enabled := false;
      txt_Bairro.Enabled   := false;
      txt_Numero.Enabled   := false;
      txt_Email.Enabled    := false;
      cbox_UF.Enabled      := false;
      cbox_Cidade.Enabled  := false;

      txt_controle.Clear;
      txt_Razao.Clear;
      txt_Fantasia.Clear;
      txt_CNPJ.Clear;
      txt_Endereco.Clear;
      txt_Bairro.Clear;
      txt_Numero.Clear;
      txt_Email.Clear;
    end

  else if modo = maInclusao then
    begin
      btn_novoClick(Self);
    end

  else if modo = maEdicao then
    begin
      txt_controle.Enabled := False;
      txt_Razao.Enabled    := true;
      txt_Fantasia.Enabled := true;
      txt_CNPJ.Enabled     := true;
      txt_Endereco.Enabled := true;
      txt_Bairro.Enabled   := true;
      txt_Numero.Enabled   := true;
      txt_Email.Enabled    := true;
      cbox_UF.Enabled      := true;
      cbox_Cidade.Enabled  := true;

      fd_QueryCadastro.Edit;
    end

  else if modo = maConsulta then
    begin
      txt_controle.Enabled := false;
      txt_Razao.Enabled    := false;
      txt_Fantasia.Enabled := false;
      txt_CNPJ.Enabled     := false;
      txt_Endereco.Enabled := false;
      txt_Bairro.Enabled   := false;
      txt_Numero.Enabled   := false;
      txt_Email.Enabled    := false;
      cbox_UF.Enabled      := false;
      cbox_Cidade.Enabled  := false;
    end;
  ;

end;

end.
