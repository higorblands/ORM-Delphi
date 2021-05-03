unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  UController, Data.SqlExpr;

type
  TFMain = class(TForm)
    PageControl: TPageControl;
    TabSheetCadastro: TTabSheet;
    TabSheetListagem: TTabSheet;
    GroupBoxListagem: TGroupBox;
    LID: TLabel;
    LNome: TLabel;
    edtFiltroID: TEdit;
    edtFiltroNome: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btnCadastroVoltar: TButton;
    EditCurso: TEdit;
    EditIdAluno: TEdit;
    EditNomeAluno: TEdit;
    EditSituacao: TEdit;
    EditUsuarioInclusao: TEdit;
    EditUsuarioAlteracao: TEdit;
    EditTurno: TEdit;
    EditPeriodo: TEdit;
    DateTimePickerIngresso: TDateTimePicker;
    ComboBoxCadeirante: TComboBox;
    MemoObservacao: TMemo;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DateTimePickerInclusao: TDateTimePicker;
    DateTimePickerAlteracao: TDateTimePicker;
    LCurso: TLabel;
    edtFiltroCurso: TEdit;
    LPeriodo: TLabel;
    edtFiltroPeriodo: TEdit;
    LSituacao: TLabel;
    edtFiltroSituacao: TEdit;
    btnDetalhes: TButton;
    btnFiltrar: TButton;
    btnLimpar: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCadastroVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnDetalhesClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure GridCustomize;
    Procedure GenericSelect;
    procedure ClearEdits;
    procedure ClearEditsFiltro;
    procedure DisableEdits;
    procedure enableedits;
    procedure checkdsempty;

  var
    controller: TController;

  public
    { Public declarations }

  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.btnAlterarClick(Sender: TObject);

begin

  // Inicio regras de visibilidade/habilita��o/edi��o //
   btnSalvar.Enabled := True;
  btnCancelar.Enabled := False;
  btnCadastroVoltar.Enabled := True;
  btnAlterar.Enabled := False;
  DisableEdits;
  ClearEdits;
  PageControl.ActivePageIndex := 1;

  controller := TController.Create;
  controller.conn := FDConnection1;
  controller.Query := FDQuery1;
  controller.ID_Aluno := 1505; // StrToInt(EditIdAluno.Text);
  controller.Nome_Aluno := 'Megaman'; // EditNomeAluno.Text;
  controller.Curso := 'BDS'; // EditCurso.Text;
  controller.Turno := 'E'; // EditTurno.Text;
  controller.Periodo := 2; // StrToInt(EditPeriodo.Text);
  controller.Data_Ingresso := now; // DateTimePickerIngresso.Date;
  controller.Situacao := 'R'; // EditSituacao.Text;
  controller.Cadeirante := False; // strtobool(ComboBoxCadeirante.Items.Text);
  controller.Observacao := 'Aluno bom e novo !'; // MemoObservacao.Text;
  controller.Data_Hora_Inclusao := now; // DateTimePickerInclusao.Date;
  controller.Usuario_Inclusao := 'Andriws';
  controller.Data_Hora_Alteracao := now; // DateTimePickerAlteracao.Date;
  controller.Usuario_Alteracao := 'Andriws'; // EditUsuarioAlteracao.Text;

  // Alimentando os edit
  EditIdAluno.Text := IntToStr(controller.ID_Aluno);
  EditNomeAluno.Text := controller.Nome_Aluno;
  EditCurso.Text := controller.Curso;
  EditTurno.Text := controller.Turno;
  EditPeriodo.Text := IntToStr(controller.Periodo);
  DateTimePickerIngresso.Date := controller.Data_Ingresso;
  EditSituacao.Text := controller.Situacao;
  case controller.Cadeirante of
    False:
      ComboBoxCadeirante.ItemIndex := 2;
    True:
      ComboBoxCadeirante.ItemIndex := 1;

  end;
  EditUsuarioInclusao.Text := controller.Usuario_Inclusao;
  EditUsuarioAlteracao.Text := controller.Usuario_Alteracao;
  DateTimePickerInclusao.DateTime := controller.Data_Hora_Inclusao;
  DateTimePickerAlteracao.DateTime := controller.Data_Hora_Alteracao;
  MemoObservacao.Lines.Add(controller.Observacao);


  controller.Update;  /// Update

  ShowMessage(controller.FORMMSG);
  controller.Free;
