unit U_CadastrosFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastrosFornecedores: Tfrm_CadastrosFornecedores;

implementation

{$R *.dfm}

uses U_LookUp;

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
  LookUp.FD_qryEstados.Open();
  LookUp.FD_qryEstados.FetchAl;
end;

end.
