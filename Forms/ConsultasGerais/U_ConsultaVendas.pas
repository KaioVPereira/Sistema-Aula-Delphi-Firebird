unit U_ConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, U_Dados; //frxClass, frxDBSet,

type
  Tfrm_ConsultaVendas = class(Tfrm_MainConsultas)
    DB_Grid: TDBGrid;
    FD_qryConsultasCONTROLE_VENDA: TIntegerField;
    FD_qryConsultasCONTROLE_CLIENTE: TIntegerField;
    FD_qryConsultasCLIENTES: TStringField;
    FD_qryConsultasDATA_MOV: TDateField;
    DT_INC: TDateTimePicker;
    DT_FIN: TDateTimePicker;
    Label1: TLabel;
    btn_sair: TButton;
    Button1: TButton;
    //fr_vendas: TfrxReport;
    //frDB_Vendas: TfrxDBDataset;
    FDQry_Relatorio: TFDQuery;
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
    procedure Consultar;
    procedure SetFiltro(const pQuery: TFDQuery);
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

procedure Tfrm_ConsultaVendas.btn_sairClick(Sender: TObject);
begin
  inherited;
  self.Close;
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
  end;

  if (cboc_filtro.Text = 'Nome Cliente') and (txt_consultar.Text <> '') then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (C.NOME)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end;

   IF cboc_filtro.Text = 'Codigo do Cliente' THEN
  begin
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND V.CONTROLE_CLIENTE = ' + txt_consultar.Text)
  end;

  if DT_INC.Date > 0 then
  BEGIN
    FD_qryConsultas.SQL.Add('AND V.DATA_MOV >=' + QuotedStr(FormatDateTime('dd.mm.yyyy',DT_INC.Date)))
  END;

  if DT_FIN.Date > 0 then
  BEGIN
    FD_qryConsultas.SQL.Add('AND V.DATA_MOV <=' + QuotedStr(FormatDateTime('dd.mm.yyyy',DT_FIN.Date)))
  END;

  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;
end;

procedure Tfrm_ConsultaVendas.SetFiltro(const pQuery: TFDQuery);
begin

end;

//SELECT V.controle_venda,
       //V.controle_cliente,
       //decode (C.tipo_fj, 'F', c.nome, c.razao_social) clientes,
       //V.data_mov,
       //P.descricao PRODUTO,
       //I.qtd,
       //I.valor_unitario,
       //I.valor_unitario * I.qtd SUBTOTAL,
       //COALESCE (I.desconto,0) DESCONTO,
       //(I.qtd * I.valor_unitario) - (COALESCE(I.desconto,0))
//FROM VENDAS_HEADER V INNER join CLIENTES C ON C.controle_clientes = V.controle_cliente
                     //INNER join VENDAS_ITENS I ON V.controle_venda = I.controle_venda
                     //INNER JOIN PRODUTOS P ON P.codigo = I.codigo
//ORDER BY decode (C.tipo_fj, 'F', c.nome, c.razao_social),
         //P.descricao

end.
