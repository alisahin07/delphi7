Module internet_tweak
    ' Public Class internet

    Sub internet_Load()
        ie_surum_text_box_oku()
        giris_sayfa_oku()
        ie_text_oku()
        ie_baslik_TextBox_oku()
    End Sub
    '++++++++++ie s�r�m� oku 
    Sub ie_surum_text_box_oku()
        With Index
            .ie_surum_text_box.Text = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main", _
            "Wizard_Version", "")
        End With
    End Sub
    '++++++++++ie giri� sayfas� oku
    Sub giris_sayfa_oku()
        With Index
            .ie_giris_TextBox.Text = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", _
            "Start Page", "")
        End With
    End Sub
    'ie gir� sayfas�n� de�i�tir
    Sub ie_giris_Click()
        With Index
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", _
                  "Start Page", .ie_giris_TextBox.Text)
        End With
    End Sub
    '++++++ie arama sayfas�n� oku
    Sub ie_text_oku()
        With Index
            .ie_text.Text = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search", _
            "SearchAssistant", "")
        End With
    End Sub

    '++++++++++ie ba�l�k oku
    Sub ie_baslik_TextBox_oku()
        With Index
            .ie_baslik_TextBox.Text = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", _
            "Window title", "")
        End With
    End Sub
    'windows ie basl�k de�i�tir
    Sub kaydet_Click()
        With Index
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", _
                  "Window title", .ie_baslik_TextBox.Text)
        End With
    End Sub


    Sub Google_button_Click()
        With Index
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", _
                   "Window title", "www.google.com")
            .ie_text.Text = "www.google.com"
        End With
    End Sub

    Sub int_oze_button_Click()
        On Error Resume Next
        Dim process As Process = New Process
        Diagnostics.Process.Start(System.Environment.SystemDirectory + "\inetcpl.cpl")
        If Err.Number = 5 Then
            MsgBox(" Belirtilen Program Bulunamad�", MsgBoxStyle.OkOnly + MsgBoxStyle.DefaultButton1 + MsgBoxStyle.Information, "Hata")
        End If
    End Sub
    'End Class
End Module
