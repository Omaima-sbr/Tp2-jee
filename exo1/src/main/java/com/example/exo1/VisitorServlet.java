package com.example.exo1;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/visiteurs")
public class VisitorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");

        List<String> visitors = (List<String>) getServletContext().getAttribute("visitors");

        if (visitors == null) {
            visitors = new ArrayList<>();
            getServletContext().setAttribute("visitors", visitors);
        }

        if (name != null && !name.trim().isEmpty() && !visitors.contains(name)) {
            visitors.add(name);
        }

        request.getRequestDispatcher("/visiteurs.jsp").forward(request, response);
    }
}