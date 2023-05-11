unit U_ConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ConsultaVendas = class(Tfrm_MainConsultas)
    DB_Grid: TDBGrid;
    FD_qryConsultasCONTROLE_VENDA: TIntegerField;
    FD_qryConsultasCONTROLE_CLIENTE: TIntegerField;
    FD_qryConsultasCLIENTES: TStringField;
    FD_qryConsultasDATA_MOV: TDateField;
    procedure btn_consultarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Consultar;
  public
    { Public declarations }
  end;

var
  frm_ConsultaVendas: Tfrm_ConsultaVendas;

implementation

{$R *.dfm}

{ Tfrm_ConsultaVendas }

procedure Tfrm_ConsultaVendas.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure Tfrm_ConsultaVendas.Consultar;
begin
  FD_qryConsultas.Close;
  FD_qryConsultas.SQL.Clear;
  FD_qryConsultas.sql.Add('SELECT V.controle_venda,');
  FD_qryConsultas.sql.Add('       V.controle_cliente,');
  FD_qryConsultas.sql.Add('       decode (C.tipo_fj, ''F'', c.nome, c.razao_social) clientes,');
  FD_qryConsultas.sql.Add('       V.data_mov');
  FD_qryConsultas.sql.Add('FROM VENDAS_HEADER V INNER join CLIENTES C ON C.controle_clientes = V.controle_cliente');
  FD_qryConsultas.sql.Add('WHERE 1=1');

  IF cboc_filtro.Text = 'Controle Venda' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND CONTROLE_VENDA = ' + txt_consultar.Text)
  end

  else if (cboc_filtro.Text = 'Nome Cliente') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (C.NOME)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end

  ELSE IF cboc_filtro.Text = 'Codigo do Cliente' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND V.CONTROLE_CLIENTE = ' + txt_consultar.Text)
  end
  ;

  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;
end;

end.
