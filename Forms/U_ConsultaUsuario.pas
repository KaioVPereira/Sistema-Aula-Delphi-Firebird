unit U_ConsultaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMainConsultas, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ConsultaUsuario = class(Tfrm_MainConsultas)
    DBGrid1: TDBGrid;
    btn_visualizar: TButton;
    btn_alterar: TButton;
    btn_incluir: TButton;
    procedure btn_consultarClick(Sender: TObject);
  private
    procedure consultar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaUsuario: Tfrm_ConsultaUsuario;

implementation

{$R *.dfm}

procedure Tfrm_ConsultaUsuario.btn_consultarClick(Sender: TObject);
begin
  inherited;
  consultar;


end;

procedure Tfrm_ConsultaUsuario.consultar;
begin
   FD_qryConsultas.Close;
  FD_qryConsultas.sql.clear;
  FD_qryConsultas.sql.Add('SELECT U.NOME, U.LOGIN, U.CONTROLE_USUARIO FROM USUARIO U');
  FD_qryConsultas.sql.Add('WHERE 1 = 1');

  if (cboc_filtro.Text = 'NOME') AND (cboc_filtro.Text <> '') then
  BEGIN
    FD_qryConsultas.SQL.Add('AND UPPER (TRIM (NOME)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.Text))+'%'))
  END
  ELSE
  if (cboc_filtro.Text = 'LOGIN') AND (cboc_filtro.Text <> '') then
  BEGIN
    FD_qryConsultas.SQL.Add('AND UPPER (TRIM (LOGIN)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(txt_consultar.Text))+'%'))
  END
  ELSE
  if cboc_filtro.Text = 'CONTROLE_USUARIO' then
  BEGIN
    if StrToIntDef(txt_consultar.Text , 0) >0 then
      FD_qryConsultas.sql.add ('AND CONTROLE_USUARIO = ' + txt_consultar.Text)
  END;


  FD_qryConsultas.Open();
  FD_qryConsultas.FetchAll;
end;

end.
