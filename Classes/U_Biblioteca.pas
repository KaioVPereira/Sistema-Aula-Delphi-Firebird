unit U_Biblioteca;

interface
  uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client,
  System.Classes, Winapi.Windows; //frxClass;

  procedure ArqIni            (pLocal, pSessao, pSubsessao: String; pValor:String);
  function  GetArqIni         (pLocal, Psessao, pSubsessao: String): string;
  procedure AtualizaFDQuery   (const pFDQuery : TFDQuery; pSQL : String);
  procedure AbreFormShowModal (pClass: TComponentClass; pForm :TForm);
  procedure AbreForm          (pClass: TComponentClass; pForm :TForm);

  procedure MsgAtencao (pMsg: String);
  procedure MsgInformacao (pMsg : String);
  function MsgPerguntar (pMsg: String; pFocoBtnSim : Boolean = true): Boolean;
  procedure MsgErro (pMsg: String);
  //procedure CarregaRelat      (const pReport: TFrxReport);

implementation

uses U_FormMain;

  //Procedure que gera o arquivo ini
  procedure ArqIni(pLocal, pSessao, pSubsessao: String; pValor:String);
  var vArquivo: TiniFile;
    begin
      vArquivo := TiniFile.Create(pLocal);
      vArquivo.WriteString(pSessao, pSubsessao, pValor);
      vArquivo.Free;
    end;

  //Function que lê o arquivo ini e gera o arquivo também
  function GetArqIni (pLocal, Psessao, pSubsessao: String): string;
  var vArquivo : TIniFile;
    begin
      vArquivo := TIniFile.Create(pLocal);
      Result := vArquivo.ReadString(pSessao, pSubsessao, '');
      vArquivo.Free;
    end;

   procedure AtualizaFDQuery(const pFDQuery : TFDQuery; pSQL : String);
    begin
      pFdQuery.Close;
      if Trim(pSQL) <> '' then
      BEGIN
        pFDQuery.SQL.Clear;
        pFDQuery.SQL.Text := pSQL;
      END;
      pFdQuery.Open();
      pFdQuery.FetchAll;
    end;

   procedure AbreFormShowModal (pClass: TComponentClass; pForm :TForm);
    begin
      try
        Application.CreateForm(pClass, pForm);
        pForm.ShowModal;
      finally
        FreeAndNil(pForm);
      end;
    end;

    procedure AbreForm (pClass: TComponentClass; pForm :TForm);
    begin
      try
        Application.CreateForm(pClass, pForm);
        pForm.Show;
      finally

      end;
    end;
   // procedure CarregaRelat(const pReport: TFrxReport);
    //begin
     // pReport.PrepareReport;
      //pReport.ShowPreparedReport;
    //end;
    procedure MsgAtencao (pMsg: String);
    begin
      Application.MessageBox(pChar(pMsg), 'ATENÇÃO', MB_ICONWARNING + MB_OK);
    end;

    procedure MsgInformacao (pMsg : String);
    begin
      Application.MessageBox(pChar(pMsg), 'INFORMAÇÃO', MB_ICONINFORMATION + MB_OK);
    end;

    function MsgPerguntar (pMsg: String; pFocoBtnSim : Boolean = true): Boolean;
    begin
    if pFocoBtnSim then
      begin
       result :=  Application.MessageBox(pChar(pMsg), 'PERGUNTA', MB_ICONQUESTION + MB_YESNO) = IDYES;
      end
      ELSE
      BEGIN
        result := Application.MessageBox(pChar(pMsg), 'PERGUNTA', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
      END;
    end;

    procedure MsgErro (pMsg: String);
    begin
      Application.MessageBox(pChar(pMsg), 'ERRO', MB_ICONERROR + MB_OK);
    end;
end.