end;

procedure TFMain.btnCadastroVoltarClick(Sender: TObject);
begin
  // Inicio regras de visibilidade/habilita��o/edi��o //

  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := True;
  btnExcluir.Enabled := True;
  PageControl.ActivePageIndex := 0;
  ClearEdits;
  GenericSelect;
  btnCadastroVoltar.Visible := True;
  DataSource1.DataSet.Last;

end;

procedure TFMain.btnCancelarClick(Sender: TObject);
begin

  // Inicio regras de visibilidade/habilita��o/edi��o //

  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := True;
  btnCadastroVoltar.Enabled := True;
  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  EditUsuarioInclusao.Visible := True;
  EditUsuarioAlteracao.Visible := True;
  DateTimePickerInclusao.Enabled := True;
  DateTimePickerAlteracao.Enabled := True;
  Label10.Visible := True;
  Label11.Visible := True;
  Label17.Visible := True;
  Label18.Visible := True;
  EditCurso.ReadOnly := True;
  EditIdAluno.ReadOnly := True;
  EditNomeAluno.ReadOnly := True;
  EditCurso.ReadOnly := True;
  EditTurno.ReadOnly := True;
  EditPeriodo.ReadOnly := True;
  DateTimePickerIngresso.Enabled := True;
  ComboBoxCadeirante.Enabled := True;
  EditSituacao.ReadOnly := True;
  EditUsuarioInclusao.ReadOnly := True;
  EditUsuarioAlteracao.ReadOnly := True;
  DateTimePickerInclusao.Enabled := True;
  DateTimePickerAlteracao.Enabled := True;
  MemoObservacao.ReadOnly := True;
  btnExcluir.Enabled := False;
  // EditDataHoraInclusao.Enabled := True;
  // EditDataHoraAltecacao.Enabled := True;

end;

procedure TFMain.btnDetalhesClick(Sender: TObject);

begin
  controller := TController.Create;
  controller.conn := FDConnection1;
  controller.Query := FDQuery1;
  controller.ID_Aluno := 1505;
  controller.read(controller.ID_Aluno);
  PageControl.ActivePageIndex := 1;
  EditIdAluno.Text := IntToStr(controller.ID_Aluno);
  EditNomeAluno.Text := controller.Nome_Aluno;
  EditCurso.Text := controller.Curso;
  EditPeriodo.Text := IntToStr(controller.Periodo);
  EditTurno.Text := controller.Turno;
  EditSituacao.Text := controller.Situacao;
  case controller.Cadeirante of
    False:
      ComboBoxCadeirante.ItemIndex := 2;
    True:
      ComboBoxCadeirante.ItemIndex := 1;

  end;
  DateTimePickerIngresso.Date := controller.Data_Ingresso;
  EditUsuarioInclusao.Text := controller.Usuario_Inclusao;
  EditUsuarioAlteracao.Text := controller.Usuario_Alteracao;
  DateTimePickerInclusao.DateTime := controller.Data_Hora_Inclusao;
  DateTimePickerAlteracao.DateTime := controller.Data_Hora_Alteracao;
  MemoObservacao.Lines.Add(controller.Observacao);
  btnIncluir.Enabled := False;
  btnCancelar.Enabled := False;
  DisableEdits;
end;

procedure TFMain.btnExcluirClick(Sender: TObject);

begin
  controller := TController.Create;
  controller.conn := FDConnection1;
  controller.Query := FDQuery1;
  controller.ID_Aluno := 1505;
  controller.Delete;
  ShowMessage(controller.FORMMSG);
  controller.Free;
  GenericSelect;
  DisableEdits;

  PageControl.ActivePageIndex := 0;
  DataSource1.DataSet.Last;

end;

procedure TFMain.btnFiltrarClick(Sender: TObject);
begin
  GenericSelect;
  GridCustomize;
end;

procedure TFMain.btnIncluirClick(Sender: TObject);

