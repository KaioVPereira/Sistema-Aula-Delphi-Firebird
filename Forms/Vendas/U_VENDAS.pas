unit U_VENDAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, {Lucombo, dblucomb,} Vcl.DBCtrls, {Vcl.NumberBox,} Vcl.Mask,
  Vcl.Samples.Spin, JPEG, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;


type
  TFrm_PDV2 = class(TForm)
    pn_GridItens: TPanel;
    pn_Meio: TPanel;
    pn_Direita: TPanel;
    DBG_VendasItens: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txt_DescProd: TEdit;
    txt_Codigo: TEdit;
    txt_Estoque: TEdit;
    Label4: TLabel;
    txt_ValorUnitario: TEdit;
    Label5: TLabel;
    txt_ItemTotal: TEdit;
    Label6: TLabel;
    //txt_Total: TDBLUEdit;
    //txt_SubTotal: TDBLUEdit;
    //txt_Desconto: TDBLUEdit;
    //txt_TotalCompra: TDBLUEdit;
    //txt_ValorRecebido: TDBLUEdit;
    //txt_ValorTroco: TDBLUEdit;
    Image1: TImage;
    pn_Header: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ckb_ColetaQTD: TCheckBox;
    txt_ControleVenda: TDBEdit;
    txt_Qtd: TEdit;
    Fdqry_Func: TFDQuery;
    Fdqry_FuncNOME: TStringField;
    Fdqry_FuncLOGIN: TStringField;
    Fdqry_FuncSENHA: TStringField;
    Fdqry_FuncCONTROLE_USUARIO: TIntegerField;
    Fdqry_FuncDT_EXCLUIDO: TDateField;
    DS_Func: TDataSource;
    Lkup_Caixa: TDBLookupComboBox;
    Lkup_Vendedor: TDBLookupComboBox;
    Lkup_Gerente: TDBLookupComboBox;
    txt_referencia: TEdit;
    txt_Subtotal: TEdit;
    txt_Desconto: TEdit;
    txt_TotalVenda: TEdit;
    Label13: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    btn_CancelaVenda: TSpeedButton;
    btn_Pagamento: TSpeedButton;
    btn_FinalizaVenda: TSpeedButton;
    Panel4: TPanel;
    btn_NovaVenda: TSpeedButton;
    btn_sair: TSpeedButton;
    FDQry_VendasQuery: TFDQuery;
    FDQry_VendasItens: TFDQuery;
    FDQry_Produtos: TFDQuery;
    DS_Vendas: TDataSource;
    DS_VendasItens: TDataSource;
    DS_Produtos: TDataSource;
    FDQry_VendasQueryCONTROLE_VENDA: TFDAutoIncField;
    FDQry_VendasQueryCONTROLE_CLIENTE: TIntegerField;
    FDQry_VendasQueryDATA_MOV: TDateField;
    FDQry_VendasQuerySITUACAO: TStringField;
    FDQry_VendasQueryDATA_EMISSAO: TDateField;
    FDQry_VendasQueryDT_EXCLUIDO: TDateField;
    FDQry_VendasQueryCONTROLE_FUNC: TIntegerField;
    FDQry_VendasQueryNOME_FUNC: TStringField;
    FDQry_VendasQuerySUBTOTAL: TSingleField;
    FDQry_VendasQueryTOTAL: TSingleField;
    FDQry_VendasQueryTERMINAL: TIntegerField;
    FDQry_VendasItensCONTROLE_VENDA_ITEM: TFDAutoIncField;
    FDQry_VendasItensCODIGO: TIntegerField;
    FDQry_VendasItensQTD: TSingleField;
    FDQry_VendasItensVALOR_UNITARIO: TSingleField;
    FDQry_VendasItensDESCONTO: TSingleField;
    FDQry_VendasItensCONTROLE_VENDA: TIntegerField;
    FDQry_VendasItensDT_EXCLUIDO: TDateField;
    FDQry_VendasItensVALOR_TOTAL: TSingleField;
    FDQry_VendasItensREFERENCIA: TStringField;
    FDQry_VendasItensTERMINAL: TIntegerField;
    FDQry_ProdutosCODIGO: TIntegerField;
    FDQry_ProdutosDESCRICAO: TStringField;
    FDQry_ProdutosDEPARTAMENTO: TIntegerField;
    FDQry_ProdutosCOLECAO: TIntegerField;
    FDQry_ProdutosGRUPO: TIntegerField;
    FDQry_ProdutosLINHA: TIntegerField;
    FDQry_ProdutosMARCA: TIntegerField;
    FDQry_ProdutosUNIDADE: TIntegerField;
    FDQry_ProdutosPESO_LIQUIDO: TSingleField;
    FDQry_ProdutosPESO_BRUTO: TSingleField;
    FDQry_ProdutosCONTROLE_FORNECEDOR: TIntegerField;
    FDQry_ProdutosQTD: TSingleField;
    FDQry_ProdutosCUSTO: TSingleField;
    FDQry_ProdutosVALOR_UNITARIO: TSingleField;
    FDQry_ProdutosDT_EXCLUIDO: TDateField;
    FDQry_ProdutosREFERENCIA: TStringField;
    FDQry_ProdutosIMAGEM: TBlobField;
    procedure FormShow(Sender: TObject);
    procedure txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure ckb_ColetaQTDClick(Sender: TObject);
    procedure txt_QtdChange(Sender: TObject);
    procedure txt_QtdKeyPress(Sender: TObject; var Key: Char);
    procedure Lkup_CaixaEnter(Sender: TObject);
    procedure txt_referenciaExit(Sender: TObject);
    procedure txt_referenciaChange(Sender: TObject);
    procedure btn_NovaVendaClick(Sender: TObject);
    procedure btn_FinalizaVendaClick(Sender: TObject);
    procedure txt_DescontoChange(Sender: TObject);
    procedure txt_DescontoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_CancelaVendaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Limpar;
    Procedure LimparItem;
    Procedure Buscar;
    Procedure SalvarItens;
    Procedure SalvarVendas;
    Procedure LimparImagem;
    Procedure CalculaTotalItem;
    Procedure CalcularSubTotal;
    procedure CalculaTotalVenda;
    procedure PreencherGridIntens;
    procedure MostraItensVenda;
    procedure VendaAtiva(Ativo:Char);



    var TotalItem :double;
    var SubTotalVenda :double;
    var TotalVenda : Double;
    var VendaStatus : boolean;

    var MemoryStream : TMemoryStream;
     Jpg : TJpegImage;
     Bitmap : TBitmap;

  public
    { Public declarations }
  end;

