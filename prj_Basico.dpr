program prj_Basico;
uses
  Vcl.Forms,
  U_FormMain in 'Forms\U_FormMain.pas' {frm_Principal},
  U_Dados in 'Forms\U_Dados.pas' {dm_Dados: TDataModule},
  U_Biblioteca in 'Classes\U_Biblioteca.pas',
  U_ConfigIni in 'Forms\U_ConfigIni.pas' {frm_ConfigIni},
  U_CadastroClientes in 'Forms\U_CadastroClientes.pas' {frm_CadClientes},
  U_CadastroEstados in 'Forms\U_CadastroEstados.pas' {frm_CadastrosEstados},
  U_CadastroCidades in 'U_CadastroCidades.pas' {frm_CadatroCidade},
  U_LookUp in 'Shared\U_LookUp.pas' {LookUp: TDataModule},
  U_Inicio in 'Forms\U_Inicio.pas' {frm_inicio},
  U_FormMainConsultas in 'Forms\U_FormMainConsultas.pas' {frm_MainConsultas},
  U_ConsultaClientes in 'Forms\U_ConsultaClientes.pas' {frm_ConsultaClientes},
  U_constantes in 'Classes\U_constantes.pas',
  U_CadastrosFornecedores in 'Forms\U_CadastrosFornecedores.pas' {frm_CadastrosFornecedores},
  U_ConsultaFornecedores in 'Forms\U_ConsultaFornecedores.pas' {frm_ConsultaFornecedor},
  U_ConsultaProdutos in 'Forms\U_ConsultaProdutos.pas' {frm_ConsultaProdutos};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_inicio, frm_inicio);
  Application.CreateForm(Tfrm_ConfigIni, frm_ConfigIni);
  Application.CreateForm(Tdm_Dados, dm_Dados);
  Application.CreateForm(TLookUp, LookUp);
  Application.Run;
end.
