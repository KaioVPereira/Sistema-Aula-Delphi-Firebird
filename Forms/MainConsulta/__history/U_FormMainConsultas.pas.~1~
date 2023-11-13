unit U_FormMainConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, U_Dados;

type
  Tfrm_MainConsultas = class(TForm)
    Panel1: TPanel;
    txt_consultar: TEdit;
    btn_consultar: TButton;
    FD_qryConsultas: TFDQuery;
    DS_Consultas: TDataSource;
    FD_TransactionConsultas: TFDTransaction;
    cboc_filtro: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_MainConsultas: Tfrm_MainConsultas;

implementation

{$R *.dfm}

procedure Tfrm_MainConsultas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree
end;

end.
