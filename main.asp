<!-- create an asp html form that submits to the same page with one input field named first name and one submit button called submit -->
<!-- create a variable called first name and set it equal to the value of the first name input field -->

<% Dim firstName %>
<% firstName = Request.Form("firstName") %>

<% If firstName = "" Then %>
    <form action="main.asp" method="post">
        <input type="text" name="firstName">
        <input type="submit" name="submit" value="submit">
    </form>
<% Else %>

    <!-- if the first name variable is not empty then display the first name variable -->
    <h1> Hello <%= firstName %> </h1>

<% End If %>

