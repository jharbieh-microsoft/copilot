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

<!-- NOTE: The following is an exercise. We need to find out how to write code with erlang and did not know how to write a comment first. So we used an ASP file commenting style to figure it out -->

<!-- write a hello world sample program in erlang programming language -->
<!-- create a file called hello.erl -->
<!-- compile the file using the erlc command -->
<!-- run the file using the erl command -->

-module(hello).
-export([hello_world/0]).
hello_world() ->
    io:fwrite("Hello World\n").


<!-- write a hello world sample program in elixir programming language -->
<!-- create a file called hello.exs -->

IO.puts "Hello World"

<!-- run the file using the elixir command -->
 
<!-- how to write a comment in erlang -->


