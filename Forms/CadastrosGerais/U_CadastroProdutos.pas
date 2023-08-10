unit U_CadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, U_constantes, U_LookUp, MoneyEdit,
  dbmnyed, U_Biblioteca, Vcl.ExtDlgs, JPEG;
type
  Tfrm_CadastroProdutos = class(Tfrm_Principal)
    fd_QueryCadastroCODIGO: TIntegerField;
    fd_QueryCadastroDESCRICAO: TStringField;
    fd_QueryCadastroDEPARTAMENTO: TIntegerField;
    fd_QueryCadastroCOLECAO: TIntegerField;
    fd_QueryCadastroGRUPO: TIntegerField;
    fd_QueryCadastroLINHA: TIntegerField;
    fd_QueryCadastroMARCA: TIntegerField;
    fd_QueryCadastroUNIDADE: TIntegerField;
    fd_QueryCadastroPESO_LIQUIDO: TSingleField;
    fd_QueryCadastroPESO_BRUTO: TSingleField;
    fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField;
    fd_QueryCadastroQTD: TSingleField;
    fd_QueryCadastroCUSTO: TSingleField;
    fd_QueryCadastroVALOR_UNITARIO: TSingleField;
    lb_codigo: TLabel;
    lb_descricao: TLabel;
    lb_departamento: TLabel;
    lb_colecao: TLabel;
    lb_grupo: TLabel;
    lb_linha: TLabel;
    lb_marca: TLabel;
    lb_unidade: TLabel;
    lb_pesobruto: TLabel;
    lb_pesolquido: TLabel;
    lb_fornecedor: TLabel;
    lb_quantidade: TLabel;
    lb_custo: TLabel;
    lb_valorunitario: TLabel;
    txt_codigo: TDBEdit;
    txt_descricao: TDBEdit;
    cbox_Departamentto: TDBLookupComboBox;
    cbox_Colecao: TDBLookupComboBox;
    cbox_Grupo: TDBLookupComboBox;
    cbox_linha: TDBLookupComboBox;
    cbox_marca: TDBLookupComboBox;
    cbox_Unidade: TDBLookupComboBox;
    cbox_Fornecedor: TDBLookupComboBox;
    dbmo_PesoBruto: TDBMoneyEdit;
    dbmo_PesoLiquido: TDBMoneyEdit;
    dbmo_qtd: TDBMoneyEdit;
    dbmo_custo: TDBMoneyEdit;
    dbmo_valorunitario: TDBMoneyEdit;
    fd_QueryCadastroDT_EXCLUIDO: TDateField;
    fd_QueryCadastroREFERENCIA: TStringField;
    fd_QueryCadastroIMAGEM: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBImage1: TDBImage;
    Image1: TImage;
    btn_BuscaImagem: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_BuscaImagemClick(Sender: TObject);
  private
    Fmodo : TModoAbertura;
    procedure ValidaAbertura;
    Procedure SalvarImagem;
    Var CaminhoImagem : string;
    { Private declarations }
  public
    property modo: TModoAbertura read Fmodo write Fmodo;
    { Public declarations }
  end;

var
  frm_CadastroProdutos: Tfrm_CadastroProdutos;

implementation

{$R *.dfm}

{ Tfrm_CadastroProdutos }

procedure Tfrm_CadastroProdutos.btn_BuscaImagemClick(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog1.Execute = True then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    CaminhoImagem := OpenPictureDialog1.FileName;

  end;
end;

procedure Tfrm_CadastroProdutos.btn_gravarClick(Sender: TObject);
begin
  //SalvarImagem;
  TBlobField(fd_QueryCadastro.FieldByName('IMAGEM')).LoadFromFile(OpenPictureDialog1.FileName);
  inherited;
  modo := maConsulta;
  ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.btn_novoClick(Sender: TObject);
begin
  inherited;
    dbmo_PesoBruto.Enabled      := true;
    dbmo_PesoLiquido.Enabled    := true;
    dbmo_qtd.Enabled            := true;
    dbmo_custo.Enabled          := true;
    dbmo_valorunitario.Enabled  := true;
    txt_codigo.Enabled          := false;
    txt_descricao.Enabled       := true;
    cbox_Fornecedor.Enabled     := true;
    //ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  modo := maInicial;
  ValidaAbertura;
end;

procedure Tfrm_CadastroProdutos.FormShow(Sender: TObject);
begin
  inherited;
  ValidaAbertura;
  AtualizaFDQuery(LookUp.FD_qryFornec, '');


end;

procedure Tfrm_CadastroProdutos.SalvarImagem;
var
  Stream: TMemoryStream;
  JpegImage: TJPEGImage; // Se você quiser salvar como JPEG
begin
  Stream := TMemoryStream.Create;
  try
    // Salvar a imagem do TImage no stream
    Image1.Picture.Bitmap.SaveToStream(Stream);

    {// Se você quiser salvar como JPEG
    JpegImage := TJPEGImage.Create;
    JpegImage.Assign(Image1.Picture);
    JpegImage.SaveToStream(Stream);
    JpegImage.Free;}

    Stream.Position := 0; // Voltar ao início do stream

    TBlobField(fd_QueryCadastro.FieldByName('IMAGEM')).LoadFromStream(Stream);

  finally
    Stream.Free;
  end;
end;

procedure Tfrm_CadastroProdutos.ValidaAbertura;
begin
  if modo = maInicial then
  begin
    dbmo_PesoBruto.Enabled      := false;
    dbmo_PesoLiquido.Enabled    := false;
    dbmo_qtd.Enabled            := false;
    dbmo_custo.Enabled          := false;
    dbmo_valorunitario.Enabled  := false;
    txt_codigo.Enabled          := false;
    txt_descricao.Enabled       := false;
    cbox_Fornecedor.Enabled     := false;

    dbmo_PesoBruto.Clear;
    dbmo_PesoLiquido.Clear;
    dbmo_qtd.Clear;
    dbmo_custo.Clear;
    dbmo_valorunitario.Clear;
    txt_codigo.Clear;
    txt_descricao.Clear;
  end;

  if modo = maInclusao then
  begin
    btn_novoClick(self);
  end;

  if modo = maConsulta then
  begin
    dbmo_PesoBruto.Enabled      := false;
    dbmo_PesoLiquido.Enabled    := false;
    dbmo_qtd.Enabled            := false;
    dbmo_custo.Enabled          := false;
    dbmo_valorunitario.Enabled  := false;
    txt_codigo.Enabled          := false;
    txt_descricao.Enabled       := false;
    cbox_Fornecedor.Enabled     := false;
  end;

  if modo = maEdicao then
  begin
    dbmo_PesoBruto.Enabled      := true;
    dbmo_PesoLiquido.Enabled    := true;
    dbmo_qtd.Enabled            := true;
    dbmo_custo.Enabled          := true;
    dbmo_valorunitario.Enabled  := true;
    txt_codigo.Enabled          := false;
    txt_descricao.Enabled       := true;
    cbox_Fornecedor.Enabled     := true;
  end;

end;

end.
