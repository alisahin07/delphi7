Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Static hatali As Integer 'bu deger hatali de�erine g�nderme yapar

        hatali = hatali + 1 'girilen veri yi her yanl��da bir art�r�r
        Button1.Text = "Hata " & hatali 'hatalar� form daki tamam tusunda yazar
        'If hatali = 3 Then 'eger hata say�s� 3 olursa program a�ag�daki hata mesaj�n� verir ve kapan�r
        'MsgBox("3 Defa Hatal� Giri� Yapt�n�z", vbDefaultButton1 + vbOKOnly + vbInformation, "hatq")
        'End If
        Select Case hatali
            Case 1
                MsgBox("bir")
            Case 2
                MsgBox("iki")
            Case 3
                MsgBox("3")

        End Select


    End Sub
End Class
