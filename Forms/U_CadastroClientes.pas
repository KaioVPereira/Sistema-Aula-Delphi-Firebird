unit U_CadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, U_constantes;

type
  Tfrm_CadClientes = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_CLIENTES: TIntegerField;
    fd_QueryCadastroRAZAO_SOCIAL: TStringField;
    fd_QueryCadastroFANTASIA: TStringField;
    fd_QueryCadastroCPF_CNPJ: TStringField;
    fd_QueryCadastroTIPO_FJ: TStringField;
    fd_QueryCadastroNOME: TStringField;
    fd_QueryCadastroEMAIL: TStringField;
    fd_QueryCadastroSITE: TStringField;
    fd_QueryCadastroBAIRRO: TStringField;
    fd_QueryCadastroENDERECO: TStringField;
    fd_QueryCadastroCOMPLEMENTO: TStringField;
    fd_QueryCadastroNUMERO: TStringField;
    fd_QueryCadastroIE_RG: TStringField;
    lb_controle: TLabel;
    txt_controle: TDBEdit;
    Label2: TLabel;
    txt_razao: TDBEdit;
    Label3: TLabel;
    txt_fantasia: TDBEdit;
    Label4: TLabel;
    txt_CNPJCPF: TDBEdit;
    cbbox_tipopessoa: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    txt_nome: TDBEdit;
    Label7: TLabel;
    txt_email: TDBEdit;
    Label8: TLabel;
    txt_site: TDBEdit;
    Label9: TLabel;
    txt_endereco: TDBEdit;
    Label10: TLabel;
    txt_bairro: TDBEdit;
    Label11: TLabel;
    txt_complemento: TDBEdit;
    Label12: TLabel;
    txt_numero: TDBEdit;
    Label13: TLabel;
    txt_ierg: TDBEdit;
    fd_QueryCadastroDT_EXCLUIDO: TDateField;
    fd_QueryCadastroCONTROLE_CIDADE: TIntegerField;
    fd_QueryCadastroCONTROLE_ESTADO: TIntegerField;
    Cbox_Estado: TDBLookupComboBox;
    cbox_cidades: TDBLookupComboBox;
    lb_Estado: TLabel;
    lb_cidade: TLabel;
    fd_QueryCadastroNOME_CIDADE: TStringField;
    fd_QueryCadastroUF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cbox_EstadoExit(Sender: TObject);
  private
    Fmodo: TModoAbertura;
    { Private declarations }
  public

  property modo: TModoAbertura read Fmodo write Fmodo;

  end;

var
  frm_CadClientes: Tfrm_CadClientes;

implementation

{$R *.dfm}

uses U_LookUp;

procedure Tfrm_CadClientes.btn_gravarClick(Sender: TObject);
begin
  fd_QueryCadastro.FieldByName('UF').AsString := Cbox_Estado.Text;
  fd_QueryCadastro.FieldByName('NOME_CIDADE').AsString := cbox_cidades.Text;
  inherited;
  txt_controle.Enabled     := false;
  txt_razao.Enabled        := false;
  txt_fantasia.Enabled     := false;
  txt_CNPJCPF.Enabled      := false;
  txt_nome.Enabled         := false;
  txt_email.Enabled        := false;
  txt_site.Enabled         := false;
  txt_endereco.Enabled     := false;
  txt_bairro.Enabled       := false;
  txt_complemento.Enabled  := false;
  txt_numero.Enabled       := false;
  txt_ierg.Enabled         := false;
  cbbox_tipopessoa.Enabled := false;
  Cbox_Estado.Enabled      := false;
  cbox_cidades.Enabled     := false;

  txt_controle.Clear;
  txt_controle.Clear;
  txt_razao.Clear;
  txt_fantasia.Clear;
  txt_CNPJCPF.Clear;
  txt_nome.Clear;
  txt_email.Clear;
  txt_site.Clear;
  txt_endereco.Clear;
  txt_bairro.Clear;
  txt_complemento.Clear;
  txt_numero.Clear;
  txt_ierg.Clear;
  //cbbox_tipopessoa.Clear;
end;

procedure Tfrm_CadClientes.btn_novoClick(Sender: TObject);
begin
  inherited;

  LookUp.FD_qryEstados.Open();
  LookUp.FD_qryEstados.FetchAll;


  txt_razao.Enabled        := true;
  txt_fantasia.Enabled     := true;
  txt_CNPJCPF.Enabled      := true;
  txt_nome.Enabled         := true;
  txt_email.Enabled        := true;
  txt_site.Enabled         := true;
  txt_endereco.Enabled     := true;
  txt_bairro.Enabled       := true;
  txt_complemento.Enabled  := true;
  txt_numero.Enabled       := true;
  txt_ierg.Enabled         := true;
  cbbox_tipopessoa.Enabled := true;
  Cbox_Estado.Enabled      := true;
  cbox_cidades.Enabled     := true;

end;

procedure Tfrm_CadClientes.Cbox_EstadoExit(Sender: TObject);
begin

  inherited;
  LookUp.FD_qryCidades.Close;
  LookUp.FD_qryCidades.SQL.clear;
  LookUp.FD_qryCidades.SQL.Add('SELECT * FROM CIDADE WHERE UF ='+ QuotedStr(Cbox_Estado.Text));

  LookUp.FD_qryCidades.Open();
  LookUp.FD_qryCidades.FetchAll;


end;

procedure Tfrm_CadClientes.FormCreate(Sender: TObject);
begin
  inherited;
  Fmodo := maInicial;

end;

procedure Tfrm_CadClientes.FormShow(Sender: TObject);
begin
  inherited;

  //LookUp.FD_qryEstados.Open();
  //LookUp.FD_qryEstados.FetchAll;

  //LookUp.FD_qryCidades.Open();
  //LookUp.FD_qryCidades.FetchAll;


  txt_controle.Enabled     := false;
  txt_razao.Enabled        := false;
  txt_fantasia.Enabled     := false;
  txt_CNPJCPF.Enabled      := false;
  txt_nome.Enabled         := false;
  txt_email.Enabled        := false;
  txt_site.Enabled         := false;
  txt_endereco.Enabled     := false;
  txt_bairro.Enabled       := false;
  txt_complemento.Enabled  := false;
  txt_numero.Enabled       := false;
  txt_ierg.Enabled         := false;
  cbbox_tipopessoa.Enabled := false;
  Cbox_Estado.Enabled      := false;
  cbox_cidades.Enabled     := false;

  if Fmodo = maInicial then
    Begin
    txt_controle.Clear;
    txt_controle.Clear;
    txt_razao.Clear;
    txt_fantasia.Clear;
    txt_CNPJCPF.Clear;
    txt_nome.Clear;
    txt_email.Clear;
    txt_site.Clear;
    txt_endereco.Clear;
    txt_bairro.Clear;
    txt_complemento.Clear;
    txt_numero.Clear;
    txt_ierg.Clear
    End;

  if Fmodo = maInclusao then
  btn_novoClick(Sender);

end;

end.
