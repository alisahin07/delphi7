unit baslatUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg,registry;

type
  Tbaslat_form = class(TForm)
    Image1: TImage;
    bil_sim: TCheckBox;
    belgeler_menu: TCheckBox;
    no_ag: TCheckBox;
    gecmis: TCheckBox;
    denetim_mas: TCheckBox;
    sik_kull: TCheckBox;
    no_help: TCheckBox;
    CheckBox8: TCheckBox;
    bas_no_kul: TCheckBox;
    bel_oto_tem: TCheckBox;
    win_bas_bul: TCheckBox;
    no_kapat: TCheckBox;
    Image2: TImage;
    Image9: TImage;
    Image18: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Image4: TImage;
    Image5: TImage;
//    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure bil_simClick(Sender: TObject);
    procedure belgeler_menuClick(Sender: TObject);
    procedure no_agClick(Sender: TObject);
    procedure gecmisClick(Sender: TObject);
    procedure denetim_masClick(Sender: TObject);
    procedure sik_kullClick(Sender: TObject);
    procedure no_helpClick(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure bas_no_kulClick(Sender: TObject);
    procedure bel_oto_temClick(Sender: TObject);
    procedure win_bas_bulClick(Sender: TObject);
    procedure no_kapatClick(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label17Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    //procedure no_agClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  baslat_form: Tbaslat_form;

  MyBmp: TBitmap;
implementation

uses guvenlikUnit, guvenlik2, anamenu, internet_explorer_unit,
  internet_unit, sistem_bil_unit, tweak_ui_unit, gorunum_unit,
  bil_soft_unit, taskman_unit, donanim_unit, ag_unit, araclar, hakkinda;

  //uses Unit2;    // di�er unitleri ekler
{$R *.dfm}


procedure Tbaslat_form.FormCreate(Sender: TObject);
//var

//reg:tregistry;
begin
 MyBmp := TBitmap.Create;
 image1.Picture.Bitmap.LoadFromResourceName(HInstance,'SKK_1_RES');

{begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true); }

   //ba�lat men�s�
 //if reg.readInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}')=1   then
    // bil_sim.Checked:=true
     //else
      //bil_sim.Checked:=false ;
               // reg.Free;



 { begin
  reg:=TRegistry.Create;
     Result:=NULL;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);


  if reg.readInteger('NoSMMyDocs')=1  Result := True  then
     belgeler_menu.Checked:=true
     else
      belgeler_menu.Checked:=false ;
                reg.Free;

end;
end;
        // end; }



 end;

procedure Tbaslat_form.bil_simClick(Sender: TObject);
var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum',true);
  key0:= ('00');
  key1:= ('01');
   if bil_sim.Checked=true  then
  reg.WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}',key0)
     else
       reg.WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}',key1) ;
     reg.Free;
       //reg.Free;
end;

procedure Tbaslat_form.belgeler_menuClick(Sender: TObject);
var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if belgeler_menu.Checked=true  then
  reg.WriteInteger('NoSMMyDocs',key0)
     else
       reg.WriteInteger('NoSMMyDocs',key1) ;
     reg.Free;
       end;


procedure Tbaslat_form.no_agClick(Sender: TObject);
var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if no_ag.Checked=true  then
  reg.WriteInteger('NoNetworkConnections',key0)
     else
       reg.WriteInteger('NoNetworkConnections',key1) ;
     reg.Free;
       end;
procedure Tbaslat_form.gecmisClick(Sender: TObject);

