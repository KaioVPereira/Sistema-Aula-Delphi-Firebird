program prj_Basico;
uses
  Vcl.Forms,
  U_FormMain in 'Forms\MainCadastro\U_FormMain.pas' {frm_Principal},
  U_Dados in 'Forms\Dados\U_Dados.pas' {dm_Dados: TDataModule},
  U_Biblioteca in 'Classes\U_Biblioteca.pas',
  U_ConfigIni in 'Forms\Configini\U_ConfigIni.pas' {frm_ConfigIni},
  U_CadastroClientes in 'Forms\CadastrosGerais\U_CadastroClientes.pas' {frm_CadClientes},
  U_CadastroEstados in 'Forms\CadastrosGerais\U_CadastroEstados.pas' {frm_CadastrosEstados},
  U_CadastroCidades in 'Forms\CadastrosGerais\U_CadastroCidades.pas' {frm_CadatroCidade},
  U_LookUp in 'Shared\U_LookUp.pas' {LookUp: TDataModule},
  U_Inicio in 'Forms\U_Inicio.pas' {frm_inicio},
  U_FormMainConsultas in 'Forms\MainConsulta\U_FormMainConsultas.pas' {frm_MainConsultas},
  U_ConsultaClientes in 'Forms\ConsultasGerais\U_ConsultaClientes.pas' {frm_ConsultaClientes},
  U_constantes in 'Classes\U_constantes.pas',
  U_CadastrosFornecedores in 'Forms\CadastrosGerais\U_CadastrosFornecedores.pas' {frm_CadastrosFornecedores},
  U_ConsultaFornecedores in 'Forms\ConsultasGerais\U_ConsultaFornecedores.pas' {frm_ConsultaFornecedor},
  U_ConsultaProdutos in 'Forms\ConsultasGerais\U_ConsultaProdutos.pas' {frm_ConsultaProdutos},
  U_CadastroProdutos in 'Forms\CadastrosGerais\U_CadastroProdutos.pas' {frm_CadastroProdutos},
  U_PDV in 'Forms\vendas\U_PDV.pas' {frm_CadastroVendas},
  U_ConsultaVendas in 'Forms\ConsultasGerais\U_ConsultaVendas.pas' {frm_ConsultaVendas},
  U_ConsultaUsuario in 'Forms\ConsultasGerais\U_ConsultaUsuario.pas' {frm_ConsultaUsuario},
  U_CadastrosUsuarios in 'Forms\CadastrosGerais\U_CadastrosUsuarios.pas' {frm_CadastrosUsuarios},
  uCrpt in 'Classes\uCrpt.pas',
  U_login in 'Forms\login\U_login.pas' {Frm_login},
  U_VENDAS in 'Forms\Vendas\U_VENDAS.pas' {Frm_PDV2},
  U_Inicial in 'Forms\U_Inicial.pas' {Frm_NewInicial};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_Dados, dm_Dados);
  Application.CreateForm(TLookUp, LookUp);
  Application.CreateForm(TFrm_NewInicial, Frm_NewInicial);
  Application.CreateForm(Tfrm_ConfigIni, frm_ConfigIni);
  Application.CreateForm(TFrm_PDV2, Frm_PDV2);
  Application.Run;
end.
