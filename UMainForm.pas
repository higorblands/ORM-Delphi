unit UMainForm;

interface

uses
  UGeneralORM, UAlunoORM,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFMain = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDQAluno: TFDQuery;
    DataSource: TDataSource;
    btAdd: TButton;
    edtID_Aluno: TEdit;
    edtNome_Aluno: TEdit;
    edtCurso: TEdit;
    edtTurno: TEdit;
    edtPeriodo: TEdit;
    DTPData_Ingresso: TDateTimePicker;
    LData_Ingresso: TLabel;
    edtSituacao: TEdit;
    edtObservacao: TEdit;
    DTPData_Hora_Inclusao: TDateTimePicker;
    LData_Hora_Inclusao: TLabel;
    FDQComandos: TFDQuery;
    edtUsuario_Inclusao: TEdit;
    DTPData_Hora_Alteracao: TDateTimePicker;
    LData_Hora_Alteracao: TLabel;
    edtUsuario_Alteracao: TEdit;
    RadioButton1: TRadioButton;
    ComboBox1: TComboBox;
    procedure btAddClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.btAddClick(Sender: TObject);
var
  Aluno: TAluno;
begin
  Aluno := TAluno.Create;
  Aluno.conn := FDConnection1;
  Aluno.ID_Aluno.Value := //strtoint(edtID_Aluno.text);
  Aluno.Nome_Aluno.Value := //edtNome_Aluno.text;
  Aluno.Curso.Value := //edtCurso.text;
  Aluno.Turno.Value := //edtTurno.text;
  Aluno.Periodo.Value := //strtoint(edtPeriodo.text);
  Aluno.Data_Ingresso.Value := //DTPData_Ingresso.Date;
  Aluno.Situacao.Value := //edtSituacao.text;
  Aluno.Cadeirante.Value := True;//StrToBool(edtCadeirante.text);
  Aluno.Observacao.Value := edtObservacao.text;
  Aluno.Data_Hora_Inclusao.Value := DTPData_Hora_Inclusao.DateTime;
  Aluno.Usuario_Inclusao.Value := edtUsuario_Inclusao.text;
  Aluno.Data_Hora_Alteracao.Value := DTPData_Hora_Alteracao.DateTime ;
  Aluno.Usuario_Alteracao.Value := edtUsuario_Alteracao.text;

end;

end.
