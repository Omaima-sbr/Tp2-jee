<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Détruire la session
    session.invalidate();
    // Retourner à la page de connexion
    response.sendRedirect("login.jsp");
%>