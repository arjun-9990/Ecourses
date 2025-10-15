package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;
import model.Order;
import model.OrderDAO;


@WebServlet("/myorders")
public class MyOrdersServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userEmail") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String email = (String) session.getAttribute("userEmail");
        OrderDAO dao = new OrderDAO();
        List<Order> orders = dao.getOrdersByEmail(email);

        request.setAttribute("orders", orders);
        RequestDispatcher rd = request.getRequestDispatcher("myorders.jsp");
        rd.forward(request, response);
    }
}
