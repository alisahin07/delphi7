VERSION 5.00
Begin VB.Form login 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�ifre Giri�i"
   ClientHeight    =   2760
   ClientLeft      =   3075
   ClientTop       =   240
   ClientWidth     =   4245
   FillColor       =   &H00C0C0C0&
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   162
      Weight          =   700
      Underline       =   0   'False
      Italic          =   -1  'True
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000001&
   HasDC           =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":0442
   ScaleHeight     =   2760
   ScaleWidth      =   4245
   Begin VB.CommandButton tam_am 
      Caption         =   "Tamam"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00FF8080&
      Caption         =   "�ifremi Hat�rla"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   255
      Left            =   1680
      MaskColor       =   &H00404040&
      OLEDropMode     =   1  'Manual
      TabIndex        =   5
      Top             =   1920
      Width           =   1815
   End
   Begin VB.CommandButton cikis 
      Cancel          =   -1  'True
      Caption         =   "�IKI�"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      MaskColor       =   &H80000014&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2280
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1680
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1560
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1680
      TabIndex        =   2
      Top             =   1080
      Width           =   2295
   End
   Begin VB.Label sifre 
      BackStyle       =   0  'Transparent
      Caption         =   "�ifre :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Kul_ad 
      BackStyle       =   0  'Transparent
      Caption         =   "Kullan�c� Ad� :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   870
      Left            =   0
      Picture         =   "Form1.frx":0D97
      Top             =   0
      Width           =   4545
   End
End
Attribute VB_Name = "login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'*********************************************************************************
'bu programdaki kodlar 05 .a�ustos 2005 tarihinde selman tunc taraf�ndan yaz�ld�
'PROGRAMM BY:SELMAN TUNC
'N�CK: STNC
'S�R�M TAR�H�: ?
'TAKIMI:NO-TR TEAM
'PROGRAM ADI:TEKN�K SERV�S TAK�P
'S�R�M :1.05
'AMACI:B�LG�SAYAR TAM�R� ��YLE VE SATI�IYLA �LG�LENLER�N B�LG�SAYAR SORUNLARI VE M��TER�LER�N� TAK�P ETMES� ���N YAZILDI
'F�YATI :�U AN �LK S�R�M OLDUGU ���N �CRETS�Z OLASI D���N�L�YOR
'SON OLARAK  :
'EK�P ARAKADA�LARI:
'SON B�R HATIRA DAHA CHECK1.VALUE KONTROLUNU NERO YA KEYGEN NASIL YAZARIM DERKEN �GREND�M
'******************************************************************************************

