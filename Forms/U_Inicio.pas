unit U_Inicio;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Unit2, AdvGlowButton, U_CadastroCidades,
  U_CadastroClientes, U_CadastroEstados, U_ConsultaClientes,
  U_ConsultaFornecedores, U_ConsultaProdutos, U_CadastroProdutos;

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
    btn_ConsultaProdutos: TAdvGlowButton;
    btn_ConsultaFornecedor: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    Produtos: TAdvGlowButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvGlowButton2: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    Estados: TAdvGlowButton;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    procedure btn_CadastroClienteClick(Sender: TObject);
    procedure btn_CadastroCidadesClick(Sender: TObject);
    procedure btn_CadastroEstadosClick(Sender: TObject);
    procedure btn_ConsultaClienteClick(Sender: TObject);
    procedure btn_fornecedorClick(Sender: TObject);
    procedure btn_ConsultaProdutosClick(Sender: TObject);
    procedure btn_ConsultaFornecedorClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
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

uses U_CadastrosFornecedores;


procedure Tfrm_inicio.btn_ConsultaProdutosClick(Sender: TObject);
begin
  try
    frm_ConsultaProdutos := Tfrm_ConsultaProdutos.Create(self);
    frm_ConsultaProdutos.show;
  finally

  end;

end;

procedure Tfrm_inicio.btn_ConsultaFornecedorClick(Sender: TObject);
begin
  try
    frm_ConsultaFornecedor := Tfrm_ConsultaFornecedor.Create(self);
    frm_ConsultaFornecedor.show
  finally

  end;
end;

procedure Tfrm_inicio.btn_CadastroCidadesClick(Sender: TObject);
begin
  frm_CadatroCidade := Tfrm_CadatroCidade.Create(self);
  try
    frm_CadatroCidade.Showmodal;
  finally
    FreeAndNil(frm_CadatroCidade);
  end;
end;

procedure Tfrm_inicio.btn_CadastroClienteClick(Sender: TObject);
begin
  frm_CadClientes := Tfrm_CadClientes.Create(self);
  try
    frm_CadClientes.Showmodal;
  finally
    FreeAndNil(frm_CadClientes);
  end;

end;

procedure Tfrm_inicio.btn_CadastroEstadosClick(Sender: TObject);
begin
   frm_CadastrosEstados := Tfrm_CadastrosEstados.Create(self);
  try
    frm_CadastrosEstados.Showmodal;
  finally
    FreeAndNil(frm_CadastrosEstados);
  end;
end;

procedure Tfrm_inicio.btn_ConsultaClienteClick(Sender: TObject);
begin
  try
    frm_ConsultaClientes := Tfrm_ConsultaClientes.Create(self);
    frm_ConsultaClientes.show;
  finally

  end;
end;

procedure Tfrm_inicio.btn_fornecedorClick(Sender: TObject);
begin
  frm_CadastrosFornecedores := Tfrm_CadastrosFornecedores.Create(self);
  try
    frm_CadastrosFornecedores.Showmodal;
  finally
    FreeAndNil(frm_CadastrosFornecedores);
  end;
end;

procedure Tfrm_inicio.ProdutosClick(Sender: TObject);
begin
  frm_CadastroProdutos := Tfrm_CadastroProdutos.Create(self);
  try
    frm_CadastroProdutos.Showmodal;
  finally
    FreeAndNil(frm_CadastroProdutos);
  end;
end;

end.
