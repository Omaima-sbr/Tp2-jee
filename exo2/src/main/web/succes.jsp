<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Vérifier si l'utilisateur est connecté
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Succès</title>
</head>
<body>
<h2>Authentification Réussie !</h2>

<p>Bienvenue <strong><%= username %></strong></p>
<p>Vous êtes maintenant connecté.</p>

<a href="logout.jsp">Se déconnecter</a>
</body>
</html>