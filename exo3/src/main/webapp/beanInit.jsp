<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Initialisation du Bean Agence</title>
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
      border-bottom: 2px solid #4CAF50;
      padding-bottom: 10px;
    }
    .info {
      background-color: #e8f5e9;
      padding: 15px;
      border-left: 4px solid #4CAF50;
      margin: 20px 0;
    }
    .info p {
      margin: 5px 0;
    }
    a {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #2196F3;
      color: white;
      text-decoration: none;
      border-radius: 4px;
    }
    a:hover {
      background-color: #0b7dda;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Initialisation du Bean Agence</h1>

  <!-- Création et stockage du bean dans la session -->
  <jsp:useBean id="agence" class="com.example.exo3.Agence" scope="session"/>

  <!-- Initialisation des attributs -->
  <jsp:setProperty name="agence" property="nom" value="Agence Immobilière Centrale"/>
  <jsp:setProperty name="agence" property="ville" value="Fès"/>
  <jsp:setProperty name="agence" property="codePostal" value="30000"/>

  <p>✅ Le bean a été créé et initialisé avec succès dans la session !</p>

  <!-- Affichage des attributs -->
  <div class="info">
    <h2>Informations de l'agence :</h2>
    <p><strong>Nom :</strong> <jsp:getProperty name="agence" property="nom"/></p>
    <p><strong>Ville :</strong> <jsp:getProperty name="agence" property="ville"/></p>
    <p><strong>Code Postal :</strong> <jsp:getProperty name="agence" property="codePostal"/></p>
  </div>

  <a href="beanShow.jsp">Voir le bean dans une autre page →</a>
</div>
</body>
</html>