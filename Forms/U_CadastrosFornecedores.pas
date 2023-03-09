unit U_CadastrosFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.DBCtrls, Vcl.Mask;

type
  Tfrm_CadastrosFornecedores = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField;
    fd_QueryCadastroRAZAO_SOCIAL: TStringField;
    fd_QueryCadastroFANTASIA: TStringField;
    fd_QueryCadastroCNPJ: TStringField;
    fd_QueryCadastroENDERECO: TStringField;
    fd_QueryCadastroBAIRRO: TStringField;
    fd_QueryCadastroNUMERO: TStringField;
    fd_QueryCadastroCONTROLE_CIDADE: TIntegerField;
    fd_QueryCadastroNOME_CIDADE: TStringField;
    fd_QueryCadastroCONTROLE_ESTADO: TIntegerField;
    fd_QueryCadastroEMAIL: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    fd_QueryCadastroUF: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbox_UF: TDBLookupComboBox;
    cbox_Cidade: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure cbox_UFExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastrosFornecedores: Tfrm_CadastrosFornecedores;

implementation

{$R *.dfm}

uses U_LookUp;

procedure Tfrm_CadastrosFornecedores.cbox_UFExit(Sender: TObject);
begin
  inherited;
  LookUp.FD_qryCidades.Close;
  LookUp.FD_qryCidades.SQL.clear;
  LookUp.FD_qryCidades.SQL.Add('SELECT * FROM CIDADE WHERE UF ='+ QuotedStr(cbox_UF.Text));

  LookUp.FD_qryCidades.Open();
  LookUp.FD_qryCidades.FetchAll;
end;

end.
