unit U_Inicio;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Unit2, AdvGlowButton, U_CadastroCidades,
  U_CadastroClientes, U_CadastroEstados, U_ConsultaClientes,
  U_ConsultaFornecedores, U_ConsultaProdutos, U_CadastroProdutos, U_PDV,
  U_Biblioteca, U_ConsultaVendas, U_ConsultaUsuario, U_CadastrosUsuarios;

type
  Tfrm_inicio = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvToolBar5: TAdvToolBar;
    btn_CadastroEstados: TAdvGlowButton;
    btn_CadastroCliente: TAdvGlowButton;
    btn_CadastroCidades: TAdvGlowButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    btn_fornecedor: TAdvGlowButton;
    AdvToolBar6: TAdvToolBar;
    btn_cidades: TAdvGlowButton;
    btn_ConsultaUsuario: TAdvGlowButton;
    btn_ConsultaFornecedor: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    Produtos: TAdvGlowButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvGlowButton2: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    Estados: TAdvGlowButton;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    Manutenção: TAdvPage;
    AdvToolBar7: TAdvToolBar;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    btn_Vendas: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    btn_ConsultaProdutos: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvToolBarSeparator10: TAdvToolBarSeparator;
    btn_CadUsuario: TAdvGlowButton;
    AdvToolBarSeparator11: TAdvToolBarSeparator;
    procedure btn_CadastroClienteClick(Sender: TObject);
    procedure btn_CadastroCidadesClick(Sender: TObject);
    procedure btn_CadastroEstadosClick(Sender: TObject);
    procedure btn_ConsultaClienteClick(Sender: TObject);
    procedure btn_fornecedorClick(Sender: TObject);
    procedure btn_ConsultaUsuarioClick(Sender: TObject);
    procedure btn_ConsultaFornecedorClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure btn_VendasClick(Sender: TObject);
    procedure btn_CadUsuarioClick(Sender: TObject);
    procedure btn_ConsultaProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  frm_inicio: Tfrm_inicio;

implementation

{$R *.dfm}

uses U_CadastrosFornecedores, U_login;


procedure Tfrm_inicio.btn_ConsultaUsuarioClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaUsuario, frm_ConsultaUsuario);
end;

procedure Tfrm_inicio.btn_ConsultaFornecedorClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaFornecedor, frm_ConsultaFornecedor);
end;

procedure Tfrm_inicio.btn_ConsultaProdutosClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaProdutos, frm_ConsultaProdutos);
end;

procedure Tfrm_inicio.btn_VendasClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastroVendas, frm_CadastroVendas);
end;


procedure Tfrm_inicio.FormCreate(Sender: TObject);
begin
  AbreFormShowModal(TFrm_login, Frm_login);
end;

procedure Tfrm_inicio.AdvShapeButton1Click(Sender: TObject);
begin
  AbreFormShowModal(TFrm_login, Frm_login);
end;

procedure Tfrm_inicio.btn_CadastroCidadesClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadatroCidade, frm_CadatroCidade);
end;


procedure Tfrm_inicio.btn_CadastroClienteClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadClientes, frm_CadClientes);
end;


procedure Tfrm_inicio.btn_CadastroEstadosClick(Sender: TObject);
begin
   AbreFormShowModal(Tfrm_CadastrosEstados, frm_CadastrosEstados);
end;


procedure Tfrm_inicio.btn_CadUsuarioClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosUsuarios, frm_CadastrosUsuarios);
end;

procedure Tfrm_inicio.btn_ConsultaClienteClick(Sender: TObject);
begin
  AbreForm(Tfrm_ConsultaClientes, frm_ConsultaClientes);
end;


procedure Tfrm_inicio.btn_fornecedorClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosFornecedores, frm_CadastrosFornecedores);
end;


procedure Tfrm_inicio.ProdutosClick(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastroProdutos, frm_CadastroProdutos);
end;

end.
