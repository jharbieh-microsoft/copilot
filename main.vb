'create a windows form with a button and a textbox
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim str As String = TextBox1.Text
        Dim str2 As String = ""
        Dim i As Integer
        For i = 0 To str.Length - 1
            str2 = str2 & str(i) & " "
        Next
        MsgBox(str2)
    End Sub

