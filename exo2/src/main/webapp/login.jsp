<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
</head>
<body>
<h2>Page de Connexion</h2>

<form action="login" method="post">
    <table>
        <tr>
            <td>Nom d'utilisateur :</td>
            <td><input type="text" name="username" required></td>
        </tr>
        <tr>
            <td>Mot de passe :</td>
            <td><input type="password" name="password" required></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Se connecter">
            </td>
        </tr>
    </table>
</form>
</body>
</html>