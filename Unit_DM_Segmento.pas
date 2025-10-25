unit Unit_DM_Segmento;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TDM_Segmento = class(TDataModule)
    Qry_Segmento: TSQLQuery;
    dsp_Segmento: TDataSetProvider;
    cds_Segmento: TClientDataSet;
    ds_Segmento: TDataSource;
    Qry_SegmentoCODIGO_SEG: TIntegerField;
    Qry_SegmentoDESCRICAO: TStringField;
    cds_SegmentoCODIGO_SEG: TIntegerField;
    cds_SegmentoDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Segmento: TDM_Segmento;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit_DM;

{$R *.dfm}

end.
