VERSION 5.00
Begin VB.Form ayarlar 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ayarlar"
   ClientHeight    =   2520
   ClientLeft      =   5160
   ClientTop       =   5535
   ClientWidth     =   6285
   Icon            =   "ayarlar.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   NegotiateMenus  =   0   'False
   Picture         =   "ayarlar.frx":08CA
   ScaleHeight     =   2520
   ScaleWidth      =   6285
   ShowInTaskbar   =   0   'False
   Begin VB.CheckBox Check1 
      Caption         =   "��FRE SORGULAMA KAPALI"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3840
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   1440
      Width           =   2295
   End
   Begin VB.CommandButton kaydet_save 
      Caption         =   "Kaydet"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5040
      TabIndex        =   8
      Top             =   960
      Width           =   1095
   End
   Begin VB.CommandButton cikis 
      Cancel          =   -1  'True
      Caption         =   "Kapat"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton yeni 
      Caption         =   "Yeni �ifre"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3840
      TabIndex        =   6
      Top             =   960
      Width           =   1095
   End
   Begin VB.TextBox Text4 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox Text3 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   1560
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1800
      TabIndex        =   3
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   870
      Left            =   0
      Picture         =   "ayarlar.frx":152F
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6285
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Yeni �ifre Tekrar :"
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
      TabIndex        =   2
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Yeni �ifre :"
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
      Width           =   1695
   End
   Begin VB.Label kul_label 
      BackStyle       =   0  'Transparent
      Caption         =   "Kullan�c� Ad�:"
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
      Width           =   1695
   End
End
Attribute VB_Name = "ayarlar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
'buras� check 1 i�aretlenice regedit e i�aretler
Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "Auto Start", Check1.Value)
'buras� da check in i�aterli olup olmamas�na g�re i�lem yapar
If Check1.Value = 0 Then
Check1.Caption = "��FRE SORGULAMA A�IK"
Else
Check1.Value = 1
Check1.Caption = "��FRE SORGULAMA KAPALI"
End If
End Sub

Private Sub exit_Click()
'bu kodlar programlar� kapat�r
Dim Form As Form
For Each Form In Forms
   Unload Form
   Set Form = Nothing
Next Form
'bu kodlar programdaki kodlari kapat�r
End Sub

Private Sub cikis_Click()
home.Show
Me.Hide
End Sub

Private Sub Form_Load()
Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2 'her ��z�n�rl�kte formun tam ortada kalmas�n� sa�lar
'her ��z�n�rl�kte formun tam ortada kalmas�n� sa�lar
'bu k�s�mda asl�nda yapay zeka kulln�m� s�z konusu yani form y�klendi�i zaman
'text ler renk lerile kapal� ve i�lemexz g�r�n�r
Text1.Enabled = False
Text3.Enabled = False
Text4.Enabled = False
Text1.BackColor = &H80000000
Text3.BackColor = &H80000000
Text4.BackColor = &H80000000
kaydet_save.Enabled = False
Check1.ToolTipText = "Ba�lang��ta �ifre Sorgusunun Aktif Olmas� ��in Kullan�l�r "

