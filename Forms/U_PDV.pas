unit U_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,Vcl.DBCtrls;

type
  Tfrm_CadastroVendas = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_VENDA: TIntegerField;
    fd_QueryCadastroCONTROLE_CLIENTE: TIntegerField;
    fd_QueryCadastroDATA_MOV: TDateField;
    fd_QueryCadastroSITUACAO: TStringField;
    fd_QueryCadastroDATA_EMISSAO: TDateField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroVendas: Tfrm_CadastroVendas;

implementation

{$R *.dfm}

end.
