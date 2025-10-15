<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">

    <!-- Success message -->
    <div class="alert alert-success">
        ✅ ${msg}
    </div>

    <!-- Customer Info -->
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <h4 class="card-title text-primary">Customer Information</h4>
            <p><strong>Name:</strong> ${customerName}</p>
            <p><strong>Payment Method:</strong> ${paymentMethod}</p>
            <p><strong>Total Paid:</strong> ₹${total}</p>
        </div>
    </div>

    <!-- Orders -->
    <div class="card shadow-sm">
        <div class="card-body">
            <h4 class="card-title text-primary">Your Order Summary</h4>

            <c:if test="${empty orderedCourses}">
                <p>No orders were placed.</p>
            </c:if>

            <c:if test="${not empty orderedCourses}">
                <table class="table table-bordered table-hover">
                    <thead class="table-primary">
                        <tr>
                            <th>#</th>
                            <th>Course Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="course" items="${orderedCourses}" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${course.name}</td>
                                <td>₹${course.price}</td>
                                <td>${course.quantity}</td>
                                <td>₹${course.price * course.quantity}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>

    <!-- Button to go back -->
    <div class="mt-4">
        <a href="courses" class="btn btn-primary">Continue Shopping</a>
        <a href="myorders" class="btn btn-success">View My Orders</a>
    </div>

</div>
</body>
</html>
