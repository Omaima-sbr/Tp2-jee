<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice jsp:forward - Source</title>
</head>
<body>
<h2>Page Source (ForwardSource.jsp)</h2>
<%-- Tracé avant le forward --%>
<%
    // Affiche dans la console du serveur WildFly
    System.out.println("=== AVANT le jsp:forward ===");
%>
<p>Texte HTML AVANT le forward</p>

<jsp:forward page="ForwardTarget.jsp" />

<%-- Tracé après le forward --%>
<%
    System.out.println("=== APRES le jsp:forward ===");
%>
<p>Texte HTML APRES le forward</p>
</body>
</html>