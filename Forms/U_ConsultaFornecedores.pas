unit U_ConsultaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, U_CadastrosFornecedores, U_constantes;

type
  Tfrm_ConsultaFornecedor = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btn_sar: TButton;
    btn_incluir: TButton;
    btn_alterar: TButton;
    btn_visualzar: TButton;
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_visualzarClick(Sender: TObject);
    procedure btn_sarClick(Sender: TObject);
  private
    procedure Consultar;
    procedure ValidaSQLConsultar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaFornecedor: Tfrm_ConsultaFornecedor;

implementation

{$R *.dfm}

{ Tfrm_ConsultaFornecedor }

procedure Tfrm_ConsultaFornecedor.btn_alterarClick(Sender: TObject);
begin
  inherited;
  ValidaSQLConsultar;
  frm_CadastrosFornecedores := Tfrm_CadastrosFornecedores.Create(self);
  try
    frm_CadastrosFornecedores.modo := maEdicao;
    frm_CadastrosFornecedores.fd_QueryCadastro.Locate('CONTROLE_FORNECEDOR', FD_qryConsultas.FieldByName('CONTROLE_FORNECEDOR').AsInteger, []);
    frm_CadastrosFornecedores.Showmodal;
  finally
    FreeAndNil(frm_CadastrosFornecedores);
  end;
end;

procedure Tfrm_ConsultaFornecedor.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure Tfrm_ConsultaFornecedor.btn_incluirClick(Sender: TObject);
begin
  inherited;
  frm_CadastrosFornecedores := Tfrm_CadastrosFornecedores.Create(self);
  try
    frm_CadastrosFornecedores.modo := maInclusao;
    frm_CadastrosFornecedores.ShowModal;
  finally
    FreeAndNil(frm_CadastrosFornecedores);
  end;
end;

procedure Tfrm_ConsultaFornecedor.btn_sarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure Tfrm_ConsultaFornecedor.btn_visualzarClick(Sender: TObject);
begin
  inherited;
   ValidaSQLConsultar;
   frm_CadastrosFornecedores := Tfrm_CadastrosFornecedores.Create(self);
  try
    frm_CadastrosFornecedores.modo := maConsulta;
    frm_CadastrosFornecedores.fd_QueryCadastro.Locate('CONTROLE_FORNECEDOR', FD_qryConsultas.FieldByName('CONTROLE_FORNECEDOR').AsInteger, []);
    frm_CadastrosFornecedores.Showmodal;
  finally
    FreeAndNil(frm_CadastrosFornecedores);
  end;
end;

procedure Tfrm_ConsultaFornecedor.Consultar;
begin
  FD_qryConsultas.Close;
  FD_qryConsultas.SQL.clear;
  FD_qryConsultas.SQL.Add( 'SELECT * FROM FORNECEDOR');
  FD_qryConsultas.SQL.Add( 'WHERE 1 = 1');


  if (cboc_filtro.Text = 'CNPJ') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ( 'AND UPPER (TRIM(replace (REPLACE (REPLACE(CNPJ, ''.'',''''),''-'',''''),''/'','''')))LIKE '+ QuotedStr('%' + UpperCase(Trim(txt_consultar.Text))+'%'))
  end

  else IF cboc_filtro.Text = 'CONTROLE' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND CONTROLE_FORNECEDOR = ' + txt_consultar.Text)
  end

  else if (cboc_filtro.Text = 'FANTASIA') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (FANTASIA)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'RAZ�O SOCIAL') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (RAZAO_SOCIAL)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'E-MAIL') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (EMAIL)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'CIDADE') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (NOME_CIDADE)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else if (cboc_filtro.Text = 'UF') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (UF)) = ' + QuotedStr(UpperCase(Trim(txt_consultar.text))))
  end;
  ;
  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;

end;

procedure Tfrm_ConsultaFornecedor.ValidaSQLConsultar;
begin
  if FD_qryConsultas.IsEmpty then
  begin
    ShowMessage ('� necess�rio selecionar um Fornecedor');
    Abort;
  end;
end;

end.
