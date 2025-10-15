package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {

    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/MyData", "root", "root123");
    }

    public List<Integer> savePayment(List<Course> cart, String customerName, String userEmail, String paymentMethod) {
        List<Integer> paymentIds = new ArrayList<>();

        String sql = "INSERT INTO payments (user_email, customer_name, payment_method, total_amount) VALUES (?, ?, ?, ?)";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            double total = cart.stream().mapToDouble(c -> c.getPrice() * c.getQuantity()).sum();

            ps.setString(1, userEmail);    
            ps.setString(2, customerName);
            ps.setString(3, paymentMethod);
            ps.setDouble(4, total);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                ResultSet rs = ps.getGeneratedKeys();
                while (rs.next()) {
                    paymentIds.add(rs.getInt(1));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return paymentIds;
    }
}
