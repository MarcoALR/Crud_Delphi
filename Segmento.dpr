program Segmento;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Cad_Segmento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCad_Segmento, Cad_Segmento);
  Application.Run;
end.
