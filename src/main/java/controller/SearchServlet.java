package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import model.Course;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/MyData", "root", "root123");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String query = request.getParameter("q");
        List<Course> results = new ArrayList<>();

        if (query != null && !query.trim().isEmpty()) {
            try (Connection con = getConnection()) {
                String sql = "SELECT id, name, price FROM courses WHERE name LIKE ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, "%" + query + "%");

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    results.add(new Course(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getDouble("price")
                    ));
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException(e);
            }
        }

        request.setAttribute("searchQuery", query);
        request.setAttribute("searchResults", results);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
