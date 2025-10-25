program Segmento;

uses
  Vcl.Forms,
  Unit_CadSegmento in 'Unit_CadSegmento.pas' {Form_CadSegmento},
  Unit_DM in 'Unit_DM.pas' {DM: TDataModule},
  Unit_DM_Segmento in 'Unit_DM_Segmento.pas' {DM_Segmento: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_Segmento, DM_Segmento);
  Application.CreateForm(TForm_CadSegmento, Form_CadSegmento);
  Application.Run;
end.
