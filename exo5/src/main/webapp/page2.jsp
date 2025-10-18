<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Page 1</title>
</head>
<body>
<%@ include file="/header.jspf" %>

<h2>Contenu de Page 1</h2>
<p>Ceci est le contenu specifique à la page 1.</p>
<a href="page1.jsp">Rafraichir Page 1</a> | <a href="page2.jsp">Aller à Page 2</a>

<%@ include file="/footer.jspf" %>
</body>
</html>