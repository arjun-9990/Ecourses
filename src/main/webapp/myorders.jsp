<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<div class="container my-5">
    <h2 class="mb-4 text-center">My Orders</h2>

    <c:if test="${empty orders}">
        <div class="alert alert-info text-center" role="alert">
            You have no orders yet.
        </div>
    </c:if>

    <c:if test="${not empty orders}">
        <div class="table-responsive shadow-sm rounded">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Customer</th>
                        <th scope="col">Email</th>
                        <th scope="col">Payment Method</th>
                        <th scope="col">Total Amount</th>
                        <th scope="col">Ordered On</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="o" items="${orders}">
                        <tr>
                            <th scope="row">${o.orderId}</th>
                            <td>${o.customerName}</td>
                            <td>${o.email}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${o.paymentMethod eq 'Card'}">
                                        <span class="badge bg-primary">${o.paymentMethod}</span>
                                    </c:when>
                                    <c:when test="${o.paymentMethod eq 'UPI'}">
                                        <span class="badge bg-success">${o.paymentMethod}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-secondary">${o.paymentMethod}</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>₹${o.totalAmount}</td>
                            <td>
                                <fmt:formatDate value="${o.createdAt}" pattern="dd MMM yyyy, HH:mm"/>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</div>

<%@ include file="footer.jsp" %>
