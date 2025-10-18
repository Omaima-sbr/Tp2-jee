<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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

<!DOCTYPE html>
<html>
<head>
    <title>Liste des Visiteurs</title>
</head>
<body>
<h2>Liste des visiteurs :</h2>
<ul>
    <%-- Affichage de tous les visiteurs via EL et JSTL --%>
    <c:forEach var="visitor" items="${visitorBean.visitors}">
        <li>${visitor}</li>
    </c:forEach>
</ul>

<hr>

<form action="visiteurs-el.jsp" method="get">
    <label for="name">Nom du visiteur :</label>
    <input type="text" id="name" name="name" required>
    <button type="submit">Ajouter</button>
</form>
</body>
</html>