var
  Frm_PDV2: TFrm_PDV2;

implementation

{$R *.dfm}

uses U_Dados, U_Biblioteca;

procedure TFrm_PDV2.Buscar;
begin
  //Buscando item com base no que foi escrito no txt_referencia
  FDQry_Produtos.Close;
  FDQry_Produtos.SQL.Clear;
  FDQry_Produtos.SQL.Add('SELECT * FROM PRODUTOS WHERE REFERENCIA = ' +QuotedStr( UpperCase( txt_Referencia.Text)));
  FDQry_Produtos.Open;



  if FDQry_Produtos.isempty = false then
  begin
    //Se achar o item com base na referencia digitada, preenche os demais campos.
    txt_DescProd.Text := FDQry_Produtos['DESCRICAO'];
    txt_Codigo.Text   := FDQry_Produtos['CODIGO'];
    txt_Estoque.Text  := FDQry_Produtos['QTD'];
    txt_ValorUnitario.Text := FormatFloat('0.00', FDQry_Produtos['VALOR_UNITARIO']);
    CarregarImagem(FDQry_Produtos, 'IMAGEM', Image1);

    ckb_ColetaQTD.Enabled := false;
    CalculaTotalItem;

  end
  else if FDQry_Produtos.isempty = true then
  begin
    //Se n�o achar o item, deixa os campos em branco.
    LimparItem;
    LimparImagem;
  end;


