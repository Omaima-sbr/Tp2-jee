<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Connexion</title>
</head>
<body>
<h2>Page de Connexion</h2>

<!-- Formulaire d'authentification -->
<form action="authenticate.jsp" method="post">
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
