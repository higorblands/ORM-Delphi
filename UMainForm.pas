unit UMainForm;

interface

uses
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
    FDConnection: TFDConnection;
    FDQListagem: TFDQuery;
    DataSource: TDataSource;
    edtIdCurso: TEdit;
    edtCurso: TEdit;
    btAdd: TButton;
    FDQComandos: TFDQuery;
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
  Obj: TCursoSQL;
begin
  Obj := TCursoSQL.Create;
  with FDQListagem.SQL do
  begin
    Add('insert into CursosCadastro (IdCurso,Curso)');
    Add('values (''' + edtIdCurso.Text + ''',' +
      QuotedStr(edtCurso.Text) + ')');
  end;
  FDQListagem.ExecSQL;
  Obj.CodigoCurso := edtIdCurso.Text;
  Obj.Descricao := edtCurso.Text;
  Obj.Insert;

  FDQListagem.Close;
  FDQListagem.Open;
end;

end.