end;

procedure TFrm_PDV2.CalcularSubTotal;
begin
  SubTotalVenda := SubtotalVenda + StrToFloat(txt_ItemTotal.Text);
  txt_SubTotal.Text := FloatToStr(SubTotalVenda);
end;

procedure TFrm_PDV2.CalculaTotalItem;
begin
  //Insere o valor total do item, com base na quantidade digitada.
  TotalItem := StrToFloat(txt_ValorUnitario.Text) * StrToFloat(txt_Qtd.Text);
  txt_ItemTotal.Text := FloatToStr(TotalItem);
end;



procedure TFrm_PDV2.CalculaTotalVenda;
begin
  if VendaStatus = true then
  begin
   if txt_Desconto.Text <> '' then
    begin
      TotalVenda := StrtoFloat(txt_Subtotal.Text) - StrToFloat(txt_Desconto.Text);
      txt_TotalVenda.Text:=  FloatToStr(TotalVenda);
    end
    else
      TotalVenda := StrtoFloat(txt_Subtotal.Text);
      txt_TotalVenda.Text:=  FloatToStr(TotalVenda);
  end;



  END;



procedure TFrm_PDV2.ckb_ColetaQTDClick(Sender: TObject);
begin
  //Deixando o campo de coletar quantidade ativo ou n�o.
  if ckb_ColetaQTD.Checked = true then
  begin
     txt_Qtd.Enabled := true;
  end
  else
    txt_Qtd.Enabled := false;

end;

procedure TFrm_PDV2.Lkup_CaixaEnter(Sender: TObject);
begin
  Fdqry_Func.Close;
  Fdqry_Func.SQL.Clear;
  Fdqry_Func.SQL.Add('SELECT * FROM USUARIO');
  Fdqry_Func.Open;
end;

procedure TFrm_PDV2.MostraItensVenda;
begin
  //Valida se tem algo digitado no campo de refer�ncia, se tiver algo,
  //Deixa a Query de itens aberta e em modo de Insert, insere os itens na tabela de itens
  //Com a procedure PreencherGridItens, depois consulta os itens inserido, e mostra na grid .

  if txt_Referencia.Text <> '' then
  begin

    FDQry_VendasItens.Close;
    FDQry_VendasItens.Open();
    if not (FDQry_VendasItens.State in [dsInsert]) then
    begin
      FDQry_VendasItens.Insert;
    end;

    PreencherGridIntens;

    FDQry_VendasItens.Post;

    FDQry_VendasItens.Close;
    FDQry_VendasItens.SQL.Clear;
    FDQry_VendasItens.SQL.Add('SELECT * FROM VENDAS_ITENS WHERE CONTROLE_VENDA ='+ txt_ControleVenda.Text);
    FDQry_VendasItens.Open();

  end;
end;

procedure TFrm_PDV2.FormShow(Sender: TObject);
begin
     //Coloca a Imagem padr�o
     //(Precisa ser melhorado)
  LimparImagem;
  TotalItem := 0;
  SubTotalVenda := 0;
  VendaAtiva('N');

end;

procedure TFrm_PDV2.Limpar;
begin
    txt_DescProd.Text       := '';
    txt_Codigo.Text         := '';
    txt_Estoque.Text        := '';
    txt_ValorUnitario.Text  := '0';
    txt_ItemTotal.Text      := '0';
    txt_Qtd.Text            := '1';
    txt_Subtotal.Text       := '';
    txt_TotalVenda.Text     := '';
    txt_Desconto.Text       := '';
end;

