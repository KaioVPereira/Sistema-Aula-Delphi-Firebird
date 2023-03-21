unit U_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, U_LookUp, AdvEdit,
  AdvMoneyEdit, DBAdvMoneyEdit, U_Biblioteca;

type
  Tfrm_CadastroVendas = class(Tfrm_Principal)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
    txt_venda: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    fdqry_VendasItem: TFDQuery;
    ds_vendasItem: TDataSource;
    cbox_Cliente: TDBLookupComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    fd_QueryCadastroCONTROLE_VENDA: TIntegerField;
    fd_QueryCadastroCONTROLE_CLIENTE: TIntegerField;
    fd_QueryCadastroDATA_MOV: TDateField;
    fd_QueryCadastroSITUACAO: TStringField;
    fd_QueryCadastroDATA_EMISSAO: TDateField;
    fdqry_VendasItemCONTROLE_VENDA_ITEM: TIntegerField;
    fdqry_VendasItemCODIGO: TIntegerField;
    fdqry_VendasItemQTD: TSingleField;
    fdqry_VendasItemVALOR_UNITARIO: TSingleField;
    fdqry_VendasItemDESCONTO: TSingleField;
    fdqry_VendasItemCONTROLE_VENDA: TIntegerField;
    cbox_Produtos: TDBLookupComboBox;
    txt_QTD: TAdvMoneyEdit;
    txt_ValorUnit: TAdvMoneyEdit;
    txt_Desconto: TAdvMoneyEdit;
    txt_SubTotal: TAdvMoneyEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txt_Total: TAdvMoneyEdit;
    btn_InserirItem: TButton;
    fdqry_VendasItemDescricaoProduto: TStringField;
    fdqry_VendasItemSubTotal: TFloatField;
    fdqry_VendasItemTotal: TFloatField;
    FDT_Itens: TFDTransaction;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txt_totalSubTotal: TAdvMoneyEdit;
    txt_TotalDesconto: TAdvMoneyEdit;
    txt_TotalVenda: TAdvMoneyEdit;
    btn_ExcluirItem: TButton;
    procedure fd_QueryCadastroBeforePost(DataSet: TDataSet);
    procedure fd_QueryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdqry_VendasItemAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure fd_QueryCadastroAfterOpen(DataSet: TDataSet);
    procedure fd_QueryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdqry_VendasItemCalcFields(DataSet: TDataSet);
    procedure fdqry_VendasItemAfterPost(DataSet: TDataSet);
    procedure fdqry_VendasItemAfterDelete(DataSet: TDataSet);
    procedure fdqry_VendasItemAfterCancel(DataSet: TDataSet);
    procedure cbox_ProdutosClick(Sender: TObject);
    procedure btn_InserirItemClick(Sender: TObject);
    procedure txt_QTDChange(Sender: TObject);
    procedure txt_DescontoChange(Sender: TObject);
    procedure txt_ValorUnitChange(Sender: TObject);
    procedure txt_QTDExit(Sender: TObject);
    procedure txt_ValorUnitExit(Sender: TObject);
    procedure txt_DescontoExit(Sender: TObject);
    procedure btn_ExcluirItemClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetItens (pControle_Venda: integer);
    procedure GravarItem;
    procedure SetDadosProdutos(pCodigo: integer);
    procedure Totaliza;
    procedure CalculaTotais;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frm_CadastroVendas: Tfrm_CadastroVendas;

implementation

{$R *.dfm}

uses U_Dados;

procedure Tfrm_CadastroVendas.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  FDT_Itens.Rollback;
  fdqry_VendasItem.Cancel;

end;

procedure Tfrm_CadastroVendas.btn_ExcluirItemClick(Sender: TObject);
begin
  inherited;
  fdqry_VendasItem.delete;
end;

procedure Tfrm_CadastroVendas.btn_InserirItemClick(Sender: TObject);
begin
  inherited;
  GravarItem;
  LimparCampos;
end;

procedure Tfrm_CadastroVendas.CalculaTotais;
begin
  txt_SubTotal.Value := txt_QTD.Value * txt_ValorUnit.Value;
  txt_Total.Value    := (txt_QTD.Value * txt_ValorUnit.Value)- txt_Desconto.Value;
end;

procedure Tfrm_CadastroVendas.cbox_ProdutosClick(Sender: TObject);
begin
  inherited;
  SetDadosProdutos(cbox_Produtos.KeyValue);
end;

procedure Tfrm_CadastroVendas.fdqry_VendasItemAfterCancel(DataSet: TDataSet);
begin
  inherited;
  FDT_Itens.RollBackRetaining;
end;

procedure Tfrm_CadastroVendas.fdqry_VendasItemAfterDelete(DataSet: TDataSet);
begin
  FDT_itens.StartTransaction;
  inherited;
  //FDT_Itens.commitRetaining;
  Totaliza;
end;

procedure Tfrm_CadastroVendas.fdqry_VendasItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdqry_VendasItemControle_Venda.AsInteger := fd_QueryCadastroControle_Venda.AsInteger;
end;

