unit U_ConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids,U_constantes;

type
  Tfrm_ConsultaClientes = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    btn_incluir: TButton;
    btn_visualizar: TButton;
    Panel2: TPanel;
    btn_sair: TButton;
    FD_qryConsultasCONTROLE_CLIENTES: TIntegerField;
    FD_qryConsultasRAZAO_SOCIAL: TStringField;
    FD_qryConsultasFANTASIA: TStringField;
    FD_qryConsultasCPF_CNPJ: TStringField;
    FD_qryConsultasTIPO_FJ: TStringField;
    FD_qryConsultasNOME: TStringField;
    FD_qryConsultasEMAIL: TStringField;
    FD_qryConsultasSITE: TStringField;
    FD_qryConsultasBAIRRO: TStringField;
    FD_qryConsultasENDERECO: TStringField;
    FD_qryConsultasCOMPLEMENTO: TStringField;
    FD_qryConsultasNUMERO: TStringField;
    FD_qryConsultasIE_RG: TStringField;
    FD_qryConsultasDT_EXCLUIDO: TDateField;
    FD_qryConsultasCONTROLE_CIDADE: TIntegerField;
    FD_qryConsultasCONTROLE_ESTADO: TIntegerField;
    FD_qryConsultasNOME_CIDADE: TStringField;
    FD_qryConsultasUF: TStringField;
    btn_alterar: TButton;
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_visualizarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    procedure Consultar;
    procedure ValidaSQLConsultar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaClientes: Tfrm_ConsultaClientes;

implementation

{$R *.dfm}

uses U_CadastroClientes;

{ Tfrm_ConsultaClientes }

procedure Tfrm_ConsultaClientes.btn_alterarClick(Sender: TObject);
begin
  inherited;
  frm_CadClientes := Tfrm_CadClientes.Create(self);
  try
    frm_CadClientes.modo := maEdicao;
    frm_CadClientes.fd_QueryCadastro.Locate('CONTROLE_CLIENTES', FD_qryConsultas.FieldByName('CONTROLE_CLIENTES').AsInteger, []);
    frm_CadClientes.Showmodal;
  finally
    FreeAndNil(frm_CadClientes);
  end;

end;

procedure Tfrm_ConsultaClientes.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure Tfrm_ConsultaClientes.btn_incluirClick(Sender: TObject);
begin
  inherited;
  frm_CadClientes := Tfrm_CadClientes.Create(self);
  try
    frm_CadClientes.modo := maInclusao;
    frm_CadClientes.Showmodal;
    //frm_CadClientes.btn_novoClick(Sender);
  finally
    FreeAndNil(frm_CadClientes);
  end;
end;

procedure Tfrm_ConsultaClientes.btn_sairClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure Tfrm_ConsultaClientes.btn_visualizarClick(Sender: TObject);
begin
  inherited;
  frm_CadClientes := Tfrm_CadClientes.Create(self);
  ValidaSQLConsultar;
  try
    frm_CadClientes.modo := maConsulta;
    frm_CadClientes.fd_QueryCadastro.Locate('CONTROLE_CLIENTES', FD_qryConsultas.FieldByName('CONTROLE_CLIENTES').AsInteger, []);
    frm_CadClientes.Showmodal;

  finally
    FreeAndNil(frm_CadClientes);
  end;
end;

procedure Tfrm_ConsultaClientes.Consultar;
begin
  FD_qryConsultas.Close;
  FD_qryConsultas.SQL.clear;
  FD_qryConsultas.SQL.Add( 'SELECT * FROM CLIENTES');
  FD_qryConsultas.SQL.Add( 'WHERE 1 = 1');


  if cboc_filtro.text = 'NOME' then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (NOME)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'CNPJ/CPF') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ( 'AND UPPER (TRIM(replace (REPLACE (REPLACE(CPF_CNPJ, ''.'',''''),''-'',''''),''/'','''')))LIKE '+ QuotedStr('%' + UpperCase(Trim(txt_consultar.Text))+'%'))
  end

  else IF cboc_filtro.Text = 'CODIGO' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND CONTROLE_CLIENTES = ' + txt_consultar.Text)
  end

  else if (cboc_filtro.Text = 'RAZ�O SOCIAL') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (RAZAO_SOCIAL)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'TIPO DE PESSOA') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (TIPO_FJ)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'E-MAIL') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (EMAIL)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'BAIRRO') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (BAIRRO)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'CIDADE') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (NOME_CIDADE)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'UF') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (UF)) = ' + QuotedStr(UpperCase(Trim(txt_consultar.text))))
  end

   else if (cboc_filtro.Text = 'RG') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND IE_RG =' + txt_consultar.text)
  end;
  ;
  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;


end;

procedure Tfrm_ConsultaClientes.ValidaSQLConsultar;
begin
  if FD_qryConsultas.IsEmpty then
  begin
    ShowMessage ('� necess�rio selecionar um cliente');
    Abort;
  end;
end;

end.
