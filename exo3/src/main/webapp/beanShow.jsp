<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Affichage du Bean Agence</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            border-bottom: 2px solid #2196F3;
            padding-bottom: 10px;
        }
        .info {
            background-color: #e3f2fd;
            padding: 15px;
            border-left: 4px solid #2196F3;
            margin: 20px 0;
        }
        .info p {
            margin: 5px 0;
        }
        .error {
            background-color: #ffebee;
            padding: 15px;
            border-left: 4px solid #f44336;
            margin: 20px 0;
            color: #c62828;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Récupération du Bean depuis la Session</h1>

    <!-- Tentative de récupération du bean dans la session -->
    <jsp:useBean id="agence" class="com.example.exo3.Agence" scope="session"/>

    <%
        // Vérifier si le bean contient des données
        if (agence.getNom() != null && !agence.getNom().isEmpty()) {
    %>
    <p>✅ Bean récupéré avec succès depuis la session !</p>

    <!-- Affichage des attributs du bean -->
    <div class="info">
        <h2>Informations de l'agence :</h2>
        <p><strong>Nom :</strong> <jsp:getProperty name="agence" property="nom"/></p>
        <p><strong>Ville :</strong> <jsp:getProperty name="agence" property="ville"/></p>
        <p><strong>Code Postal :</strong> <jsp:getProperty name="agence" property="codePostal"/></p>
    </div>
    <%
    } else {
    %>
    <div class="error">
        <p>⚠️ Le bean existe mais n'a pas été initialisé.</p>
        <p>Veuillez d'abord visiter la page d'initialisation.</p>
    </div>
    <%
        }
    %>
    <a href="beanInit.jsp">← Retour à l'initialisation</a>
</div>
</body>
</html>