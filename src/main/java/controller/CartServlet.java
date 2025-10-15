package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.*;
import model.Course;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    @SuppressWarnings("unchecked")
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Course> cart = (List<Course>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

       
        String action = request.getParameter("action");
        String idStr = request.getParameter("id");
        if ("remove".equals(action) && idStr != null) {
            int id = Integer.parseInt(idStr);
            cart.removeIf(c -> c.getId() == id);
        }

        session.setAttribute("cart", cart);
        request.setAttribute("cartItems", cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @SuppressWarnings("unchecked")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Course> cart = (List<Course>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));

       
        boolean exists = cart.stream().anyMatch(c -> c.getId() == id);
        if (!exists) {
            cart.add(new Course(id, name, price));
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("cart");
    }
}
