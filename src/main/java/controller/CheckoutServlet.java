package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

import model.Course;
import model.PaymentDAO;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    @SuppressWarnings("unchecked")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Course> cart = (List<Course>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            request.setAttribute("msg", "Your cart is empty. Please add courses before checkout.");
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
            return;
        }

       
        String customerName = (String) session.getAttribute("userName");
        String customerEmail = (String) session.getAttribute("userEmail");

       
        String paymentMethod = request.getParameter("paymentMethod");

       
        PaymentDAO paymentDAO = new PaymentDAO();
        List<Integer> paymentIds = paymentDAO.savePayment(cart, customerName, customerEmail, paymentMethod);

       
        double total = cart.stream().mapToDouble(Course::getPrice).sum();

        if (!paymentIds.isEmpty()) {
            request.setAttribute("msg", "Payment Successful via " + paymentMethod);
            request.setAttribute("paymentIds", paymentIds);
            request.setAttribute("total", total);
        } else {
            request.setAttribute("msg", "Payment failed or not saved in DB!");
        }

       
        session.removeAttribute("cart");

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("cart"); 
    }
}
