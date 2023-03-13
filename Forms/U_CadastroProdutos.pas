unit U_CadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, U_constantes, U_LookUp;
type
  Tfrm_CadastroProdutos = class(Tfrm_Principal)
    fd_QueryCadastroCODIGO: TIntegerField;
    fd_QueryCadastroDESCRICAO: TStringField;
    fd_QueryCadastroDEPARTAMENTO: TIntegerField;
    fd_QueryCadastroCOLECAO: TIntegerField;
    fd_QueryCadastroGRUPO: TIntegerField;
    fd_QueryCadastroLINHA: TIntegerField;
    fd_QueryCadastroMARCA: TIntegerField;
    fd_QueryCadastroUNIDADE: TIntegerField;
    fd_QueryCadastroPESO_LIQUIDO: TSingleField;
    fd_QueryCadastroPESO_BRUTO: TSingleField;
    fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField;
    fd_QueryCadastroQTD: TSingleField;
    fd_QueryCadastroCUSTO: TSingleField;
    fd_QueryCadastroVALOR_UNITARIO: TSingleField;
    lb_codigo: TLabel;
    lb_descricao: TLabel;
    lb_departamento: TLabel;
    lb_colecao: TLabel;
    lb_grupo: TLabel;
    lb_linha: TLabel;
    lb_marca: TLabel;
    lb_unidade: TLabel;
    lb_pesobruto: TLabel;
    txt_pesobruto: TDBEdit;
    lb_pesolquido: TLabel;
    txt_pesoliqudo: TDBEdit;
    lb_fornecedor: TLabel;
    lb_quantidade: TLabel;
    txt_quantidade: TDBEdit;
    lb_custo: TLabel;
    txt_custo: TDBEdit;
    lb_valorunitario: TLabel;
    txt_valorunitario: TDBEdit;
    txt_codigo: TDBEdit;
    txt_descricao: TDBEdit;
    cbox_Departamentto: TDBLookupComboBox;
    cbox_Colecao: TDBLookupComboBox;
    cbox_Grupo: TDBLookupComboBox;
    cbox_linha: TDBLookupComboBox;
    cbox_marca: TDBLookupComboBox;
    cbox_Unidade: TDBLookupComboBox;
    cbox_Fornecedor: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fmodo : TModoAbertura;
    procedure ValidaAbertura;
    { Private declarations }
  public
    property modo: TModoAbertura read Fmodo write Fmodo;
    { Public declarations }
  end;

var
  frm_CadastroProdutos: Tfrm_CadastroProdutos;

implementation

{$R *.dfm}

{ Tfrm_CadastroProdutos }

procedure Tfrm_CadastroProdutos.btn_gravarClick(Sender: TObject);
begin
  inherited;
  modo := maConsulta;
  ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.btn_novoClick(Sender: TObject);
begin
  inherited;
    txt_pesobruto.Enabled     := true;
    txt_pesoliqudo.Enabled    := true;
    txt_quantidade.Enabled    := true;
    txt_custo.Enabled         := true;
    txt_valorunitario.Enabled := true;
    txt_codigo.Enabled        := false;
    txt_descricao.Enabled     := true;
    cbox_Fornecedor.Enabled   := true;
    //ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  modo := maInicial;
  ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.FormShow(Sender: TObject);
begin
  inherited;
  ValidaAbertura;
  LookUp.FD_qryFornec.open();
  LookUp.FD_qryFornec.fetchall;

end;

procedure Tfrm_CadastroProdutos.ValidaAbertura;
begin
  if modo = maInicial then
  begin
    txt_pesobruto.Enabled     := false;
    txt_pesoliqudo.Enabled    := false;
    txt_quantidade.Enabled    := false;
    txt_custo.Enabled         := false;
    txt_valorunitario.Enabled := false;
    txt_codigo.Enabled        := false;
    txt_descricao.Enabled     := false;
    cbox_Fornecedor.Enabled   := false;

    txt_pesobruto.Clear;
    txt_pesoliqudo.Clear;
    txt_quantidade.Clear;
    txt_custo.Clear;
    txt_valorunitario.Clear;
    txt_codigo.Clear;
    txt_descricao.Clear;
  end;

  if modo = maInclusao then
  begin
    btn_novoClick(self);
  end;

  if modo = maConsulta then
  begin
    txt_pesobruto.Enabled     := false;
    txt_pesoliqudo.Enabled    := false;
    txt_quantidade.Enabled    := false;
    txt_custo.Enabled         := false;
    txt_valorunitario.Enabled := false;
    txt_codigo.Enabled        := false;
    txt_descricao.Enabled     := false;
    cbox_Fornecedor.Enabled   := false;
  end;

  if modo = maEdicao then
  begin
    txt_pesobruto.Enabled     := true;
    txt_pesoliqudo.Enabled    := true;
    txt_quantidade.Enabled    := true;
    txt_custo.Enabled         := true;
    txt_valorunitario.Enabled := true;
    txt_codigo.Enabled        := false;
    txt_descricao.Enabled     := true;
    cbox_Fornecedor.Enabled   := true;
  end;

end;

end.