procedure Tfrm_CadastroVendas.fdqry_VendasItemAfterPost(DataSet: TDataSet);
begin
  FDT_itens.StartTransaction;
  inherited;
  //FDT_Itens.commitRetaining;
  Totaliza;
end;

procedure Tfrm_CadastroVendas.fdqry_VendasItemCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdqry_VendasItemSubTotal.AsFloat := (fdqry_VendasItemQTD.AsFloat * fdqry_VendasItemVALOR_UNITARIO.AsFloat);
  fdqry_VendasItemTotal.AsFloat := (fdqry_VendasItemQTD.AsFloat * fdqry_VendasItemVALOR_UNITARIO.AsFloat) - fdqry_VendasItemDESCONTO.AsFloat;
end;

procedure Tfrm_CadastroVendas.fd_QueryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fd_QueryCadastroDATA_MOV.AsDateTime := Date
end;

procedure Tfrm_CadastroVendas.fd_QueryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetItens(fd_QueryCadastroControle_Venda.AsInteger);
end;

procedure Tfrm_CadastroVendas.fd_QueryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetItens(fd_QueryCadastroControle_Venda.AsInteger);
end;

procedure Tfrm_CadastroVendas.fd_QueryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fd_QueryCadastroDATA_EMISSAO.IsNull AND (fd_QueryCadastroSITUACAO.AsAnsiString = 'S') then
  BEGIN
    fd_QueryCadastroDATA_EMISSAO.AsDateTime := Date;
  END;

end;

procedure Tfrm_CadastroVendas.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQuery(LookUp.FD_qryClientes, '');
  AtualizaFDQuery(LookUp.FD_qryProdutos, '');
end;

procedure Tfrm_CadastroVendas.GravarItem;
begin
  fdqry_VendasItem.Append;
  fdqry_VendasItemCodigo.AsInteger          := integer(cbox_Produtos.KeyValue);
  fdqry_VendasItemQTD.AsFloat               := txt_QTD.Value;
  fdqry_VendasItemVALOR_UNITARIO.AsFloat    := txt_ValorUnit.Value;
  fdqry_VendasItemDESCONTO.AsFloat          := txt_Desconto.Value;
  fdqry_VendasItem.Post;
end;

procedure Tfrm_CadastroVendas.LimparCampos;
begin
  cbox_Produtos.KeyValue  := 0;
  txt_QTD.Value           := 0;
  txt_ValorUnit.Value     := 0;
  txt_Desconto.Value      := 0;
  txt_Total.Value         := 0;
  txt_SubTotal.Value      := 0;
  cbox_Produtos.SetFocus;
end;

procedure Tfrm_CadastroVendas.SetDadosProdutos(pCodigo: integer);
begin
  txt_QTD.Value := 1;
  txt_ValorUnit.Value := LookUp.FD_qryProdutosVALOR_UNITARIO.AsFloat;
end;

procedure Tfrm_CadastroVendas.SetItens(pControle_Venda: integer);
begin
  fdqry_VendasItem.Close;
  fdqry_VendasItem.ParamByName ('CONTROLE_VENDA').AsInteger := pControle_Venda;
  AtualizaFDQuery(fdqry_VendasItem, '');
  Totaliza;
end;

procedure Tfrm_CadastroVendas.Totaliza;
var
vQryTotais: TFDQuery;
vSQL: string;
begin
  vQryTotais := TFDQuery.Create(nil);
  vQryTotais.Transaction  := FDT_Itens;
  vQryTotais.Connection   := dm_Dados.fd_Connection;
  TRY
    vSQL := 'SELECT SUM (QTD * VALOR_UNITARIO) SUBTOTAL, SUM (COALESCE (DESCONTO, 0)) DESCONTO, SUM ((QTD * VALOR_UNITARIO) - COALESCE(DESCONTO,0)) TOTAL' +#13+
              'FROM VENDAS_ITENS'+ #13+
              'WHERE CONTROLE_VENDA ='+ IntToStr(fd_QueryCadastroCONTROLE_VENDA.Asinteger);

              AtualizaFDQuery(vQryTotais, vSQL);

    txt_totalSubTotal.Value  := vQryTotais.FieldByName ('SUBTOTAL').asFloat;
    txt_TotalDesconto.Value  := vQryTotais.FieldByName ('DESCONTO').AsFloat;
    txt_TotalVenda.Value     := vQryTotais.FieldByName ('TOTAL').AsFloat;
  FINALLY
    vQryTotais.Close;
    freeAndNil (vQryTotais);
  END;
  end;

procedure Tfrm_CadastroVendas.txt_DescontoChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure Tfrm_CadastroVendas.txt_DescontoExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure Tfrm_CadastroVendas.txt_QTDChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure Tfrm_CadastroVendas.txt_QTDExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure Tfrm_CadastroVendas.txt_ValorUnitChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure Tfrm_CadastroVendas.txt_ValorUnitExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

end.