var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if gecmis.Checked=true  then
  reg.WriteInteger('NoRecentDocsHistory',key0)
     else
       reg.WriteInteger('NoRecentDocsHistory',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.denetim_masClick(Sender: TObject);
var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if denetim_mas.Checked=true  then
  reg.WriteInteger('NoControlPanel',key0)
     else
       reg.WriteInteger('NoControlPanel',key1) ;
     reg.Free;
       end;


      procedure Tbaslat_form.sik_kullClick(Sender: TObject);
var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if sik_kull.Checked=true  then
  reg.WriteInteger('NoStartMenuMFUprogramsList',key0)
     else
       reg.WriteInteger('NoStartMenuMFUprogramsList',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.no_helpClick(Sender: TObject);
 var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if no_help.Checked=true  then
  reg.WriteInteger('NoSMHelp',key0)
     else
       reg.WriteInteger('NoSMHelp',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.CheckBox8Click(Sender: TObject);

  var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if CheckBox8.Checked=true  then
  reg.WriteInteger('NoChangeStartMenu',key0)
     else
       reg.WriteInteger('NoChangeStartMenu',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.bas_no_kulClick(Sender: TObject);
  var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if bas_no_kul.Checked=true  then
  reg.WriteInteger('NoCommonGroups',key0)
     else
       reg.WriteInteger('NoCommonGroups',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.bel_oto_temClick(Sender: TObject);
  var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if bel_oto_tem.Checked=true  then
  reg.WriteInteger('ClearRecentDocsOnExit',key0)
     else
       reg.WriteInteger('ClearRecentDocsOnExit',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.win_bas_bulClick(Sender: TObject);
  var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if win_bas_bul.Checked=true  then
  reg.WriteInteger('NoShellSearchButton',key0)
     else
       reg.WriteInteger('NoShellSearchButton',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.no_kapatClick(Sender: TObject);
  var
key0,key1: OleVariant;
reg:tregistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER ;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\Explorer',true);
  key0:= ('00');
  key1:= ('01');
   if no_kapat.Checked=true  then
  reg.WriteInteger('NoClose',key0)
     else
       reg.WriteInteger('NoClose',key1) ;
     reg.Free;
       end;

procedure Tbaslat_form.Image9Click(Sender: TObject);
begin
application.Minimize;
end;

procedure Tbaslat_form.Image18Click(Sender: TObject);
begin
application.Terminate ;
end;

procedure Tbaslat_form.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  releasecapture;
perform(wm_syscommand,$f012,0);
end;

procedure Tbaslat_form.Label17Click(Sender: TObject);
begin
baslat_form.Visible :=false;
ana_mnu.show;
end;

procedure Tbaslat_form.Label18Click(Sender: TObject);
begin
//baslat_form.Visible :=false;
//ana_mnu.show;
end;

procedure Tbaslat_form.Label19Click(Sender: TObject);
begin
baslat_form.Visible :=false;
guvenlik.show;
end;

procedure Tbaslat_form.Label20Click(Sender: TObject);
begin
 baslat_form.Visible:=false;
guvenlik_2.show;

end;

procedure Tbaslat_form.Label24Click(Sender: TObject);
begin
baslat_form.Visible:=false;
int_exp.show;

end;

procedure Tbaslat_form.Label23Click(Sender: TObject);
begin
baslat_form.Visible:=false;
internet_bil.show;

end;

procedure Tbaslat_form.Label21Click(Sender: TObject);
begin
baslat_form.Visible:=false;
sistem_bil.show;

end;

procedure Tbaslat_form.Label22Click(Sender: TObject);
begin
baslat_form.Visible:=false;
tweak_ui.show;

end;

procedure Tbaslat_form.Label25Click(Sender: TObject);
begin

baslat_form.Visible:=false;
gorunum.show;

end;

procedure Tbaslat_form.Label26Click(Sender: TObject);
begin
baslat_form.Visible:=false;
bil_soft.show;

end;

procedure Tbaslat_form.Label27Click(Sender: TObject);
begin
baslat_form.Visible:=false;
taskman_form.show;

end;

procedure Tbaslat_form.Label28Click(Sender: TObject);
begin
baslat_form.Visible:=false;
donanim.show;

end;

procedure Tbaslat_form.Label32Click(Sender: TObject);
begin
baslat_form.Visible:=false;
ag_net.show;

end;

procedure Tbaslat_form.Label31Click(Sender: TObject);
begin
baslat_form.Visible:=false;
araclar_form.show;

end;

procedure Tbaslat_form.Label29Click(Sender: TObject);
begin
//baslat_form.Visible:=false;
//ayarlar.show;

end;

procedure Tbaslat_form.Label30Click(Sender: TObject);
begin
baslat_form.Visible:=false;
hakkinda_form.show;
end;

procedure Tbaslat_form.Image4Click(Sender: TObject);
begin
baslat_form.Visible :=false;
ana_mnu.Show;
end;

procedure Tbaslat_form.Image5Click(Sender: TObject);
begin
application.Terminate ;
end;



end.









