Module donanim
    'Public Class donanim

    Sub donanim_Load()
        speaker_oku() : ana_sis_oku() : cd_yaz_oku()
        genis_oku() : buyuk_hdh_oku() : intel_oku()
        ieee_oku() : anakart_oku()
    End Sub



    '//////// Speaker Ses ��karmas�n deger yaz
    Sub speaker_ses_CheckedChanged()
        With Index
            If .speaker_ses.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Sound", "Beep", "yes")
            Else
                My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Control Panel\Sound", "Beep", "no")
            End If
        End With
    End Sub
    '++++++++ Speaker Ses ��karmas�n deger oku
    Sub speaker_oku()
        With Index
            Dim ses As Object
            ses = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Control Panel\Sound", "Beep", Nothing)
            If ses = "yes" Then
                .speaker_ses.Checked = True
            Else
                .speaker_ses.Checked = False
            End If
        End With
    End Sub

    '/////Ana Sistem Performans�n� Geli�tir deger yaz
    Sub ana_sis_check_CheckedChanged()
        With Index
            If .ana_sis_check.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "DisablePagingExecutive", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "DisablePagingExecutive", 0)
            End If
        End With
    End Sub
    '+++++++Ana Sistem Performans�n� Geli�tir deger oku
    Sub ana_sis_oku()
        With Index
            Dim ana As Object
            ana = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "DisablePagingExecutive", Nothing)
            If ana = 1 Then
                .ana_sis_check.Checked = True
            Else
                .ana_sis_check.Checked = False
            End If
        End With
    End Sub



    '//////////// Cd'ye Yazma �zelli�ini Devre D��� B�rak     deger yaz
    Sub cd_ye_yazma_CheckedChanged()
        With Index
            If .cd_ye_yazma.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoCDBurning", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoCDBurning", 0)
            End If
        End With
    End Sub

    '+++++++++ Cd'ye Yazma �zelli�ini Devre D��� B�rak     deger oku
    Sub cd_yaz_oku()
        With Index
            Dim cd As Object
            cd = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoCDBurning", Nothing)
            If cd = 1 Then
                .cd_ye_yazma.Checked = True
            Else
                .cd_ye_yazma.Checked = False
            End If
        End With
    End Sub



    '///////////////Geni� �kinci Seviye �nbelle�ini Optimize Et deger yaz
    Sub genis_ikinci_seviye_CheckedChanged()
        With Index
            If .genis_ikinci_seviye.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "SecondLevelDataCache", 512)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "SecondLevelDataCache", 0)

            End If
        End With
    End Sub
    '++++++++Geni� �kinci Seviye �nbelle�ini Optimize Et deger oku
    Sub genis_oku()
        With Index
            Dim gen As Object
            gen = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management", "SecondLevelDataCache", Nothing)
            If gen = 512 Then
                .genis_ikinci_seviye.Checked = True
            Else
                .genis_ikinci_seviye.Checked = False
            End If
        End With
    End Sub


    '////////// B�y�k Harddiskler ��in 48 Bit Lba Deste�ini A� deger yaz
    Sub buyuk_hdd_CheckedChanged()
        With Index
            If .buyuk_hdd.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\atapi\Parameters", "EnableBigLba", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\atapi\Parameters", "EnableBigLba", 0)
            End If
        End With
    End Sub
    '+++++++++++++ B�y�k Harddiskler ��in 48 Bit Lba Deste�ini A� deger oku
    Sub buyuk_hdh_oku()
        With Index
            Dim hdd As Object
            hdd = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\atapi\Parameters", "EnableBigLba", Nothing)
            If hdd = 1 Then
                .buyuk_hdd.Checked = True
            Else
                .buyuk_hdd.Checked = False
            End If
        End With
    End Sub

    '/////////////  �ntel Chipsetlerde Udma66 Modunu Etkinle�tir deger yaz
    Sub intel_chipset_CheckedChanged()
        With Index
            If .intel_chipset.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0000", "EnableUDMA66", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0000", "EnableUDMA66", 0)

            End If
        End With
    End Sub
    '+++++++++++++  �ntel Chipsetlerde Udma66 Modunu Etkinle�tir deger oku
    Sub intel_oku()
        With Index
            Dim intel As Object
            intel = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0000", "EnableUDMA66", Nothing)
            If intel = 1 Then
                .intel_chipset.Checked = True
            Else
                .intel_chipset.Checked = False
            End If
        End With
    End Sub

    '//////////////////////AnaKartaki B�t�nle�ik A� Kart�n� Devre D��� B�rak deger yaz
    Sub anakart_butun_CheckedChanged()
        With Index
            If .anakart_butun.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters", "DisableTaskOffload", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters", "DisableTaskOffload", 0)

            End If
        End With
    End Sub
    '+++++++++++++AnaKartaki B�t�nle�ik A� Kart�n� Devre D��� B�rak deger oku
    Sub anakart_oku()
        With Index
            Dim ana As Object
            ana = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters", "DisableTaskOffload", Nothing)
            If ana = 1 Then
                .anakart_butun.Checked = True
            Else
                .anakart_butun.Checked = False
            End If
        End With
    End Sub

    '/////////////////// �eee 1394 Ayg�t�n� Dinamik S�r�c�s�ne Ters �evir  deger yaz
    Sub ieee_1394_ayg�t�_Checked()
        With Index
            If .ieee_1394_ayg�t�.Checked = True Then
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmadmin\Parameters", "EnableDynamicConversionFor1394", 1)
            Else
                My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmadmin\Parameters", "EnableDynamicConversionFor1394", 0)
            End If
        End With
    End Sub
    '++++++ �eee 1394 Ayg�t�n� Dinamik S�r�c�s�ne Ters �evir  deger oku
    Sub ieee_oku()
        With Index
            Dim ie As Object
            ie = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmadmin\Parameters", "EnableDynamicConversionFor1394", Nothing)
            If ie = 1 Then
                .ieee_1394_ayg�t�.Checked = True
            Else
                .ieee_1394_ayg�t�.Checked = False
            End If
        End With
    End Sub


    'End Class
End Module
