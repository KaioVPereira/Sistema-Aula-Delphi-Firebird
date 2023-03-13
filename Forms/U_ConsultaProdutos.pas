unit U_ConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ConsultaProdutos = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    FD_qryConsultasCODIGO: TIntegerField;
    FD_qryConsultasDESCRICAO: TStringField;
    FD_qryConsultasUNIDADE: TIntegerField;
    FD_qryConsultasPESO_LIQUIDO: TSingleField;
    FD_qryConsultasPESO_BRUTO: TSingleField;
    FD_qryConsultasQTD: TSingleField;
    FD_qryConsultasCUSTO: TSingleField;
    FD_qryConsultasVALOR_UNITARIO: TSingleField;
    FD_qryConsultasFORNECEDOR: TStringField;
    procedure btn_consultarClick(Sender: TObject);
  private
  Procedure Consultar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaProdutos: Tfrm_ConsultaProdutos;

implementation

{$R *.dfm}

{ Tfrm_ConsultaProdutos }

procedure Tfrm_ConsultaProdutos.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure Tfrm_ConsultaProdutos.Consultar;
begin
  FD_qryConsultas.Close;
  FD_qryConsultas.SQL.clear;
  FD_qryConsultas.SQL.Add('SELECT  P.codigo,');
  FD_qryConsultas.SQL.Add('        P.descricao,');
  FD_qryConsultas.SQL.Add('        P.unidade,  ');
  FD_qryConsultas.SQL.Add('        P.peso_liquido,');
  FD_qryConsultas.SQL.Add('        P.peso_bruto,');
  FD_qryConsultas.SQL.Add('        P.qtd,     ');
  FD_qryConsultas.SQL.Add('        P.custo,    ');
  FD_qryConsultas.SQL.Add('        P.valor_unitario,');
  FD_qryConsultas.SQL.Add('        F.fantasia FORNECEDOR');
  FD_qryConsultas.SQL.Add('FROM PRODUTOS P LEFT JOIN FORNECEDOR F ON F.controle_fornecedor = P.controle_fornecedor');
  FD_qryConsultas.SQL.Add( 'WHERE 1 = 1');


  if cboc_filtro.text = 'DESCRI��O' then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (DESCRICAO)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  else IF cboc_filtro.Text = 'C�DIGO' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND CODIGO = ' + txt_consultar.Text)
  end;

  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;
end;

end.
