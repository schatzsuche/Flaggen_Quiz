<%-- 
    Document   : Quiz
    Created on : 15.12.2025, 20:49:20
    Author     : etwas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flaggen Quiz</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="icon" href="assets/LOGO/logo_red.ico" type="image/x-icon">
    </head>
    <body>
        
        <%
            Random rand = new Random();
            int n = rand.nextInt(47);
            
            String[] flaggen = {"Albanien","Andorra","Belgien","Bosnien und Herzegowina","Bulgarien","Dänemark","Deutschland","Estland","Finnland","Frankreich","Griechenland","Irland","Island","Italien","Kosovo","Kroatien","Lettland","Liechtenstein","Litauen","Luxemburg","Malta","Moldau","Monaco","Montenegro","Niederlande","Nordmazedonien","Norwegen","Österreich","Polen","Portugal","Rumänien","Russland","San Marino","Schweden","Schweiz","Serbien","Slowakei","Slowenien","Spanien","Tschechien","Türkei","Ukraine","Ungarn","Vatikanstadt","Vereinigtes Königreich","Belarus","Zypern"};
            //String[] flaggen = {"Litauen", "Deutschland", "Lettland", "Estland"};
            
            String flugen = flaggen[n];
            session.setAttribute("flugen", flugen);
        %>
        
        <div>
            <h1>Welches Land</h1>
            <img src="assets/flaggen/<%= flugen %>.png" style="width: 400px">
            <br>
            <form action="ergebnis.jsp" method="get">
            <input type="text" name="FLAGGE" autocomplete="off" required >
            <input type="submit" value="submit">
            </form>
            <br><br>
            <a href="index.html"><button>Zurück</button></a>
        </div>
    </body>
</html>
