<!-- create a hello world page  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*" %>

<%
    String firstName = request.getParameter("firstName");
    if (firstName == null) {
        firstName = "";
    }
%>

<% if (firstName.equals("")) { %>
    <form action="main.jsp" method="post">
        <input type="text" name="firstName">
        <input type="submit" name="submit" value="submit">
    </form>


