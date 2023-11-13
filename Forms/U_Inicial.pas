unit U_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, U_Biblioteca,
  U_login, Vcl.Buttons, Vcl.ExtCtrls, U_ConsultaUsuario, U_CadastrosUsuarios,
  U_VENDAS, U_CadastroProdutos, U_CadastroCidades, U_CadastroClientes,
  U_CadastroEstados, U_CadastrosFornecedores, U_ConsultaClientes,
  U_ConsultaFornecedores, U_ConsultaProdutos, U_ConsultaVendas;

type
  TFrm_NewInicial = class(TForm)
    Pn_Topo: TPanel;
    Pn_Menu: TPanel;
    Pnl_Cadastros: TPanel;
    SpeedButton1: TSpeedButton;
    btn_MostraPnConsultas: TSpeedButton;
    btn_MostraPnCadastro: TSpeedButton;
    btn_PDV: TSpeedButton;
    btn_CadProdutos: TSpeedButton;
    btn_CadUsuarios: TSpeedButton;
    btn_CadClientes: TSpeedButton;
    btn_CadEstados: TSpeedButton;
    btn_CadCidades: TSpeedButton;
    btn_CadFornec: TSpeedButton;
    Pnl_Consultas: TPanel;
    btn_ConsProdutos: TSpeedButton;
    btn_ConsUsuarios: TSpeedButton;
    btn_ConsClientes: TSpeedButton;
    btn_ConsEstados: TSpeedButton;
    btn_ConsCidades: TSpeedButton;
    btn_ConsFornec: TSpeedButton;
    Pn_Fundo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Pn_FundoClick(Sender: TObject);
    procedure btn_MostraPnCadastroClick(Sender: TObject);
    procedure btn_CadUsuariosClick(Sender: TObject);
    procedure btn_MostraPnConsultasClick(Sender: TObject);
    procedure btn_PDVClick(Sender: TObject);
    procedure btn_CadProdutosClick(Sender: TObject);
    procedure btn_ConsUsuariosClick(Sender: TObject);
    procedure btn_CadClientesClick(Sender: TObject);
    procedure btn_CadEstadosClick(Sender: TObject);
    procedure btn_CadCidadesClick(Sender: TObject);
    procedure btn_CadFornecClick(Sender: TObject);
    procedure btn_ConsProdutosClick(Sender: TObject);
    procedure btn_ConsFornecClick(Sender: TObject);
    procedure btn_ConsClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NewInicial: TFrm_NewInicial;

implementation

{$R *.dfm}

procedure TFrm_NewInicial.FormCreate(Sender: TObject);
begin
  AbreFormShowModal(TFrm_login, Frm_login);
end;

procedure TFrm_NewInicial.Pn_FundoClick(Sender: TObject);
begin
Pnl_Cadastros.Visible := False;
Pnl_Consultas.Visible := False;
end;

procedure TFrm_NewInicial.btn_MostraPnConsultasClick(Sender: TObject);
begin
Pnl_Consultas.Visible := True;
Pnl_Cadastros.Visible := False;
end;

procedure TFrm_NewInicial.btn_ConsClientesClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaClientes, frm_ConsultaClientes);
end;

procedure TFrm_NewInicial.btn_ConsFornecClick(Sender: TObject);
begin
 AbreForm(Tfrm_ConsultaFornecedor, frm_ConsultaFornecedor);
end;

procedure TFrm_NewInicial.btn_ConsProdutosClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaProdutos, frm_ConsultaProdutos);
end;

procedure TFrm_NewInicial.btn_ConsUsuariosClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaUsuario, frm_ConsultaUsuario);
end;

procedure TFrm_NewInicial.btn_MostraPnCadastroClick(Sender: TObject);
begin
Pnl_Cadastros.Visible := True;
Pnl_Consultas.Visible := False;
end;

procedure TFrm_NewInicial.btn_PDVClick(Sender: TObject);
begin
  AbreFormShowModal(TFrm_PDV2, Frm_PDV2);
end;

procedure TFrm_NewInicial.btn_CadCidadesClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadatroCidade, frm_CadatroCidade);
end;

procedure TFrm_NewInicial.btn_CadClientesClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadClientes, frm_CadClientes);
end;

procedure TFrm_NewInicial.btn_CadEstadosClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosEstados, frm_CadastrosEstados);
end;

procedure TFrm_NewInicial.btn_CadFornecClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosFornecedores, frm_CadastrosFornecedores);
end;

procedure TFrm_NewInicial.btn_CadProdutosClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastroProdutos, frm_CadastroProdutos);
end;

procedure TFrm_NewInicial.btn_CadUsuariosClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastroProdutos, frm_CadastroProdutos);
end;

end.