Private Sub Check1_Click()
Dim users As String
Dim keys As String
'Static hatali As Integer 'g�venligi kapatmak i�n a��labilir 'bu deger hatali de�erine g�nderme yapar
If Check1.Value = 1 Then 'YAN� KULLANICI eger check i i�aerledi ise -->
've �ifreler dogru ise yani �u anki kontroller
users = getstring(HKEY_CURRENT_USER, "software\Stnc Software\", "User")
keys = getstring(HKEY_CURRENT_USER, "software\Stnc Software\", "Key")
users = coz(users)  'bunlar fonksiyon olarak daha �nce bunlara sifre koymu�tuk
keys = coz(keys) 'coz fonksiyonu ile girilen �ifreler regeditden gercege uygun olrak ��z�mlenir
'bu kodlama genel olarak programa girmek isteyenlerin �ifreyi regeditden g�rememesi i�indir

If (Text1.Text = users And Text2.Text = keys) Then  'burada ise �ifreler text1deki �ifre ile
Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "Auto Start", Check1.Value) 'check1 olay�n�n regedite yazl�p okunmas�n� sa�lar
'text2 deki �ifre ayn� ise uyu�uyorsa a�ag�daki olaylar ba�lar
'Me.Hide
'ayarlar.Show
Else 'eger �ifreler uyu�muyorsa


'BU KISIM G�VENL��� KAPATMAK ���N A�ILAB�L�R
'hatali = hatali + 1 'girilen veri yi her yanl��da bir art�r�r
'tam_am.Caption = "Yanl�� " & hatali 'hatalar� form daki tamam tusunda yazar

'If hatali = 3 Then 'eger hata say�s� 3 olursa program a�ag�daki hata mesaj�n� verir ve kapan�r
'a = MsgBox("3 Defa Hatal� Giri� Yapt�n�z", vbDefaultButton1 + vbOKOnly + vbInformation)
'End If
'BU KISIM G�VENL��� KAPATMAK ���N A�ILAB�L�R



Text1.SetFocus   'imle� text1 e gider oraya odaklan�r
a = MsgBox("Kullan�c� Ad� Veya �ifre Yanl��", vbDefaultButton1 + vbOKOnly + vbInformation)
'�OK �NEML� form load olaynda burdaki k�s�mdan regeditden check in o olup olmayacag�n� kontrol edecek o ise burdaki text2 yi silecek
Text1.Text = Clear
Text2.Text = Clear
End If 'bu end if ler ka� tane if a�t� isek o kadar koyarak kapatmak i�indir
End If

End Sub

Private Sub cikis_Click()
'bu kodlar programlar� kapat�r
Dim Form As Form
For Each Form In Forms
   Unload Form
   Set Form = Nothing
Next Form
'bu kodlar programdaki kodlari kapat�r
End Sub
Private Sub Form_Load()
Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2 'her ��z�n�rl�kte formun tam ortada kalmas�n� sa�lar

'burdaki kodlar formun ilk a�l���ndaki yani programda
'�ifre olup olmamas�n� kontrol eder
Dim users As String
Dim keys As String
users = getstring(HKEY_CURRENT_USER, "Software\Stnc Software\", "User") 'regeditden user � okur
keys = getstring(HKEY_CURRENT_USER, "Software\Stnc Software\", "Key") 'regedit den �ifre yi okur
'MsgBox kul 'bu kod sadece deneme amacl� kullan�labilir
If (users = "" And keys = "") Then 'Eger porgram da yani user ve       '
'kullan�c� bo� ise
'ayarlar.Text1 = ""
'Text1 = coz(Text1)
'ayarlar.Text2 = ""
'UNUTMA BURAYI KES�NL�KLE A� PROJE B�T�M�NDE
'login.Hide  '�ifre ekran� kaybolur
home.Show  'ana men� a��l�r   'DE���EN 1

End If
    

'�OK �NEML� burdaki k�s�mdan regeditden check in o olup olmayacag�n� kontrol edecek o ise burdaki text2 yi silecek
Dim ShowAtStartup As Long
    
ShowAtStartup = getstring(HKEY_CURRENT_USER, "Software\Stnc Software\", "Auto Start") 'buras� program�n ba�lang�� da g�r�n�p g�r�nmeyecegini kontrol eder
If ShowAtStartup = 1 Then 'eger regedit den okunan deger 1 ise yani checkbox i�aretli ise (yani value degeri 1 ise)
        
home.Show  'yukardaki ifadeler dogru ise �ifre isteyen b�l�m gizlenir
'Unload login 'bu da kullan�labilir ama formu tamamen kapatabilir
login.Hide    'ana men�y� g�sterir  'DE���EN 2
'Unload login 'ayn� modelin bu �ekilde kullan�m daha mant�kl�d�r
Else 'yukarda �artlara uymuyorsa
ShowAtStartup = 0 'yani deger 0 ise
Check1.Value = 0 'check1 in degeri s�f�r olarak g�r�l�r
Exit Sub

' buras� regedt den okur yazar
Me.Check1.Value = vbChecked
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
'bu kodlar programlar� kapat�r
Dim Form As Form
For Each Form In Forms
   Unload Form
   Set Form = Nothing
Next Form
'bu kodlar programdaki formlar� kapat�r
End Sub

Private Sub tam_am_Click()
'kullan�c� tamam dedi�i zaman girilen �ifreler regedit den sorgulan�r
'sorgulama komutu "getstring" dir
Dim users As String
Dim keys As String
Static hatali As Integer 'bu deger hatali de�erine g�nderme yapar
'users = coz(users)  'bunlar fonksiyon olarak daha �nce bunlara sifre koymu�tuk
'keys = coz(keys) 'coz fonksiyonu ile girilen �ifreler regeditden gercege uygun olrak ��z�mlenir
users = getstring(HKEY_CURRENT_USER, "software\Stnc Software\", "User")
keys = getstring(HKEY_CURRENT_USER, "software\Stnc Software\", "Key")
users = coz(users)  'bunlar fonksiyon olarak daha �nce bunlara sifre koymu�tuk
keys = coz(keys) 'coz fonksiyonu ile girilen �ifreler regeditden gercege uygun olrak ��z�mlenir
'bu kodlama genel olarak programa girmek isteyenlerin �ifreyi regeditden g�rememesi i�indir
If (Text1.Text = users And Text2.Text = keys) Then  'burada ise �ifreler text1deki �ifre ile
'text2 deki �ifre ayn� ise uyu�uyorsa a�ag�daki olaylar ba�lar
'Form2.Text1 = kul 'bunlar genel olrak gereksizdir sadece form 2 ye ��z�len �ifrelerin
'Form2.Text2 = sif 'form 2 nin text1 inde g�z�kmesini sa�lar
users = coz(users)  'bunlar fonksiyon olarak daha �nce bunlara sifre koymu�tuk
keys = coz(keys) 'coz fonksiyonu ile girilen �ifreler regeditden gercege uygun olrak ��z�mlenir
login.Hide
home.Show

Else 'eger �ifreler uyu�muyorsa
Text1.Text = Clear 'text1 i temizler
Text2.Text = Clear 'text2 i temizler
Text1.SetFocus   'imle� text1 e gider oraya odaklan�r
hatali = hatali + 1 'girilen veri yi her yanl��da bir art�r�r
tam_am.Caption = "Hata " & hatali 'hatalar� form daki tamam tusunda yazar
If hatali = 3 Then 'eger hata say�s� 3 olursa program a�ag�daki hata mesaj�n� verir ve kapan�r
a = MsgBox("3 Defa Hatal� Giri� Yapt�n�z", vbDefaultButton1 + vbOKOnly + vbInformation)
'bu kodlar programlar� kapat�r
Dim Form As Form
For Each Form In Forms
Unload Form
Set Form = Nothing
Next Form
'bu kodlar programdaki formlar� kapat�r

End If
End If
End Sub
'bu �ifreleme fonksiyonu yani girilen �ifreleri g�venlik i�in �ifreler
Function Kodla(kelime As String)
For i = 1 To Len(kelime)
g = Mid(kelime, i, 1)
a = Asc(g)
b = a + 10
If b > 255 Then b = b - 255
Mid(kelime, i, 1) = Chr(b)
Next i
Kodla = kelime
End Function
'yukardaki �ifreleme fonksiyonunu ��zer
'yani veri okunurken ��z�l�r program bunu ancak b�yle anlar
Function coz(kelime As String)
For i = 1 To Len(kelime)
g = Mid(kelime, i, 1)
a = Asc(g)
b = a - 10
If b < 0 Then b = b + 255
Mid(kelime, i, 1) = Chr(b)
Next i
coz = kelime
End Function
