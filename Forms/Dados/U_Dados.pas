unit U_Dados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  U_Biblioteca, U_FormMain, Vcl.Forms, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;
type

  Tdm_Dados = class(TDataModule)
    fd_Connection: TFDConnection;
    FTB_VendasHeader: TFDTable;
    FDQry_VendasQuery: TFDQuery;
    FDQry_VendasQueryCONTROLE_VENDA: TIntegerField;
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
    DS_Vendas: TDataSource;
    FTB_VendasItens: TFDTable;
    FDQry_VendasItens: TFDQuery;
    FDQry_VendasItensCONTROLE_VENDA_ITEM: TIntegerField;
    FDQry_VendasItensCODIGO: TIntegerField;
    FDQry_VendasItensQTD: TSingleField;
    FDQry_VendasItensVALOR_UNITARIO: TSingleField;
    FDQry_VendasItensDESCONTO: TSingleField;
    FDQry_VendasItensCONTROLE_VENDA: TIntegerField;
    FDQry_VendasItensDT_EXCLUIDO: TDateField;
    FDQry_VendasItensVALORTOTAL: TSingleField;
    FDQry_VendasItensREFERENCIA: TIntegerField;
    FDQry_VendasItensTERMINAL: TIntegerField;
    DS_VendasItens: TDataSource;
    FDQry_Produtos: TFDQuery;
    DS_Produtos: TDataSource;
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
    FDQry_ProdutosREFERENCIA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }

    procedure CarregaBanco;


  public
    { Public declarations }
  end;

var
  dm_Dados: Tdm_Dados;

implementation

uses U_ConfigIni,  Vcl.Dialogs;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_Dados.CarregaBanco;
begin
  try
    fd_Connection.Params.Values['Database'] := GetArqIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO','LOCAL_DB');
    fd_Connection.Params.Values['UserName'] := GetArqIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO','USER');
    fd_Connection.Params.Values['Port']     := GetArqIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO','PORTA');
    fd_Connection.Params.Values['Password'] := GetArqIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO','PASSWORD');
    fd_Connection.Params.Values['Server']   := GetArqIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO','SERVIDOR');
    fd_Connection.Params.Add('Protocol=TCPIP');
    fd_Connection.Connected := True;
  except
    showmessage('Caminho de conexão com banco inválido');
    AbreFormShowModal(Tfrm_Configini, frm_ConfigIni);
  end;
end;

procedure Tdm_Dados.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
