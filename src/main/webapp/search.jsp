<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Course" %>
<%@ include file="header.jsp" %>

<div class="container mt-5">

    <%
        List<Course> results = (List<Course>) request.getAttribute("searchResults");
        if (results == null || results.isEmpty()) {
    %>
        <div class="alert alert-warning" role="alert">
            No courses found.
        </div>
    <%
        } else {
    %>
        <div class="row">
        <% for (Course c : results) { %>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title"><%= c.getName() %></h5>
                        <p class="card-text"><strong>Price:</strong> ₹<%= c.getPrice() %></p>
                        <div class="mt-auto">
                            <form action="cart" method="post">
                                <input type="hidden" name="id" value="<%= c.getId() %>">
                                <input type="hidden" name="name" value="<%= c.getName() %>">
                                <input type="hidden" name="price" value="<%= c.getPrice() %>">
                                <button type="submit" class="btn btn-primary w-100">Add to Cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <% } %>
        </div>
    <%
        }
    %>
</div>

<%@ include file="footer.jsp" %>
