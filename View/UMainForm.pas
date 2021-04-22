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
  UController;

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
    Panel1: TPanel;
    btnDetalhes: TButton;
    btnFiltrar: TButton;
    btnLimpar: TButton;
    Painel: TPanel;
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
    Label9: TLabel;
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
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCadastroVoltarClick(Sender: TObject);
  private
    { Private declarations }
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
  TabSheetCadastro.TabVisible := True;
  TabSheetListagem.TabVisible := False;
  btnIncluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnSalvar.Enabled := True;
  btnCancelar.Enabled := True;
  btnCadastroVoltar.Enabled := False;
  EditUsuarioInclusao.Visible := False;
  EditUsuarioAlteracao.Visible := False;
  DateTimePickerInclusao.Enabled := False;
  DateTimePickerAlteracao.Enabled := False;
  Label10.Visible := False;
  Label11.Visible := False;
  Label17.Visible := False;
  Label18.Visible := False;
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
end;

procedure TFMain.btnCadastroVoltarClick(Sender: TObject);
begin
  // Inicio regras de visibilidade/habilita��o/edi��o //
  TabSheetCadastro.TabVisible := False;
  TabSheetListagem.TabVisible := True;
  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := True;
end;

procedure TFMain.btnCancelarClick(Sender: TObject);
begin

  // Inicio regras de visibilidade/habilita��o/edi��o //
  TabSheetListagem.TabVisible := False;
  TabSheetCadastro.TabVisible := True;
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
  // EditDataHoraInclusao.Enabled := True;
  // EditDataHoraAltecacao.Enabled := True;

end;

procedure TFMain.btnIncluirClick(Sender: TObject);

var
  Controller: TController;
begin

    Controller := TController.Create;
    Controller.conn := FDConnection1;
    Controller.Query := FDQuery1;
    Controller.FID_Aluno := StrToInt(EditIdAluno.Text);
    Controller.FNome_Aluno := EditNomeAluno.Text;
    Controller.FCurso := EditCurso.Text;
    Controller.FTurno := EditTurno.Text;
    Controller.FPeriodo := StrToInt(EditPeriodo.Text);
    Controller.FData_Ingresso := DateTimePickerIngresso.Date;
    Controller.FSituacao := EditSituacao.Text;
    Controller.FCadeirante := strtobool(ComboBoxCadeirante.Items.Text);
    Controller.FObservacao := MemoObservacao.Text;
    Controller.FData_Hora_Inclusao := DateTimePickerInclusao.Date;
    Controller.FData_Hora_Alteracao := DateTimePickerAlteracao.Date;
    Controller.FUsuario_Alteracao := EditUsuarioAlteracao.Text;
    Controller.Insert;


    // Inicio regras de visibilidade/habilita��o/edi��o //
    TabSheetCadastro.TabVisible := True;
    TabSheetListagem.TabVisible := False;
    btnIncluir.Enabled := False;
    btnAlterar.Enabled := False;
    btnExcluir.Enabled := False;
    btnSalvar.Enabled := True;
    btnCancelar.Enabled := True;
    btnCadastroVoltar.Enabled := False;
    EditUsuarioInclusao.Visible := False;
    EditUsuarioAlteracao.Visible := False;
    DateTimePickerInclusao.Visible := False;
    DateTimePickerAlteracao.Visible := False;
    Label10.Visible := False;
    Label11.Visible := False;
    Label17.Visible := False;
    Label18.Visible := False;
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

  end;


end.