'Text1 = coz(Text1)
'Text2 = coz(Text2)
'Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "User", Text1.Text)
'Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "Key", Text3.Text)
 
 Dim ShowAtStartup As Long
    
    ShowAtStartup = getstring(HKEY_CURRENT_USER, "Software\Stnc Software\", "Auto Start")
    If ShowAtStartup = 0 Then
        login.Hide
        'Unload login  'de�i�en 4
     'ayarlar.Show 'de�i�en 5
     'Exit Sub
    End If
    
    
    
        
    ' Set the checkbox, this will force the value to be written back out to the registry
    Me.Check1.Value = vbChecked
End Sub

Private Sub Form_Unload(Cancel As Integer)
'BU KODLARI DAHA SONRA S�L
'bu kodlar programlar� kapat�r
Dim Form As Form
For Each Form In Forms
   Unload Form
   Set Form = Nothing
Next Form
'bu kodlar programdaki kodlari kapat�r

End Sub

Private Sub kaydet_save_Click()
'TEXT ' E G�R�LEN SAYIYI KONTROL EDER
'bu k�s�mdaki kontrol text kutusuna
'ka� karakter grildi�iini kontrol eder
'bu kontrolu yapmam�z� saglayan LEN fonksiyonudur
'LEN fonksiyonu Girilen karakterin ka� karakter oldugunu bildirir
'BEN BURADA 20 E KADAR KOYDUM EGER G�R�LEN KARAKTER 20 DEN
'B�Y�KSE KULLNICI YI UYARIR
'BUNUN B�YEL OLMASININ NEDEN� ��FRE G�R���NDEK� FORM LOAD OLAYINDA
'KONTROL VAR ORDA BO�LUK ALGILAMAMASI
'ASLI SEBEB G�VENL�Kdir

'text1 e girilmeyen veya 20 den b�y�k karakter kontrol�

'TEXT ' E G�R�LEN SAYIYI KONTROL EDER B�T��
texta1 = Text1.Text
If Len(texta1) >= 20 Then
a1 = MsgBox("Kullan�c� Ad� K�sm�na " & Chr(10) & "Girmi� Oldu�unuz Karakter Say�s� " & Len(texta1) & Chr(10) & "L�tfen 20 Karakterden K���k Bir Say� Giriniz", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
Text1.Text = Clear
Text1.SetFocus
End If

'text2 e girilmeyen veya 20 den b�y�k karakter kontrol�
'Dim textb
'Dim textb1
'textb = Text2.Text
'If Len(textb) <= 0 Then
'b = MsgBox("L�tfen Eski �ifreyi Bo� B�rakmay�n�z", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
'Text2.SetFocus
'End If
'TEXT ' E G�R�LEN SAYIYI KONTROL EDER B�T��
'textb1 = Text2.Text
'If Len(textb1) >= 20 Then
'b1 = MsgBox("Hata Eski �ifre K�sm�na " & Chr(10) & "Girmi� Oldu�unuz Karakter Say�s� " & Len(textb1) & Chr(10) & "L�tfen 20 Karakterden K���k Bir Say� Giriniz", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
'Text2.Text = Clear
'Text2.SetFocus
'End If

'text3 e girilmeyen veya 20 den b�y�k karakter kontrol�

'bu k�s�m� kullan�c�n�n 4 den fazla rakam girmesini �nlemek i�in kullnamy� d���nd�m
'Dim textcc
'Dim textcc1
'textcc = Text3.Text
'If Len(textcc) <= 5 Then
'cc = MsgBox("g�venliginiz i�in en az 4 say� giriniz", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
'Text3.SetFocus
'End If

'TEXT ' E G�R�LEN SAYIYI KONTROL EDER B�T��
textc1 = Text3.Text
If Len(textc1) >= 21 Then
c1 = MsgBox("Hata Yeni �ifre K�sm�na " & Chr(10) & "Girmi� Oldu�unuz Karakter Say�s� " & Len(textc1) & Chr(10) & "L�tfen 20 Karakterden K���k Bir Say� Giriniz", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
Text3.Text = Clear
Text3.SetFocus

End If

'text4 e girilmeyen veya 20 den b�y�k karakter kontrol�

'TEXT ' E G�R�LEN SAYIYI KONTROL EDER B�T��
textd1 = Text4.Text
If Len(textd1) >= 21 Then
d1 = MsgBox("Hata Eski �ifre Tekrar K�sm�na " & Chr(10) & "Girmi� Oldu�unuz Karakter Say�s� " & Len(textd1) & Chr(10) & "L�tfen 20 Karakterden K���k Bir Say� Giriniz", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
Text4.Text = Clear
Text4.SetFocus
End If

Dim users As String
Dim keys As String
Text1 = Kodla(Text1)
Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "User", Text1.Text)

Dim textt As String                   'buraya text � kontrol etmek i�in regedit den de�er girilcek
Text3 = Kodla(Text3)
Text4 = Kodla(Text4)
If Text3.Text = Text4.Text Then
'c = MsgBox("ba�ar�l�", vbDefaultButton1 + vbInformation + vbOKOnly, "ok")
'Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "Kullanici", Text1.Text) 'buras� gereksiz hatta program�n yanl�� yapmas�na neden olur
Call savestring(HKEY_CURRENT_USER, "software\Stnc Software\", "Key", Text3.Text)
Text3 = Kodla(Text3)
Text4 = Kodla(Text4)
Text1 = coz(Text1) 'asl�nda bu �ok �nemli bir ayr�nt� bunu b�yle yapt�m ��nk� program �al��t�g� zaman bu
'olmasa idi program yaza�lan kullan�c� ad�n� �ifreli g�sterecekti
stnc = MsgBox("L�tfen Ba�lang��ta �ifre Sorulmas� ��in" & Chr(10) & "�ifre Sorgula'n�n A��k Olmas�na Dikkat Ediniz", vbDefaultButton1 + vbInformation + vbOKOnly, "��lem Tamamland�")
Else
a = MsgBox("Yeni �ifre Ve Yeni �ifre Tekrar� Uyu�mamaktad�r", vbDefaultButton1 + vbOKOnly + vbCritical, "Hata")
Text3.SetFocus
Text3.Text = Clear
Text4.Text = Clear

End If
End Sub



Private Sub Text1_Click()
Text1.BackColor = &HFFFFC0
End Sub

Private Sub Text3_Click()
Text3.BackColor = &HC0E0FF
End Sub

Private Sub Text4_Click()
Text4.BackColor = &HC0E0FF
End Sub

Private Sub yeni_Click()
'yeni tu�una bas�l�nca formun load olay�nda olaylar iptal edilir
Text1.Enabled = True
Text3.Enabled = True
Text4.Enabled = True
Text1.BackColor = &H80000005
Text3.BackColor = &H80000005
Text4.BackColor = &H80000005
kaydet_save.Enabled = True
Text1.SetFocus

'yeni tu�una bas�l�nca formun load olay�nda olaylar iptal edilir


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

