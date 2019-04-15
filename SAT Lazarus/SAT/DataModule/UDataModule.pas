{ *******************************************************************************
Title: T2Ti ERP
Description: DataModule

The MIT License

Copyright: Copyright (C) 2015 T2Ti.COM

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

The author may be contacted at:
t2ti.com@gmail.com</p>

@author Albert Eije (t2ti.com@gmail.com)
@version 2.0
******************************************************************************* }
unit UDataModule;

{$MODE Delphi}

interface

uses
  SysUtils, Classes, DB, Controls,
  Dialogs,
  ACBrBase,
  ACBrSATExtratoFortesFr, ACBrSAT;

type

  { TFDataModule }

  TFDataModule = class(TDataModule)
    ACBrSAT: TACBrSAT;
    ACBrSATExtratoFortes: TACBrSATExtratoFortes;
    procedure ACBrSATGetsignAC(var Chave: AnsiString);
    procedure ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataModule: TFDataModule;

implementation

{$R *.lfm}
{ TFDataModule }

procedure TFDataModule.ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := '12345678';
end;

procedure TFDataModule.ACBrSATGetsignAC(var Chave: AnsiString);
begin
  Chave := 'eije11111111111111111111111111111111111111111111111111111111111'+
           '111111111111111111111111111111111111111111111111111111111111111'+
           '111111111111111111111111111111111111111111111111111111111111111'+
           '111111111111111111111111111111111111111111111111111111111111111'+
           '111111111111111111111111111111111111111111111111111111111111111'+
           '11111111111111111111111111111';
end;

end.
