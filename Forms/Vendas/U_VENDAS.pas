unit U_VENDAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Lucombo, dblucomb, Vcl.DBCtrls, Vcl.NumberBox,
  Vcl.Samples.Spin;

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
    SpinEdit1: TSpinEdit;
    ckb_ColetaQTD: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure txt_ReferenciaChange(Sender: TObject);
    procedure txt_ReferenciaEnter(Sender: TObject);
    procedure txt_ReferenciaExit(Sender: TObject);
    procedure txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure SpinEdit1Change(Sender: TObject);
    procedure ckb_ColetaQTDClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Limpar;
    Procedure Buscar;
    Procedure SalvarItens;
    Procedure SalvarVendas;
    Procedure LimparImagem;
    Procedure CalculaTotalItem;
    procedure PreencherGridIntens;

    var TotalItem :double;
    var TotalVenda :double;

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
  dm_Dados.FDQry_Produtos.Close;
  dm_Dados.FDQry_Produtos.SQL.Clear;
  dm_Dados.FDQry_Produtos.SQL.Add('SELECT * FROM PRODUTOS WHERE REFERENCIA = ' + txt_Referencia.Text);
  //dm_Dados.FDQry_Produtos.ParamByName('REFERENCIA').Value := txt_Referencia.Text;
  dm_Dados.FDQry_Produtos.Open;

  if dm_Dados.FDQry_Produtos.isempty = false then
  begin
    txt_DescProd.Text := dm_Dados.FDQry_Produtos['DESCRICAO'];
    txt_Codigo.Text   := dm_Dados.FDQry_Produtos['CODIGO'];
    txt_Estoque.Text  := dm_Dados.FDQry_Produtos['QTD'];
    //txt_Estoque.Text  := FloatToStr(dm_Dados.FDQry_Produtos['QTD']);
    txt_ValorUnitario.Text := dm_Dados.FDQry_Produtos['VALOR_UNITARIO'];

  end
  else if dm_Dados.FDQry_Produtos.isempty = true then
  begin
    txt_DescProd.Text       := '';
    txt_Codigo.Text         := '';
    txt_Estoque.Text        := '';
    txt_ValorUnitario.Text  := '';
    txt_ItemTotal.Text      := '';
    SpinEdit1.Text          := '1';
  end;


end;

procedure TFrm_PDV2.CalculaTotalItem;
begin
  TotalItem := StrToFloat(txt_ValorUnitario.Text) * StrToFloat(SpinEdit1.Text);
  txt_ItemTotal.Text := FloatToStr(TotalItem);
end;

procedure TFrm_PDV2.ckb_ColetaQTDClick(Sender: TObject);
begin
  if ckb_ColetaQTD.Checked = true then
  begin
     SpinEdit1.Enabled := true;
  end
  else
    SpinEdit1.Enabled := false;

end;

procedure TFrm_PDV2.FormShow(Sender: TObject);
begin
  LimparImagem;
  dm_Dados.FTB_VendasHeader.Active := True;
  dm_Dados.FTB_VendasItens.Active := True;
end;

procedure TFrm_PDV2.Limpar;
begin

end;

procedure TFrm_PDV2.LimparImagem;
var dirIMG : string;
begin
  dirIMG :=(GetCurrentDir)+ '\download.jpg';
  Image1.Picture.LoadFromFile(dirIMG);

end;

procedure TFrm_PDV2.PreencherGridIntens;
begin
  dm_Dados.FTB_VendasItens.FieldByName('CONTROLE_VENDA').Value := '0';
  dm_Dados.FTB_VendasItens.FieldByName('REFERENCIA').Value := txt_Referencia.Text;
  dm_Dados.FTB_VendasItens.FieldByName('VALOR_UNITARIO').Value := txt_ValorUnitario.Text;
  dm_Dados.FTB_VendasItens.FieldByName('QTD').Value := SpinEdit1.Text;
  dm_Dados.FTB_VendasItens.FieldByName('VALOR_TOTAL').Value := TotalItem;
  dm_Dados.FTB_VendasItens.FieldByName('CODIGO').Value := txt_Codigo.Text;
  dm_Dados.FTB_VendasItens.FieldByName('TERMINAL').Value := '1'
  end;


procedure TFrm_PDV2.SalvarItens;
begin

end;

procedure TFrm_PDV2.SalvarVendas;
begin

end;


procedure TFrm_PDV2.SpinEdit1Change(Sender: TObject);
begin
  if SpinEdit1.Text <> '' then
  CalculaTotalItem;
end;

procedure TFrm_PDV2.txt_ReferenciaChange(Sender: TObject);
begin
  if txt_Referencia.Text <> '' then
    Buscar;
    //CalculaTotalItem;
end;

procedure TFrm_PDV2.txt_ReferenciaEnter(Sender: TObject);
begin
  //txt_Qtd.SetFocus;
end;

procedure TFrm_PDV2.txt_ReferenciaExit(Sender: TObject);
begin
  if txt_Referencia.Text <> '' then
  begin
  Buscar;
  CalculaTotalItem;
  if dm_Dados.FDQry_Produtos.IsEmpty then
      begin
        MsgAtencao('Produto N�o encontrado');
      end;
  end;
end;

procedure TFrm_PDV2.txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SpinEdit1.SetFocus;
  end;
end;

end.
