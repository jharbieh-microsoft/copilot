'create a windows form with a button and a textbox
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
    Dim str As String = TextBox1.Text
    Dim str2 As String = ""
    Dim i As Integer

    'split the string into an array of words
    str = str.Split(" ")

    'loop through the array and add each word to a new string

    For i = 0 To str.Length - 1
        str2 = str2 & str(i) & " "
    Next
    MsgBox(str2)
End Sub

'create a function that produces a string of text that says "hello world"
Private Function HelloWorld() As String
    Return "Hello World"
End Function

'create a function that takes a string as a parameter and returns the string in reverse order
Private Function ReverseString(ByVal str As String) As String
    Dim reversed As String = ""
    For i As Integer = str.Length - 1 To 0 Step -1
        reversed = reversed & str(i)
    Next
    Return reversed
End Function

'create a button handler for a button named btn_myButton
Private Sub btn_myButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_myButton.Click
    MsgBox("Button Clicked")
End Sub

