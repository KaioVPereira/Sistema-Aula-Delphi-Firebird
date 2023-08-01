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
    Edit2: TEdit;
    Edit3: TEdit;
    DBLUEdit1: TDBLUEdit;
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

uses U_Dados;

procedure TFrm_PDV2.Buscar;
var dirIMG : string;
begin
  ExtractFileDir(GetCurrentDir)
end;

procedure TFrm_PDV2.FormShow(Sender: TObject);
begin
  dm_Dados.FTB_VendasHeader.Active := True;
  dm_Dados.FTB_VendasItens.Active := True;
end;

procedure TFrm_PDV2.Limpar;
begin

end;

procedure TFrm_PDV2.LimparImagem;
begin

end;

procedure TFrm_PDV2.SalvarItens;
begin

end;

procedure TFrm_PDV2.SalvarVendas;
begin

end;

end.
