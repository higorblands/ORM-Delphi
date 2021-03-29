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
  Vcl.StdCtrls;

type
  TFMain = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDQAluno: TFDQuery;
    DataSource: TDataSource;
    FDQComandos: TFDQuery;
    btAdd: TButton;
    edtID_Aluno: TEdit;
    edtNome_Aluno: TEdit;
    edtCurso: TEdit;
    edtTurno: TEdit;
    edtPeriodo: TEdit;
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
  Aluno.ID_Aluno := strtoint(edtID_Aluno.text);
  Aluno.Nome_Aluno := edtNome_Aluno.text;
  Aluno.Curso := edtCurso.text;
  Aluno.Turno := edtTurno.text;
  Aluno.Periodo := strtoint(edtPeriodo.text);




end;

end.
