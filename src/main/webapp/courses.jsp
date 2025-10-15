<%@ page import="java.util.*, model.Course" %>
<html>
<head>
    <title>Courses</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body {
            font-family: 'Inter', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: #f7f8fa;
            color: #333;
        }

        .courses-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 50px 20px;
        }

        .course-card {
            background: #fff;
            width: 280px;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .course-card:hover {
            transform: translateY(-10px) scale(1.03);
            box-shadow: 0 15px 40px rgba(0,0,0,0.2);
        }

        .course-card img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }

        .course-header {
            background: linear-gradient(135deg, #4B6CB7, #182848);
            color: #fff;
            padding: 15px;
            font-size: 18px;
            font-weight: 700;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .course-header::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: 0;
            width: 0;
            height: 4px;
            background: #FF4B2B;
            border-radius: 2px;
            transition: all 0.5s ease;
            transform: translateX(-50%);
        }

        .course-card:hover .course-header::after {
            width: 60%;
        }

        .course-info {
            padding: 20px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .price {
            font-size: 18px;
            color: #555;
            margin: 10px 0 20px;
            font-weight: 600;
        }

        .btn-add {
            background: #FF4B2B;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
            text-decoration: none;
            text-align: center;
        }

        .btn-add:hover {
            background: #E03E1B;
            transform: translateY(-2px) scale(1.05);
        }

        @media (max-width: 768px) {
            .courses-container {
                flex-direction: column;
                align-items: center;
            }
            .course-card { width: 90%; }
        }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %>
    <div class="courses-container">
        <%
            List<Course> list = (List<Course>) request.getAttribute("courseList");
            for(Course c : list) {
        %>
        <div class="course-card">
            <div class="course-header"><%= c.getName() %></div>
            <div class="course-info">
                <p class="price">$<%= c.getPrice() %></p>
                <form action="cart" method="post">
                    <input type="hidden" name="id" value="<%= c.getId() %>">
                    <input type="hidden" name="name" value="<%= c.getName() %>">
                    <input type="hidden" name="price" value="<%= c.getPrice() %>">
                    <input type="submit" class="btn-add" value="Add to Cart">
                </form>
            </div>
        </div>
        <% } %>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>
