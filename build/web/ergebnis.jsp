<%-- 
    Document   : ergebnis
    Created on : 15.12.2025, 20:54:36
    Author     : etwas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flaggen Quiz</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="icon" href="assets/LOGO/logo_white.ico" type="image/x-icon">
    </head>
    <body>
        <%
            
            
            String Flagge = request.getParameter("FLAGGE");
            String flugen = (String) session.getAttribute("flugen");
            String Ergebnis = "";
            if (Flagge.equals(flugen)) {
            Ergebnis = "Richtig";
            } else {
            
            Ergebnis = "Falsch";
            }
        %>

        <div>
            <h1><%= Ergebnis%></h1>
            <a href="Quiz.jsp"><button>Zurück</button></a>
        </div>
    </body>
</html>
