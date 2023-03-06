unit U_Inicio;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Unit2, AdvGlowButton, U_CadastroCidades,
  U_CadastroClientes, U_CadastroEstados, U_ConsultaClientes;

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
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    btn_ConsultaCliente: TAdvGlowButton;
    procedure btn_CadastroClienteClick(Sender: TObject);
    procedure btn_CadastroCidadesClick(Sender: TObject);
    procedure btn_CadastroEstadosClick(Sender: TObject);
    procedure btn_ConsultaClienteClick(Sender: TObject);
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

end.