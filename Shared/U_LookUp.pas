unit U_LookUp;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TLookUp = class(TDataModule)
    FD_qryEstados: TFDQuery;
    ds_estados: TDataSource;
    FD_TransactionLookup: TFDTransaction;
    FD_qryCidades: TFDQuery;
    ds_cidades: TDataSource;
    ds_fornec: TDataSource;
    FD_qryFornec: TFDQuery;
    FD_qryClientes: TFDQuery;
    ds_Clientes: TDataSource;
    FD_qryProdutos: TFDQuery;
    ds_produtos: TDataSource;
    FD_qryProdutosCODIGO: TIntegerField;
    FD_qryProdutosDESCRICAO: TStringField;
    FD_qryProdutosVALOR_UNITARIO: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookUp: TLookUp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Dados;

{$R *.dfm}

end.
