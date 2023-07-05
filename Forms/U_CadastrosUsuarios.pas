unit U_CadastrosUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, U_constantes;

type
  Tfrm_CadastrosUsuarios = class(Tfrm_Principal)
    fd_QueryCadastroNOME: TStringField;
    fd_QueryCadastroLOGIN: TStringField;
    fd_QueryCadastroSENHA: TStringField;
    fd_QueryCadastroCONTROLE_USUARIO: TIntegerField;
    Label1: TLabel;
    DB_nome: TDBEdit;
    Label2: TLabel;
    DB_login: TDBEdit;
    Label3: TLabel;
    DB_senha: TDBEdit;
    Label4: TLabel;
    DB_controle: TDBEdit;
    fd_QueryCadastroDT_EXCLUIDO: TDateField;
    procedure fd_QueryCadastroBeforePost(DataSet: TDataSet);
    procedure btn_gravarClick(Sender: TObject);
  private
    procedure ValidarCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastrosUsuarios: Tfrm_CadastrosUsuarios;

implementation

{$R *.dfm}

uses uCrpt;

procedure Tfrm_CadastrosUsuarios.btn_gravarClick(Sender: TObject);
begin
  ValidarCampos;
  inherited;

end;

procedure Tfrm_CadastrosUsuarios.fd_QueryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fd_QueryCadastro.State in [dsInsert] then
  begin
     fd_QueryCadastroSENHA.AsAnsiString := Criptografa('C', fd_QueryCadastroSENHA.AsAnsiString);
  end
  ELSE
    if fd_QueryCadastro.State in [dsEdit] then
    begin
      if (VarToStrDef(fd_QueryCadastroSENHA.OldValue, '')<> '') and (fd_QueryCadastroSENHA.AsAnsiString <>fd_QueryCadastroSENHA.OldValue ) then
      begin
        fd_QueryCadastroSENHA.AsAnsiString := Criptografa('C', fd_QueryCadastroSENHA.AsAnsiString);
      end;
    end;
end;

procedure Tfrm_CadastrosUsuarios.ValidarCampos;
begin
  if (trim(DB_nome.Text) = '') or (trim(DB_login.Text) = '') or (trim(DB_senha.Text) = '') then
  begin
    ShowMessage('Todos so campos são obrigatórios');
  end;
end;

end.
