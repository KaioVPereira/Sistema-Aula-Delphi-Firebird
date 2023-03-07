unit U_ConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ConsultaClientes = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    procedure btn_consultarClick(Sender: TObject);
  private
    procedure Consultar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaClientes: Tfrm_ConsultaClientes;

implementation

{$R *.dfm}

{ Tfrm_ConsultaClientes }

procedure Tfrm_ConsultaClientes.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
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

  else if cboc_filtro.Text = 'CNPJ/CPF' then
  begin
    FD_qryConsultas.sql.add ('AND CPF_CNPJ = ' + txt_consultar.text)
  end

  else if (cboc_filtro.Text = 'CODIGO') and (txt_consultar.Text <> '') then
  begin
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

end.
