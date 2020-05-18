unit previewLabelUnit;

interface

type
  TOutputLabelary = (olPng, olPdf);

function GetLabelFromLabelaryService(const input, output, dpi, size: string; outputLabelary: TOutputLabelary): boolean;

implementation

uses
  Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  SysUtils, Dialogs;

{*------------------------------------------------------------------------------
  function GetLabelFromLabelaryService(const input, output, dpi, size: string): boolean;

  @input          input filename of zpl code
  @output         ouput filename
  @dpi            6dpmm, 8dpmm, 12dpmm or 24dpmm
  @size           label width x height in inches -> 4x6 for example
  @outputLabelary format request
-------------------------------------------------------------------------------}
function GetLabelFromLabelaryService(const input, output, dpi, size: string; outputLabelary: TOutputLabelary): boolean;
var
  http: TIdHTTP;
  ms: TMemoryStream;
  os: TFileStream;
begin
  http := TIdHTTP.Create(nil);
  try
    http.HandleRedirects := True;
    http.ReadTimeout := 5000;
    ms := TMemoryStream.Create;
    try
      if outputLabelary = olPdf then
        http.Request.Accept := 'application/pdf';
      http.Post(Format('http://api.labelary.com/v1/printers/%s/labels/%s/0/',[dpi,size]),input,ms);
      os := TFileStream.Create(output,fmOpenWrite or fmCreate);
      try
        ms.SaveToStream(os);
        Result := FileExists(output);
      finally
        os.Free;
      end;
    finally
      ms.Free;
    end;
  finally
    http.Free;
  end;
end;

end.
