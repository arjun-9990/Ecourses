package controller;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Course;
import model.PaymentDAO;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    @SuppressWarnings("unchecked")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("courses");
            return;
        }

        List<Course> cart = (List<Course>) session.getAttribute("cart");
        if (cart == null || cart.isEmpty()) {
            response.sendRedirect("cart");
            return;
        }

        String name = request.getParameter("customer_name");
        String email = request.getParameter("user_email");
        String paymentMethod = request.getParameter("payment_method");

        session.setAttribute("userEmail", email);

        PaymentDAO dao = new PaymentDAO();
        List<Integer> paymentIds = dao.savePayment(cart, name, email, paymentMethod);

        double total = cart.stream().mapToDouble(c -> c.getPrice() * c.getQuantity()).sum();

        session.removeAttribute("cart");

        request.setAttribute("msg", "Payment Successful!");
        request.setAttribute("total", total);
        request.setAttribute("paymentIds", paymentIds);
        request.setAttribute("customerName", name);
        request.setAttribute("paymentMethod", paymentMethod);
        request.setAttribute("orderedCourses", cart);

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("payment.jsp").forward(request, response);
    }
}
