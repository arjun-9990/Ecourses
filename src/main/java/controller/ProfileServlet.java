package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {

    private Connection getConnection() throws SQLException {
        try { Class.forName("com.mysql.cj.jdbc.Driver"); }
        catch (ClassNotFoundException e) { e.printStackTrace(); }
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/MyData", "root", "root123");
    }

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp?msg=Please+login+first");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        try (Connection con = getConnection()) {
            String sql = "SELECT name, email, phone FROM users WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                request.setAttribute("name", rs.getString("name"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("phone", rs.getString("phone"));
            } else {
                request.setAttribute("error", "User not found!");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error!");
        }

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp?msg=Please+login+first");
            return;
        }

        int userId = (int) session.getAttribute("userId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        try (Connection con = getConnection()) {
            String sql;
            if (password != null && !password.trim().isEmpty()) {
                sql = "UPDATE users SET name=?, email=?, phone=?, password=? WHERE id=?";
            } else {
                sql = "UPDATE users SET name=?, email=?, phone=? WHERE id=?";
            }

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);

            if (password != null && !password.trim().isEmpty()) {
                ps.setString(4, password);
                ps.setInt(5, userId);
            } else {
                ps.setInt(4, userId);
            }

            int updated = ps.executeUpdate();
            if (updated > 0) {
                session.setAttribute("userName", name);
                request.setAttribute("success", "Profile updated successfully!");
            } else {
                request.setAttribute("error", "Update failed!");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error!");
        }

        doGet(request, response);
    }
}
