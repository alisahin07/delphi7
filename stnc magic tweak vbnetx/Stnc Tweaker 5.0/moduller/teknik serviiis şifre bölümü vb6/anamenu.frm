VERSION 5.00
Begin VB.Form home 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "   .:: Teknik Servis Takip  ::."
   ClientHeight    =   8955
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8550
   Icon            =   "anamenu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   8955
   ScaleWidth      =   8550
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "goster"
      Height          =   375
      Left            =   2400
      TabIndex        =   0
      Top             =   1320
      Width           =   1935
   End
End
Attribute VB_Name = "home"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
home.Hide
ayarlar.Show
End Sub

Private Sub Form_Load()
Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2 'her ��z�n�rl�kte formun tam ortada kalmas�n� sa�lar
'her ��z�n�rl�kte formun tam ortada kalmas�n� sa�lar
 
 'DE���EN KISIM 3
 
 Dim ShowAtStartup As Long
    
    ShowAtStartup = getstring(HKEY_CURRENT_USER, "Software\Stnc Software\", "Auto Start")
    If ShowAtStartup = 0 Then
        login.Hide
        'Unload login
   'login.Show
     'Exit Sub
    End If
    
    
    
        
    ' Set the checkbox, this will force the value to be written back out to the registry
    'Me.Check1.Value = vbChecked
    'de�i�en k�s�m 3
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
