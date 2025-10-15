package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection getConnection() throws SQLException {
        try { Class.forName("com.mysql.cj.jdbc.Driver"); } 
        catch (ClassNotFoundException e) { e.printStackTrace(); }
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/MyData", "root", "root123");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        try (Connection con = getConnection()) {
            PreparedStatement check = con.prepareStatement("SELECT * FROM users WHERE email=?");
            check.setString(1, email);
            ResultSet rs = check.executeQuery();
            if (rs.next()) {
                response.sendRedirect("signup.jsp?msg=Email already exists");
                return;
            }

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users (name, email, phone, password) VALUES (?, ?, ?, ?)"
            );
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, password);
            int inserted = ps.executeUpdate();

            if (inserted > 0) response.sendRedirect("login.jsp?msg=Registration successful! Please login");
            else response.sendRedirect("signup.jsp?msg=Registration failed");

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?msg=Database error");
        }
    }
}
