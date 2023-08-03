unit U_VENDAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Lucombo, dblucomb;

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
    txt_Qtd: TEdit;
    txt_Referencia: TDBLUEdit;
    Edit1: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    txt_Total: TDBLUEdit;
    txt_SubTotal: TDBLUEdit;
    txt_Desconto: TDBLUEdit;
    txt_TotalCompra: TDBLUEdit;
    txt_ValorRecebido: TDBLUEdit;
    txt_ValorTroco: TDBLUEdit;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure txt_ReferenciaChange(Sender: TObject);
    procedure txt_ReferenciaEnter(Sender: TObject);
    procedure txt_ReferenciaExit(Sender: TObject);
    procedure txt_ReferenciaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure Limpar;
    Procedure Buscar;
    Procedure SalvarItens;
    Procedure SalvarVendas;
    Procedure LimparImagem;

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

  if not dm_Dados.FDQry_Produtos.isempty then
  begin
    txt_DescProd.Text := dm_Dados.FDQry_Produtos['DESCRICAO'];
  end
  else
    txt_DescProd.Text := '';
end;

procedure TFrm_PDV2.FormShow(Sender: TObject);
begin
  LimparImagem;
  //dm_Dados.FTB_VendasHeader.Active := True;
  //dm_Dados.FTB_VendasItens.Active := True;
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

procedure TFrm_PDV2.SalvarItens;
begin

end;

procedure TFrm_PDV2.SalvarVendas;
begin

end;


procedure TFrm_PDV2.txt_ReferenciaChange(Sender: TObject);
begin
  if txt_Referencia.Text <> '' then
    Buscar;
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
    txt_Qtd.SetFocus;
  end;
end;

end.