begin
  ClearEdits;
  enableedits;
  PageControl.ActivePageIndex := 1;
  controller := TController.Create;
  controller.conn := FDConnection1;
  controller.Query := FDQuery1;
  controller.ID_Aluno := 1505; // StrToInt(EditIdAluno.Text);
  controller.Nome_Aluno := 'Higor'; // EditNomeAluno.Text;
  controller.Curso := 'BDS'; // EditCurso.Text;
  controller.Turno := 'E'; // EditTurno.Text;
  controller.Periodo := 2; // StrToInt(EditPeriodo.Text);
  controller.Data_Ingresso := now; // DateTimePickerIngresso.Date;
  controller.Situacao := 'R'; // EditSituacao.Text;
  controller.Cadeirante := False; // strtobool(ComboBoxCadeirante.Items.Text);
  controller.Observacao := 'Aluno bom e novo !'; // MemoObservacao.Text;
  controller.Data_Hora_Inclusao := now; // DateTimePickerInclusao.Date;
  controller.Usuario_Inclusao := 'Andriws';
  controller.Data_Hora_Alteracao := now; // DateTimePickerAlteracao.Date;
  controller.Usuario_Alteracao := 'Andriws'; // EditUsuarioAlteracao.Text;
  controller.read(controller.ID_Aluno);
  // Controller Free sendo realizado no Save.

  // Alimentando os edit
  EditIdAluno.Text := IntToStr(controller.ID_Aluno);
  EditNomeAluno.Text := controller.Nome_Aluno;
  EditCurso.Text := controller.Curso;
  EditTurno.Text := controller.Turno;
  EditPeriodo.Text := IntToStr(controller.Periodo);
  DateTimePickerIngresso.Date := controller.Data_Ingresso;
  EditSituacao.Text := controller.Situacao;
  case controller.Cadeirante of
    False:
      ComboBoxCadeirante.ItemIndex := 2;
    True:
      ComboBoxCadeirante.ItemIndex := 1;

  end;
  EditUsuarioInclusao.Text := controller.Usuario_Inclusao;
  EditUsuarioAlteracao.Text := controller.Usuario_Alteracao;
  DateTimePickerInclusao.DateTime := controller.Data_Hora_Inclusao;
  DateTimePickerAlteracao.DateTime := controller.Data_Hora_Alteracao;
  MemoObservacao.Lines.Add(controller.Observacao);

  // Inicio regras de visibilidade/habilita��o/edi��o //
  btnCadastroVoltar.Visible := True;
  btnIncluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnSalvar.Enabled := True;
  btnCancelar.Enabled := True;
  EditCurso.ReadOnly := False;
  EditIdAluno.ReadOnly := True;
  EditNomeAluno.ReadOnly := False;
  EditCurso.ReadOnly := False;
  EditTurno.ReadOnly := False;
  EditPeriodo.ReadOnly := False;
  DateTimePickerIngresso.Enabled := True;
  ComboBoxCadeirante.Enabled := True;
  EditSituacao.ReadOnly := False;
  EditUsuarioInclusao.ReadOnly := False;
  EditUsuarioAlteracao.ReadOnly := False;
  MemoObservacao.ReadOnly := False;
  btnExcluir.Enabled := False;

  // SELECT  //
  GenericSelect;

end;

procedure TFMain.btnLimparClick(Sender: TObject);
begin
  ClearEditsFiltro;
end;

procedure TFMain.btnSalvarClick(Sender: TObject);

begin
  controller.Insert;
  ShowMessage(controller.FORMMSG);
  controller.Free;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
  btnCadastroVoltar.Enabled := True;
  btnAlterar.Enabled := True;
  DisableEdits;


end;

procedure TFMain.checkdsempty;
begin
  if DataSource1.DataSet.IsEmpty then
  begin
    btnDetalhes.Enabled := False;
    btnAlterar.Enabled := False;
    btnLimpar.Enabled := False;
    btnFiltrar.Enabled := False;
    btnSalvar.Enabled := False;
    btnExcluir.Enabled := False;
    btnCancelar.Enabled := False;
  end
  else
  begin
    btnDetalhes.Enabled := True;
    btnAlterar.Enabled := True;
    btnLimpar.Enabled := True;
    btnFiltrar.Enabled := True;
    btnSalvar.Enabled := True;
    btnExcluir.Enabled := True;
    btnCancelar.Enabled := True;
  end;
end;

procedure TFMain.ClearEdits;
begin
  EditIdAluno.Clear;
  EditNomeAluno.Clear;
  EditCurso.Clear;
  EditPeriodo.Clear;
  EditTurno.Clear;
  EditSituacao.Clear;
  EditUsuarioInclusao.Clear;
  EditUsuarioAlteracao.Clear;
  MemoObservacao.Lines.Clear;