procedure TFrm_PDV2.LimparImagem;
//Busca imagem no diret�rio do execut�vel, a imagem tem que ter o nome Doanload.jpg
var dirIMG : string;
begin
  dirIMG :=(GetCurrentDir)+ '\download.jpg';
  Image1.Picture.LoadFromFile(dirIMG);

end;

procedure TFrm_PDV2.LimparItem;
begin
    txt_DescProd.Text       := '';
    txt_Codigo.Text         := '';
    txt_Estoque.Text        := '';
    txt_ValorUnitario.Text  := '0';
    txt_ItemTotal.Text      := '0';
    txt_Qtd.Text            := '1';
    ckb_ColetaQTD.Enabled := True;
end;

procedure TFrm_PDV2.PreencherGridIntens;
//Insere os valores na tabela de itens, com base no que tem nos Edits.TXT's da tela.
begin
  FDQry_VendasItens.FieldByName('CONTROLE_VENDA').Value := txt_ControleVenda.Text;
  FDQry_VendasItens.FieldByName('REFERENCIA').Value := txt_Referencia.Text;
  FDQry_VendasItens.FieldByName('VALOR_UNITARIO').Value := txt_ValorUnitario.Text;
  FDQry_VendasItens.FieldByName('QTD').Value := txt_Qtd.Text;
  FDQry_VendasItens.FieldByName('VALOR_TOTAL').Value := TotalItem;
  FDQry_VendasItens.FieldByName('CODIGO').Value := txt_Codigo.Text;
  FDQry_VendasItens.FieldByName('TERMINAL').Value := '1'
  end;


procedure TFrm_PDV2.SalvarItens;
begin

end;

procedure TFrm_PDV2.SalvarVendas;
begin

end;



procedure TFrm_PDV2.btn_CancelaVendaClick(Sender: TObject);
begin
  if MsgPerguntar('Deseja cancelar o lan�amento da venda ?') then
  begin
    FDQry_VendasQuery.Edit;
    FDQry_VendasQuery.FieldByName('SITUACAO').Value := 'C';
    FDQry_VendasQuery.FieldByName('DATA_MOV').Value := Now;
    FDQry_VendasQuery.FieldByName('DATA_EMISSAO').Value := Now;
    FDQry_VendasQuery.FieldByName('TOTAL').Value := txt_TotalVenda.Text;
    FDQry_VendasQuery.Post;
    FDQry_VendasQuery.Close;
    FDQry_VendasItens.Close;
    VendaAtiva('N');
    Limpar;
  end;
end;

procedure TFrm_PDV2.btn_FinalizaVendaClick(Sender: TObject);
begin
    FDQry_VendasQuery.Edit;
    FDQry_VendasItens.Edit;

    if MsgPerguntar('Tem certeza?') then
    begin
      try
        FDQry_VendasQuery.FieldByName('SITUACAO').Value := 'E';
        FDQry_VendasQuery.FieldByName('DATA_MOV').Value := Now;
        FDQry_VendasQuery.FieldByName('DATA_EMISSAO').Value := Now;
        FDQry_VendasQuery.FieldByName('TOTAL').Value := txt_TotalVenda.Text;
        FDQry_VendasItens.Post;
        FDQry_VendasQuery.Post;
        FDQry_VendasQuery.Close;
        FDQry_VendasItens.Close;
      finally
        MsgInformacao('Venda Finalizada com sucesso');
        VendaAtiva('N');
        Limpar;
        end;
    end
end;

procedure TFrm_PDV2.btn_NovaVendaClick(Sender: TObject);
begin
  TotalItem := 0;
  SubTotalVenda := 0;
  FDQry_VendasQuery.Close;
  FDQry_VendasQuery.Open();
  if not (FDQry_VendasQuerY.State in [dsEdit, dsInsert]) then
  begin
    FDQry_VendasQuery.Insert;
  end;
  FDQry_VendasQuery.Post;
  btn_NovaVenda.Enabled := false;
  VendaAtiva('S');

end;

