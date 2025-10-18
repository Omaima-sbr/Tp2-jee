package com.example.exo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private Properties props = new Properties();

    @Override
    public void init() throws ServletException {
        try {
            InputStream input = getClass().getClassLoader()
                    .getResourceAsStream("authentication.properties");

            if (input == null) {
                throw new ServletException("Fichier authentication.properties introuvable !");
            }

            props.load(input);
            input.close();

            System.out.println("✅ Fichier chargé avec " + props.size() + " utilisateurs");

        } catch (IOException e) {
            throw new ServletException("Erreur de chargement du fichier properties", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Vérification null et trim
        if (username == null || password == null) {
            request.getRequestDispatcher("/erreur.jsp").forward(request, response);
            return;
        }

        username = username.trim();
        password = password.trim();

        // LOGS pour déboguer
        System.out.println("=== DEBUG ===");
        System.out.println("Username saisi: '" + username + "'");
        System.out.println("Password saisi: '" + password + "'");
        System.out.println("Nombre d'utilisateurs: " + props.size());

        String validPassword = props.getProperty(username);
        System.out.println("Password trouvé pour " + username + ": '" + validPassword + "'");
        System.out.println("=============");

        if (validPassword != null && validPassword.trim().equals(password)) {
            request.setAttribute("username", username);
            request.getRequestDispatcher("/succes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/erreur.jsp").forward(request, response);
        }
    }
}