end;

procedure TFMain.ClearEditsFiltro;
begin
  edtFiltroID.Text := '';
  edtFiltroNome.Text := '';
  edtFiltroCurso.Text := '';
  edtFiltroPeriodo.Text := '';
  edtFiltroSituacao.Text := '';
end;

procedure TFMain.DBGrid1CellClick(Column: TColumn);
begin
  controller := TController.Create;
  controller.conn := FDConnection1;
  controller.Query := FDQuery1;
  controller.ID_Aluno := 1505;
  controller.read(controller.ID_Aluno);
  edtFiltroID.Text := IntToStr(controller.ID_Aluno);
  edtFiltroNome.Text := controller.Nome_Aluno;
  edtFiltroCurso.Text := controller.Curso;
  edtFiltroPeriodo.Text := IntToStr(controller.Periodo);
  edtFiltroSituacao.Text := controller.Turno;
  btnIncluir.Enabled := False;
  btnCancelar.Enabled := False;
  GenericSelect;
  GridCustomize;
  controller.Free;
end;

procedure TFMain.DisableEdits;
begin
  EditIdAluno.Enabled := False;
  EditNomeAluno.Enabled := False;
  EditCurso.Enabled := False;
  EditPeriodo.Enabled := False;
  EditTurno.Enabled := False;
  EditSituacao.Enabled := False;
  EditUsuarioInclusao.Enabled := False;
  EditUsuarioAlteracao.Enabled := False;
  MemoObservacao.Enabled := False;
  DateTimePickerIngresso.Enabled := False;
  DateTimePickerInclusao.Enabled := False;
  DateTimePickerAlteracao.Enabled := False;
  ComboBoxCadeirante.Enabled := False;
end;

procedure TFMain.enableedits;
begin
  EditIdAluno.Enabled := True;
  EditNomeAluno.Enabled := True;
  EditCurso.Enabled := True;
  EditPeriodo.Enabled := True;
  EditTurno.Enabled := True;
  EditSituacao.Enabled := True;
  EditUsuarioInclusao.Enabled := True;
  EditUsuarioAlteracao.Enabled := True;
  MemoObservacao.Enabled := True;
  DateTimePickerIngresso.Enabled := True;
  DateTimePickerInclusao.Enabled := True;
  DateTimePickerAlteracao.Enabled := True;
  ComboBoxCadeirante.Enabled := True;
end;

procedure TFMain.GenericSelect;
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('select * from Aluno');
  FDQuery1.Open;
  GridCustomize;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
  TabSheetCadastro.TabVisible := False;
  btnCadastroVoltar.Visible := False;
  PageControl.ActivePageIndex := 0;
  ComboBoxCadeirante.ItemIndex := 0;
  btnSalvar.Enabled := False;
  checkdsempty;
end;

procedure TFMain.GridCustomize;
begin
  DBGrid1.Columns[0].Title.Caption := 'ID';
  DBGrid1.Columns[1].Title.Caption := 'Nome';
  DBGrid1.Columns[2].Title.Caption := 'Curso';
  DBGrid1.Columns[3].Title.Caption := 'Turno';
  DBGrid1.Columns[4].Title.Caption := 'Per�odo';
  DBGrid1.Columns[5].Title.Caption := 'Data de Ingresso';
  DBGrid1.Columns[6].Title.Caption := 'Situa��o';
  DBGrid1.Columns[7].Title.Caption := 'Cadeirante';
  DBGrid1.Columns[8].Title.Caption := 'Observa��o';
  DBGrid1.Columns[9].Title.Caption := 'Data - Hora Inclus�o';
  DBGrid1.Columns[10].Title.Caption := 'Usu�rio Inclus�o';
  DBGrid1.Columns[11].Title.Caption := 'Data - Hora Altera��o';
  DBGrid1.Columns[12].Title.Caption := 'Usu�rio Altera��o';
  DBGrid1.Columns[0].Width := 50;
  DBGrid1.Columns[1].Width := 150;
  DBGrid1.Columns[2].Width := 100;
  DBGrid1.Columns[7].Visible := False;
  DBGrid1.Columns[8].Visible := False;
  DBGrid1.Columns[9].Visible := False;
  DBGrid1.Columns[10].Visible := False;
  DBGrid1.Columns[11].Visible := False;
  DBGrid1.Columns[12].Visible := False;
end;

end.
