unit U_FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
    TNav =(tFirst, tPrior, tNext, tLast, tNil);
    Tfrm_Principal = class(TForm)
    fd_QueryCadastro: TFDQuery;
    fd_UpdCadastros: TFDUpdateSQL;
    fd_transaction: TFDTransaction;
    ds_cadastros: TDataSource;
    pn_cabecalho: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btn_novo: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_sair: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetNameTable (pSQL: String ): string;
    procedure SetNewSql(pCodigo: integer);
    { Private declarations }
  public
    var vSQLOriginal: String;
    procedure SetRecord(pCodigo: Integer; pTipo: TNav);
        { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses U_Dados;

procedure Tfrm_Principal.btn_novoClick(Sender: TObject);
begin
  fd_QueryCadastro.Open();
  if not (fd_QueryCadastro.State in [dsEdit, dsInsert]) then
  begin
    fd_QueryCadastro.Insert;
  end;

end;

procedure Tfrm_Principal.btn_gravarClick(Sender: TObject);
begin
  if fd_QueryCadastro.State in [dsEdit, dsInsert] then
  begin
    fd_transaction.StartTransaction;
    fd_QueryCadastro.Post;
    fd_transaction.CommitRetaining;
    fd_QueryCadastro.Close;
  end;
end;

procedure Tfrm_Principal.btn_sairClick(Sender: TObject);
begin
    fd_QueryCadastro.Close;
    Self.Close;
end;

procedure Tfrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fd_QueryCadastro.Close;
end;

procedure Tfrm_Principal.FormCreate(Sender: TObject);
begin
  vSqlOriginal := fd_QueryCadastro.Sql.Text;
  SetNewSql;
end;

function Tfrm_Principal.GetNameTable(pSQL: String): string;
var
  vSQL: TStringList;
begin
  vSQL := TStringList.Create;
  try
    vSQL.Delimiter := ' ';
    vSQL.StrictDelimiter := True;

    vSQL.DelimitedText := copy(pSQL, Pos ('FROM', UpperCase(pSQL)),Length(pSQL));

    Result :=Trim(vSQL.Strings[1]);
  finally
    vSQL.Free;
    end;
end;

procedure Tfrm_Principal.SetNewSql(pCodigo: Integer);
  var vNewSql: String;
begin
  fd_QueryCadastro.Close;
  fd_QueryCadastro.SQL.Clear;

  vNewSql := 'SELECT * FROM ('+ vSQLOriginal +') WHERE CONTROLE_' + GetNameTable(vSQLOriginal) + ' = :CONTROLE_' + GetNameTable(vSQLOriginal);
  fd_QueryCadastro.SQL.Text := vNewSql;
  fd_QueryCadastro.ParamByName('CONTROLE_' + GetNameTable(vSQLOriginal)).AsInteger := pCodigo;
  fd_QueryCadastro.Open();
end;

procedure Tfrm_Principal.SetRecord(pCodigo: Integer; pTipo: TNAV);
begin
  if pCodigo > 0 then
    begin
      SetNewSql(pCodigo);
    end;
  if pTipo= tFirst then
    begin
      fd_QueryCadastro.FieldByName('CONTROLE_' + GetNameTable(vSQLOriginal)).AsInteger;
      //fd_QueryCadastro PAREI NESTE PONTO, AULA 81
    end;
end;

procedure Tfrm_Principal.btn_cancelarClick(Sender: TObject);
  begin
    if fd_QueryCadastro.State in [dsEdit, dsInsert] then
      begin
        fd_QueryCadastro.Cancel;
        fd_transaction.RollbackRetaining;
      end;
  end;

procedure Tfrm_Principal.btn_excluirClick(Sender: TObject);
  begin
    fd_QueryCadastro.Edit;
    fd_QueryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
    fd_transaction.StartTransaction;
    fd_QueryCadastro.Post;
    fd_transaction.CommitRetaining;
  end;
end.
