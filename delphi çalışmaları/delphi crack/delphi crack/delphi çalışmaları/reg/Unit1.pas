unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Registry, StdCtrls;{Burada Delphi'ye Registry bile�enini tan�tt�m.}

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Reg:Tregistry; {��im kolayla�s�n diye burada Tregistry'i Reg de�i�kenine
                  atad�m.}
  implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
Reg:=Tregistry.Create; {Registry bile�enini yarat�ld�.}
Reg.RootKey:=HKEY_LOCAL_MACHINE; {K�k Anahtar�m�z.}
Reg.OpenKey('\system\currentcontrolset\control',false);
{A�mak istedi�im alt anahtar� girdim.}
{E�er anahtar� bulamazsa, girilen anahtar� registry'de yaratmamas� i�in false
 parametresini ekledim.}
edit1.text:=reg.ReadString('current user');
{Okumas�n� istedi�im anahtar� yazd�m.}
reg.OpenKey('\system\currentcontrolset\control\computername\computername',false);
edit2.text:=reg.ReadString('ComputerName');
end;

end.
