package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {

    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/MyData", "root", "root123");
    }

    public List<Order> getOrdersByEmail(String email) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT id, customer_name, user_email, payment_method, total_amount, created_at " +
                     "FROM payments WHERE user_email=? ORDER BY id DESC";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setOrderId(rs.getInt("id"));
                o.setCustomerName(rs.getString("customer_name"));
                o.setEmail(rs.getString("user_email"));
                o.setPaymentMethod(rs.getString("payment_method"));
                o.setTotalAmount(rs.getDouble("total_amount"));
                o.setCreatedAt(rs.getTimestamp("created_at"));
                orders.add(o);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
