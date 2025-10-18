<%@ page import="com.example.exo1.VisitorBean" %>

<!-- On crée ou récupère le bean "visitorBean" dans le scope application -->
<jsp:useBean id="visitorBean" class="com.example.exo1.VisitorBean" scope="application" />

<%
    // Récupération du nom du visiteur depuis l'URL
    String visitorName = request.getParameter("name");

    // Ajout du visiteur via le bean
    if (visitorName != null && !visitorName.isEmpty()) {
        visitorBean.addVisitor(visitorName);
    }
%>

<html>
<head>
    <title>Liste des visiteurs</title>
</head>
<body>
<h2>Liste des visiteurs :</h2>
<ul>
    <%-- Affichage de tous les visiteurs via le bean --%>
    <%
        for (String name : visitorBean.getVisitors()) {
    %>
    <li><%= name %></li>
    <% } %>
</ul>
</body>
</html>
