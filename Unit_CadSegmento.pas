unit Unit_CadSegmento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm_CadSegmento = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CadSegmento: TForm_CadSegmento;

implementation

{$R *.dfm}

uses Unit_DM_Segmento;

procedure TForm_CadSegmento.BitBtn1Click(Sender: TObject);
begin
     DM_Segmento.cds_Segmento.Append;
end;

procedure TForm_CadSegmento.BitBtn2Click(Sender: TObject);
begin
           DM_Segmento.cds_Segmento.Post;
         DM_Segmento.cds_Segmento.ApplyUpdates(0);
end;

procedure TForm_CadSegmento.BitBtn3Click(Sender: TObject);
begin
         DM_Segmento.cds_Segmento.Edit
end;

procedure TForm_CadSegmento.BitBtn4Click(Sender: TObject);
begin
    if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              DM_Segmento.cds_Segmento.Delete;
              DM_Segmento.cds_Segmento.ApplyUpdates(0);
end;

procedure TForm_CadSegmento.BitBtn5Click(Sender: TObject);
begin
     DM_Segmento.cds_Segmento.Refresh;
end;

procedure TForm_CadSegmento.FormCreate(Sender: TObject);
begin
       DM_Segmento.cds_Segmento.Close;
       DM_Segmento.cds_Segmento.Open;
end;

end.
