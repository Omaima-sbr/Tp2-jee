<%@ page import="java.util.*" %>
<%
    // Récupérer le nom du visiteur depuis l'URL
    String visitorName = request.getParameter("name");

    if (visitorName != null && !visitorName.isEmpty()) {
        // Récupérer la liste des visiteurs de l'application
        List<String> visitors = (List<String>) application.getAttribute("visitors");
        if (visitors == null) {
            visitors = new ArrayList<>();
        }
        // Ajouter le visiteur si pas déjà présent
        if (!visitors.contains(visitorName)) {
            visitors.add(visitorName);
        }
        application.setAttribute("visitors", visitors);
    }

    // Récupérer la liste pour affichage
    List<String> visitors = (List<String>) application.getAttribute("visitors");
%>

<html>
<head>
    <title>Visiteurs</title>
</head>
<body>
<h2>Liste des visiteurs :</h2>
<ul>
    <% if (visitors != null) {
        for (String name : visitors) { %>
    <li><%= name %></li>
    <%  }
    } %>
</ul>
</body>
</html>
