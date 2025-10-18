<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.InputStream" %>

<%
    // Récupérer les données du formulaire
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Charger le fichier authentication.properties
    Properties props = new Properties();
    InputStream input = application.getResourceAsStream("/WEB-INF/authentication.properties");
    props.load(input);
    input.close();

    // Vérifier si l'utilisateur existe et si le mot de passe est correct
    String validPassword = props.getProperty(username);

    if (validPassword != null && validPassword.equals(password)) {
        // Authentification réussie
        session.setAttribute("username", username);
        response.sendRedirect("succes.jsp");
    } else {
        // Échec d'authentification
        response.sendRedirect("erreur.jsp");
    }
%>
