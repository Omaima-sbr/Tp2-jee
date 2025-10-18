<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succès</title>
</head>
<body>
<h2>Authentification Réussie !</h2>
<p>Bienvenue, <strong><%= request.getAttribute("username") %></strong></p>
<br>
<a href="login.jsp">Retour à la page de connexion</a>
</body>
</html>