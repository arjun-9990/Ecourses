package model;

import java.sql.*;
import java.util.*;

public class CourseDAO {
    public List<Course> getAllCourses() {
        List<Course> list = new ArrayList<>();
        try (Connection con = DBUtil.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT * FROM courses")) {
            
            while (rs.next()) {
                list.add(new Course(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getDouble("price")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
