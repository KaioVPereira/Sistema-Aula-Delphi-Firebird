unit U_FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, JPEG;

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
    FD_codigo: TFDQuery;
    Panel4: TPanel;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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

uses U_Dados, U_Biblioteca;

procedure Tfrm_Principal.btn_novoClick(Sender: TObject);
begin
  fd_QueryCadastro.Open();
  if not (fd_QueryCadastro.State in [dsEdit, dsInsert]) then
  begin
    fd_QueryCadastro.Insert;
  end;
  EnableEdit(Self, True);
  btn_novo.Enabled := False;
  btn_gravar.Enabled := True;
  btn_cancelar.Enabled := True;

end;

procedure Tfrm_Principal.btn_gravarClick(Sender: TObject);
begin
  if fd_QueryCadastro.State in [dsEdit, dsInsert] then
  begin
    if MsgPerguntar('Tem certeza?') then
    begin
      fd_transaction.StartTransaction;
      fd_QueryCadastro.Post;
      fd_transaction.CommitRetaining;
      fd_QueryCadastro.Close;
    end;
    EnableEdit(Self, False);
    btn_novo.Enabled := True;
    btn_gravar.Enabled := false;
    btn_cancelar.Enabled := false;
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
  EnableEdit(Self, False);
  btn_novo.Enabled := True;
  btn_gravar.Enabled := false;
  btn_cancelar.Enabled := false;
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
  var vID :String;
begin

  if GetNameTable(vSQLOriginal) = 'VENDAS_HEADER' then
    BEGIN
      Vid := 'CONTROLE_VENDA'
    END
  ELSE if GetNameTable(vSQLOriginal) = 'PRODUTOS' then
    begin
      Vid := 'CODIGO'
    end

  ELSE
    BEGIN
      Vid := 'CONTROLE_' + GetNameTable(vSQLOriginal);
    END;

  fd_QueryCadastro.Close;
  fd_QueryCadastro.SQL.Clear;

  vNewSql := 'SELECT * FROM '+ GetNameTable(vSQLOriginal) +' WHERE '+ vID +' = :'+vID;
  fd_QueryCadastro.SQL.Text := vNewSql;
  fd_QueryCadastro.SQL.Add('AND DT_EXCLUIDO IS NULL');
  fd_QueryCadastro.ParamByName(vID).AsInteger := pCodigo;
  fd_QueryCadastro.Open();
end;

procedure Tfrm_Principal.SetRecord(pCodigo: Integer; pTipo: TNAV);

var Vid :string;
    vCodigo: integer;
begin

  if GetNameTable(vSQLOriginal) = 'VENDAS_HEADER' then
  BEGIN
    Vid := 'CONTROLE_VENDA'
  END
  ELSE if GetNameTable(vSQLOriginal) = 'PRODUTOS' then
    begin
      Vid := 'CODIGO'
    end
  ELSE
  BEGIN
    Vid := 'CONTROLE_' + GetNameTable(vSQLOriginal);
  END;


  if pCodigo > 0 then
    begin
      SetNewSql(pCodigo);
    end
  else
    if
    pTipo = tFirst then
    begin

      FD_codigo.Close;
      FD_codigo.SQL.Clear;
      FD_codigo.sql.Add('SELECT MIN('+Vid+')ID FROM '+ GetNameTable(vSQLOriginal));
      FD_codigo.Open();

      vCodigo := FD_codigo.FieldByName('ID').AsInteger;

      SetNewSql(vCodigo);
    end
    else
    if pTipo = tLast then
    begin
       FD_codigo.Close;
      FD_codigo.SQL.Clear;
      FD_codigo.sql.Add('SELECT MAX('+Vid+')ID FROM '+ GetNameTable(vSQLOriginal));
      FD_codigo.Open();

      vCodigo := FD_codigo.FieldByName('ID').AsInteger;

      SetNewSql(vCodigo);
    end
    else
    if pTipo = tPrior then
    BEGIN

      vCodigo:= fd_QueryCadastro.FieldByName(Vid).AsInteger;
      FD_codigo.Close;
      FD_codigo.SQL.Clear;
      FD_codigo.sql.Add('SELECT MAX('+Vid+')ID FROM '+ GetNameTable(vSQLOriginal)+ ' WHERE ' +Vid+ '<'+ IntToStr(vCodigo));
      FD_codigo.Open();

      vCodigo := FD_codigo.FieldByName('ID').AsInteger;

      SetNewSql(vCodigo);
    END
    ELSE
    if pTipo = tNext then
    begin
      vCodigo:= fd_QueryCadastro.FieldByName(Vid).AsInteger;
      FD_codigo.Close;
      FD_codigo.SQL.Clear;
      FD_codigo.sql.Add('SELECT MIN('+Vid+')ID FROM '+ GetNameTable(vSQLOriginal)+ ' WHERE ' +Vid+ '>'+ IntToStr(vCodigo));
      FD_codigo.Open();

      vCodigo := FD_codigo.FieldByName('ID').AsInteger;

      SetNewSql(vCodigo);
    end
    ELSE
    if pTipo = tNil then
    BEGIN
      SetNewSql(0);
    END;


end;

procedure Tfrm_Principal.SpeedButton1Click(Sender: TObject);
begin
  SetRecord(0,tFirst);
end;

procedure Tfrm_Principal.SpeedButton2Click(Sender: TObject);
begin
  SetRecord(0, tPrior);
end;

procedure Tfrm_Principal.SpeedButton3Click(Sender: TObject);
begin
  SetRecord(0, tNext);
end;

procedure Tfrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  SetRecord(0, tLast);
end;

procedure Tfrm_Principal.btn_cancelarClick(Sender: TObject);
  begin
    if fd_QueryCadastro.State in [dsEdit, dsInsert] then
      begin
        fd_transaction.StartTransaction;
        fd_QueryCadastro.Cancel;
        fd_transaction.RollbackRetaining;
      end;
      EnableEdit(Self, False);
      btn_novo.Enabled := True;
      btn_gravar.Enabled := false;
      btn_cancelar.Enabled := false;
  end;

procedure Tfrm_Principal.btn_excluirClick(Sender: TObject);
  begin
     if fd_QueryCadastro.RecordCount > 0 then
     begin
      if MsgPerguntar('Tem certeza que deseja excluir', False) then
      begin
        fd_QueryCadastro.Edit;
        fd_QueryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
        fd_transaction.StartTransaction;
        fd_QueryCadastro.Post;
        fd_transaction.CommitRetaining;
        ShowMessage('Registro marcado como Exclu�do');
        SetRecord(fd_QueryCadastro.FieldByName('CONTROLE_'+ GetNameTable(vSQLOriginal)).AsInteger, tNil);
      end;
     end;
  end;
end.
