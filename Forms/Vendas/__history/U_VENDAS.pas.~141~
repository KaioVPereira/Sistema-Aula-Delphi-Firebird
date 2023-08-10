unit U_VENDAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Lucombo, dblucomb, Vcl.DBCtrls, Vcl.NumberBox, Vcl.Mask,
  Vcl.Samples.Spin, JPEG;

 const
  OffsetMemoryStream : Int64 = 0;

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
    txt_Referencia: TDBLUEdit;
    txt_Estoque: TEdit;
    Label4: TLabel;
    txt_ValorUnitario: TEdit;
    Label5: TLabel;
    txt_ItemTotal: TEdit;
    Label6: TLabel;
    txt_Total: TDBLUEdit;
    txt_SubTotal: TDBLUEdit;
    txt_Desconto: TDBLUEdit;
    txt_TotalCompra: TDBLUEdit;
    txt_ValorRecebido: TDBLUEdit;
    txt_ValorTroco: TDBLUEdit;
    Image1: TImage;
    pn_Header: TPanel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ckb_ColetaQTD: TCheckBox;
    txt_ControleVenda: TDBEdit;
    txt_Qtd: TEdit;
    SpinEdit2: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure txt_ReferenciaChange(Sender: TObject);
    procedure txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure ckb_ColetaQTDClick(Sender: TObject);
    procedure txt_QtdChange(Sender: TObject);
    procedure txt_QtdKeyPress(Sender: TObject; var Key: Char);
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
    procedure PreencherGridIntens;
    procedure MostraItensVenda;
    Procedure CarregarImagem(DataSet : TDataSet; BlobFieldName : String; ImageExibicao : TImage);

    var TotalItem :double;
    var SubTotalVenda :double;

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
  dm_Dados.FDQry_Produtos.Close;
  dm_Dados.FDQry_Produtos.SQL.Clear;
  dm_Dados.FDQry_Produtos.SQL.Add('SELECT * FROM PRODUTOS WHERE REFERENCIA = ' +QuotedStr( UpperCase( txt_Referencia.Text)));
  dm_Dados.FDQry_Produtos.Open;



  if dm_Dados.FDQry_Produtos.isempty = false then
  begin
    //Se achar o item com base na referencia digitada, preenche os demais campos.
    txt_DescProd.Text := dm_Dados.FDQry_Produtos['DESCRICAO'];
    txt_Codigo.Text   := dm_Dados.FDQry_Produtos['CODIGO'];
    txt_Estoque.Text  := dm_Dados.FDQry_Produtos['QTD'];
    txt_ValorUnitario.Text := dm_Dados.FDQry_Produtos['VALOR_UNITARIO'];
    CarregarImagem(dm_Dados.FDQry_Produtos, 'IMAGEM', Image1);

    ckb_ColetaQTD.Enabled := false;
    CalculaTotalItem;

  end
  else if dm_Dados.FDQry_Produtos.isempty = true then
  begin
    //Se não achar o item, deixa os campos em branco.
    //LimparItem;
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

procedure TFrm_PDV2.CarregarImagem(DataSet : TDataSet; BlobFieldName : String; ImageExibicao : TImage);
begin
if not(DataSet.IsEmpty) and
  not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
    try
      MemoryStream := TMemoryStream.Create;
      Jpg := TJpegImage.Create;
      (DataSet.FieldByName(BlobFieldName) as TBlobField).SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Jpg.LoadFromStream(MemoryStream);
      ImageExibicao.Picture.Assign(Jpg);
    finally
      Jpg.Free;
      MemoryStream.Free;
    end
  else
  // o Else faz com que, caso o campo esteja Null, o TImage seja limpado
    ImageExibicao.Picture := Nil;
end;



procedure TFrm_PDV2.ckb_ColetaQTDClick(Sender: TObject);
begin
  //Deixando o campo de coletar quantidade ativo ou não.
  if ckb_ColetaQTD.Checked = true then
  begin
     txt_Qtd.Enabled := true;
  end
  else
    txt_Qtd.Enabled := false;

end;

