Public Class tweak_tweak
    '/////////�conlar� Ger�ek Modunda G�ster yuaz

    Private Sub tweak_tweak_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        icon_oku() : bilinen_uzant�_oku() : yetersiz_alan()
        sakalna_oku() : ksayol_oku() : win_gun() : bil_acilis_oku() : resim_onbelle()
        msn_oku() : hata() : kritik_oku()
    End Sub
    Private Sub icon_gercek_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles icon_gercek.CheckedChanged
        If icon_gercek.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", _
            "Shell Icon BPP", "16")
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", _
            "Shell Icon BPP", "")
        End If
    End Sub
    '++++++++�conlar� Ger�ek Modunda G�ster oku
    Private Sub icon_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", _
            "Shell Icon BPP", "16")
        If oku = "16" Then
            icon_gercek.Checked = True
        Else
            icon_gercek.Checked = False
        End If
    End Sub

    '/////////   Bilinen Dosya Uzant�lar�n� G�ster  oku
    
    Private Sub bilinen_uzant�_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bilinen_uzant�.CheckedChanged
        If bilinen_uzant�.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "HideFileExt", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "HideFileExt", 0)
        End If
    End Sub
    '++++++++    Bilinen Dosya Uzant�lar�n� G�ster   yaz
    Private Sub bilinen_uzant�_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "HideFileExt", Nothing)
        If oku = 1 Then
            bilinen_uzant�.Checked = True
        Else
            bilinen_uzant�.Checked = False
        End If

    End Sub
    '/////////  Yetersiz Disk alan� Uyar�s�n� Kald�r   oku
    Private Sub yetersiz_disk_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles yetersiz_disk.CheckedChanged
        If yetersiz_disk.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", _
            "NoLowDiskSpaceChecks", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", _
   "NoLowDiskSpaceChecks", 0)
        End If

    End Sub

    '++++++++   Yetersiz Disk alan� Uyar�s�n� Kald�r    yaz
    Private Sub yetersiz_alan()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", _
            "NoLowDiskSpaceChecks", Nothing)
        If oku = 1 Then
            yetersiz_disk.Checked = True
        Else
            yetersiz_disk.Checked = False
        End If
    End Sub

    '/////////  Saklanan Dll'leri Haf�zadan Kald�r   oku
   
    Private Sub saklanan_dll_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles saklanan_dll.CheckedChanged
        If saklanan_dll.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL", _
            "", "1")
        Else
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL", _
            "", "0")

        End If
    End Sub
    '++++++++   Saklanan Dll'leri Haf�zadan Kald�r    yaz
    Private Sub sakalna_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL", _
            "", Nothing)
        If oku = "1" Then
            saklanan_dll.Checked = True
        Else
            saklanan_dll.Checked = False
        End If
    End Sub


    '/////////   K�sayollar i�in Bilgi Baloncu�u G�sterme  oku

    Private Sub k�sayol_bilgi_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles k�sayol_bilgi.CheckedChanged
        If k�sayol_bilgi.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "ShowInfoTip", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
          "ShowInfoTip", 0)
        End If
    End Sub
    '++++++++    K�sayollar i�in Bilgi Baloncu�u G�sterme   yaz
    Private Sub ksayol_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "ShowInfoTip", Nothing)
        If oku = 1 Then
            k�sayol_bilgi.Checked = True
        Else
            k�sayol_bilgi.Checked = False
        End If
    End Sub

    '/////////  Windows G�ncellemeyi Kay�t Olmadan Kullan   oku
   
    Private Sub windows_guncelle_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles windows_guncelle.CheckedChanged
        If windows_guncelle.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion", _
            "RegDone", "0")
        Else
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion", _
            "RegDone", "1")

        End If
    End Sub
    '++++++++    Windows G�ncellemeyi Kay�t Olmadan Kullan   yaz
    Private Sub win_gun()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion", _
                    "RegDone", Nothing)
        If oku = "0" Then
            windows_guncelle.Checked = True
        Else
            windows_guncelle.Checked = False
        End If
    End Sub


    '///////// Bilgisayar�n A��l���nda Num Lock Tu�u Aktif Olsun    oku
    
    Private Sub bil_acilis_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bil_acilis.CheckedChanged
        If bil_acilis.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Keyboard", _
            "InitialKeyboardIndicators", "1")
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Keyboard", _
"InitialKeyboardIndicators", "0")

        End If
    End Sub
    '++++++++    Bilgisayar�n A��l���nda Num Lock Tu�u Aktif Olsun   yaz
    Private Sub bil_acilis_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Control Panel\Keyboard", _
"InitialKeyboardIndicators", Nothing)
        If oku = "1" Then
            bil_acilis.Checked = True
        Else
            bil_acilis.Checked = False
        End If
    End Sub

    '/////////   Resimleri �nbelle�e Alma  oku
   
    Private Sub resim_onbellek_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles resim_onbellek.CheckedChanged
        If resim_onbellek.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "DisableThumbnailCache", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "DisableThumbnailCache", 0)
        End If
    End Sub
    '++++++++    Resimleri �nbelle�e Alma   yaz
    Private Sub resim_onbelle()
        Dim res As Object
        res = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", _
            "DisableThumbnailCache", Nothing)
        If res = 1 Then
            resim_onbellek.Checked = True
        Else
            resim_onbellek.Checked = False
        End If
    End Sub
    '/////////  Msn Ve Outlook Ba�lamas�n   oku
  
    Private Sub msn_ouutlok_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles msn_ouutlok.CheckedChanged
        If msn_ouutlok.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Outlook Express", _
            "Hide Messenger", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Outlook Express", _
 "Hide Messenger", 0)
        End If
    End Sub
    '++++++++    Msn Ve Outlook Ba�lamas�n   yaz
    Private Sub msn_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Outlook Express", _
            "Hide Messenger", Nothing)
        If oku = 1 Then
            msn_ouutlok.Checked = True
        Else
            msn_ouutlok.Checked = False
        End If
    End Sub


    '/////////   Hata Raporlar�n� Devre D��� B�rak  oku
  
    Private Sub hata_rapor_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles hata_rapor.CheckedChanged
        If hata_rapor.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
            "DoReport", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
          "DoReport", 0)
        End If
    End Sub
    '++++++++     Hata Raporlar�n� Devre D��� B�rak  yaz
    Private Sub hata()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
            "DoReport", Nothing)
        If oku = 1 Then
            hata_rapor.Checked = True
        Else
            hata_rapor.Checked = False
        End If
    End Sub
    '/////////   Kritik Hatalar ��in Hata Raporu G�nderme  oku
   
    Private Sub kritik_hata_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles kritik_hata.CheckedChanged
        If kritik_hata.Checked = True Then
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
                     "ShowUI", 1)
        Else
            My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
                   "ShowUI", 0)
        End If
    End Sub
    '++++++++     Kritik Hatalar ��in Hata Raporu G�nderme  yaz
    Private Sub kritik_oku()
        Dim oku As Object
        oku = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting", _
                     "ShowUI", Nothing)
        If oku = 1 Then
            kritik_hata.Checked = True
        Else
            kritik_hata.Checked = False
        End If
    End Sub

End Class