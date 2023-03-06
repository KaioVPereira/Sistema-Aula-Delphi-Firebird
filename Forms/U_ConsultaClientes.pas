unit U_ConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ConsultaClientes = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    procedure btn_consultarClick(Sender: TObject);
  private
    procedure Consultar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaClientes: Tfrm_ConsultaClientes;

implementation

{$R *.dfm}

{ Tfrm_ConsultaClientes }

procedure Tfrm_ConsultaClientes.btn_consultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure Tfrm_ConsultaClientes.Consultar;
begin
  FD_qryConsultas.Close;
  FD_qryConsultas.SQL.clear;
  FD_qryConsultas.SQL.Add( 'SELECT * FROM CLIENTES');
  FD_qryConsultas.SQL.Add( 'WHERE 1 = 1');


  if Trim(txt_consultar.text) <>'' then
  begin
    FD_qryConsultas.sql.add ('AND UPPER (TRIM (NOME)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.text))+'%'))
  end;

  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;


end;

end.