procedure TFrm_PDV2.MostraItensVenda;
begin
  //Valida se tem algo digitado no campo de referência, se tiver algo,
  //Deixa a Query de itens aberta e em modo de Insert, insere os itens na tabela de itens
  //Com a procedure PreencherGridItens, depois consulta os itens inserido.

  if txt_Referencia.Text <> '' then
  begin

    dm_Dados.FDQry_VendasItens.Close;
    dm_Dados.FDQry_VendasItens.Open();
    if not (dm_Dados.FDQry_VendasItens.State in [dsInsert]) then
    begin
      dm_Dados.FDQry_VendasItens.Insert;
    end;

    PreencherGridIntens;

    dm_Dados.FDQry_VendasItens.Post;

    dm_Dados.FDQry_VendasItens.Close;
    dm_Dados.FDQry_VendasItens.SQL.Clear;
    dm_Dados.FDQry_VendasItens.SQL.Add('SELECT * FROM VENDAS_ITENS WHERE CONTROLE_VENDA ='+ txt_ControleVenda.Text);
    dm_Dados.FDQry_VendasItens.Open();

  end;
end;

procedure TFrm_PDV2.FormShow(Sender: TObject);
begin
  //Após colocar imagem padrão Abre a Query de vendas Header e da um post
  //(Precisa ser melhorado)
  LimparImagem;
  TotalItem := 0;
  SubTotalVenda := 0;
  dm_Dados.FDQry_VendasQuery.Close;
  dm_Dados.FDQry_VendasQuery.Open();
  if not (dm_Dados.FDQry_VendasQuerY.State in [dsEdit, dsInsert]) then
  begin
    dm_Dados.FDQry_VendasQuery.Insert;
  end;
  dm_Dados.FDQry_VendasQuery.Post;

end;

procedure TFrm_PDV2.Limpar;
begin

end;

procedure TFrm_PDV2.LimparImagem;
//Busca imagem no diretório do executável, a imagem tem que ter o nome Doanload.jpg
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
  dm_Dados.FDQry_VendasItens.FieldByName('CONTROLE_VENDA').Value := txt_ControleVenda.Text;
  dm_Dados.FDQry_VendasItens.FieldByName('REFERENCIA').Value := txt_Referencia.Text;
  dm_Dados.FDQry_VendasItens.FieldByName('VALOR_UNITARIO').Value := txt_ValorUnitario.Text;
  dm_Dados.FDQry_VendasItens.FieldByName('QTD').Value := txt_Qtd.Text;
  dm_Dados.FDQry_VendasItens.FieldByName('VALOR_TOTAL').Value := TotalItem;
  dm_Dados.FDQry_VendasItens.FieldByName('CODIGO').Value := txt_Codigo.Text;
  dm_Dados.FDQry_VendasItens.FieldByName('TERMINAL').Value := '1'
  end;


procedure TFrm_PDV2.SalvarItens;
begin

end;

procedure TFrm_PDV2.SalvarVendas;
begin

end;


procedure TFrm_PDV2.txt_QtdChange(Sender: TObject);
//Chama a procedure de calcular o total do item toda vez que a quantidade tiver alteração
begin

  if txt_Qtd.Text <> '' then
  CalculaTotalItem;
end;

{procedure TFrm_PDV2.txt_QtdExit(Sender: TObject);
begin

    if dm_Dados.FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto Não encontrado');
      end
  Else
    begin
      Buscar;
      CalculaTotalItem;
      MostraItensVenda;
      txt_Referencia.SetFocus;
    end;

end;}

procedure TFrm_PDV2.txt_QtdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if dm_Dados.FDQry_Produtos.IsEmpty then
        begin
          MsgAtencao('Produto Não encontrado');
        end
    Else
      begin
        Buscar;
        CalculaTotalItem;
        MostraItensVenda;
        CalcularSubTotal;
        txt_Referencia.SetFocus;
        LimparItem;
        txt_Referencia.Text := '';
      end;
    end;
end;

procedure TFrm_PDV2.txt_ReferenciaChange(Sender: TObject);
//Busca item a cada alteração no campo de referencia com a procedure "Buscar"
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


{procedure TFrm_PDV2.txt_ReferenciaExit(Sender: TObject);
//Se encontrar o item, coloca os textos dele, calcula o total do item,
//e mostra item na grid
begin
  if (txt_Qtd.Enabled = false) and (txt_Referencia.Text <> '') then
  begin
    if dm_Dados.FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto Não encontrado');
      end
  Else
    begin
      Buscar;
      CalculaTotalItem;
      MostraItensVenda;
      txt_Referencia.SetFocus;
    end;
  end;
end;}

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
      if dm_Dados.FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto Não encontrado');
      end
  Else
    begin
      Buscar;
      CalculaTotalItem;
      MostraItensVenda;
      CalcularSubTotal;
      LimparItem;
      txt_Referencia.Text := '';
    end;
    end;
  end;
end;

end.
