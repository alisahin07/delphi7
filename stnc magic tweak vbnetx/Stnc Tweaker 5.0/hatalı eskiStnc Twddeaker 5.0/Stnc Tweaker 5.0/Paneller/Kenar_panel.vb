Module Kenar_panel
    Sub basla_load()
        With Index
            .ayar_Panel.Size = New Size(83, 337)
            .ayar_Panel.Location = New System.Drawing.Point(26, 102)
        End With
    End Sub

    Sub ayarlar_label1_Click()
        With Index
            .ayar_Panel.Size = New Size(83, 337)
            .ayar_Panel.Location = New System.Drawing.Point(26, 102)
            .Tweak_label.Location = New System.Drawing.Point(25, 442) 'tweak paneli eski nonumuna asag�ya
            .sistem_label.Location = New System.Drawing.Point(25, 472) 'sistem paneli eski
            .ozel_araclar_label.Location = New System.Drawing.Point(24, 502) 'ozel araclar eski konumuna asag�ay
            'ayarlar hari� t�m panlleri gizle
            .sistem_bil_panel.Visible = False
            .ozel_araclar_Panel.Visible = False
            .tweak_Panel.Visible = False
            .ayar_Panel.Visible = True
        End With
    End Sub

    Sub Tweak_label_Click()
        With Index
            .tweak_Panel.Size = New Size(83, 336)
            If .Tweak_label.Location.Y = 442 Then
                .Tweak_label.Location = New System.Drawing.Point(24, 103) 'yukar�ya c�k kendini konumland�r label
                .tweak_Panel.Location = New System.Drawing.Size(25, 132) 'yukar� c�k panel kendini kordinata g�re konumland�r 
                .tweak_Panel.Visible = True
                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = False
                .ozel_araclar_Panel.Visible = False
            Else ' yukarda isen asag� in
                .sistem_label.Location = New System.Drawing.Point(25, 472)
                .ozel_araclar_label.Location = New System.Drawing.Point(24, 502)
                .tweak_Panel.Location = New System.Drawing.Size(25, 132) 'yukar� c�k panel kendini kordinata g�re konumland�r 

                .tweak_Panel.Visible = True
                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = False
                .ozel_araclar_Panel.Visible = False
            End If
        End With
    End Sub
    Sub sistem_label_Click()
        With Index
            .sistem_bil_panel.Size = New Size(83, 336)
            If .sistem_label.Location.Y = 472 Then
                .Tweak_label.Location = New System.Drawing.Point(24, 103) 'yukar�ya c�k kendini konumland�r label
                .sistem_label.Location = New System.Drawing.Point(24, 131) 'yukar� c�k panel kendini kordinata g�re konumland�r 
                .sistem_bil_panel.Location = New System.Drawing.Size(24, 159)
                .tweak_Panel.Visible = False

                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = True
                .ozel_araclar_Panel.Visible = False
            Else ' yukarda isen asag� in
                .ozel_araclar_label.Location = New System.Drawing.Point(24, 502)
                .tweak_Panel.Visible = False 'yukar� c�k panel kendini kordinata g�re konumland�r 

                .sistem_bil_panel.Location = New System.Drawing.Size(24, 159)

                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = True
                .ozel_araclar_Panel.Visible = False
            End If
        End With
    End Sub
    Sub ozel_araclar_label_Click()
        With Index
            .ozel_araclar_Panel.Size = New Size(83, 336)
            If .ozel_araclar_label.Location.Y = 502 Then
                .Tweak_label.Location = New System.Drawing.Point(24, 103)
                .sistem_label.Location = New System.Drawing.Point(24, 131)
                .ozel_araclar_label.Location = New System.Drawing.Point(23, 160)
                .ozel_araclar_Panel.Location = New System.Drawing.Size(25, 189)
                .tweak_Panel.Visible = False

                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = False
                .ozel_araclar_Panel.Visible = True
            Else ' yukarda isen asag� in 
                'zaten asa��da oldugu oldugu i�in bir i�lem yapt�rmaya gerek yok
                .tweak_Panel.Visible = False

                .ayar_Panel.Visible = False
                .sistem_bil_panel.Visible = False
                .ozel_araclar_Panel.Visible = True
            End If
        End With
    End Sub
End Module