procedure TFrm_PDV2.btn_sairClick(Sender: TObject);
begin
  if VendaStatus = true then
  begin
    MsgAtencao('� necess�rio cancelar a venda, antes de sair');
  end
  else
    self.Close;
end;

procedure TFrm_PDV2.txt_DescontoChange(Sender: TObject);
begin
  CalculaTotalVenda;
end;

procedure TFrm_PDV2.txt_DescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    CalculaTotalItem;
  end;
end;

procedure TFrm_PDV2.txt_QtdChange(Sender: TObject);
//Chama a procedure de calcular o total do item toda vez que a quantidade tiver altera��o
begin
  if txt_Qtd.Text <> '' then
  CalculaTotalItem;
end;


procedure TFrm_PDV2.txt_QtdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if FDQry_Produtos.IsEmpty then
        begin
          MsgAtencao('Produto N�o encontrado');
        end
    Else
      begin
        Buscar;
        CalculaTotalItem;
        MostraItensVenda;
        CalcularSubTotal;
        CalculaTotalVenda;
        txt_Referencia.SetFocus;
        LimparItem;
        LimparImagem;
        txt_Referencia.Text := '';
      end;
    end;
end;


procedure TFrm_PDV2.txt_referenciaChange(Sender: TObject);
  //Busca item a cada altera��o no campo de referencia com a procedure "Buscar"
begin
  if txt_Referencia.Text = '' then
  begin
    //LimparItem;
  end;
  if txt_Referencia.Text <> '' then
  begin
    Buscar;
  end;

end;


procedure TFrm_PDV2.txt_referenciaExit(Sender: TObject);
begin
  //Se encontrar o item, coloca os textos dele, calcula o total do item,
//e mostra item na grid
begin
  if (txt_Qtd.Enabled = false) and (txt_Referencia.Text <> '') then
  begin
    if FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto N�o encontrado');
      end
  Else
    begin
      Buscar;
      CalculaTotalItem;
      MostraItensVenda;
      txt_Referencia.SetFocus;
    end;
  end;
end
end;



procedure TFrm_PDV2.txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  begin
    if txt_Qtd.Enabled then
    begin
      txt_Qtd.SetFocus;
    end
    else
    begin
      if FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto N�o encontrado');
      end
  Else
    begin
      Buscar;
      CalculaTotalItem;
      MostraItensVenda;
      CalcularSubTotal;
      CalculaTotalVenda;
      LimparItem;
      LimparImagem;
      txt_Referencia.Text := '';
      FDQry_VendasQuery.Edit;
      FDQry_VendasQuery.FieldByName('SUBTOTAL').Value := StrToFloat(txt_SubTotal.Text);
      FDQry_VendasQuery.Post;
    end;
    end;
  end;
end;

procedure TFrm_PDV2.VendaAtiva(Ativo: Char);
begin
  if Ativo = 'N' then
  begin

    txt_referencia.Enabled := false;
    txt_Qtd.Enabled:= false;
    txt_Desconto.Enabled := false;
    Lkup_Caixa.Enabled := false;
    Lkup_Gerente.Enabled := false;
    Lkup_Vendedor.Enabled := false;
    btn_CancelaVenda.Enabled := false;
    btn_Pagamento.Enabled := false;
    btn_FinalizaVenda.Enabled:= false;
    btn_NovaVenda.Enabled:= true;
    VendaStatus := false;

  end
Else if Ativo = 'S' then
  begin
    txt_referencia.Enabled := True;
    txt_Desconto.Enabled := True;
    Lkup_Caixa.Enabled := True;
    Lkup_Gerente.Enabled := True;
    Lkup_Vendedor.Enabled := True;
    btn_CancelaVenda.Enabled := True;
    btn_Pagamento.Enabled := True;
    btn_FinalizaVenda.Enabled:= True;
    btn_NovaVenda.Enabled := false;
    VendaStatus := true;
  end;


end;

end.
