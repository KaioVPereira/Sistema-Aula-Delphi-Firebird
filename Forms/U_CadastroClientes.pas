unit U_CadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfrm_CadClientes = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_CLIENTES: TIntegerField;
    fd_QueryCadastroRAZAO_SOCIAL: TStringField;
    fd_QueryCadastroFANTASIA: TStringField;
    fd_QueryCadastroCPF_CNPJ: TStringField;
    fd_QueryCadastroTIPO_FJ: TStringField;
    fd_QueryCadastroNOME: TStringField;
    fd_QueryCadastroEMAIL: TStringField;
    fd_QueryCadastroSITE: TStringField;
    fd_QueryCadastroBAIRRO: TStringField;
    fd_QueryCadastroENDERECO: TStringField;
    fd_QueryCadastroCOMPLEMENTO: TStringField;
    fd_QueryCadastroNUMERO: TStringField;
    fd_QueryCadastroIE_RG: TStringField;
    fd_QueryCadastroDT_EXLUIDO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    txt_tipopessoa: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadClientes: Tfrm_CadClientes;

implementation

{$R *.dfm}

end.
