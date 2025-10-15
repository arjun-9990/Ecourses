<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<div class="container mt-5">
    <h2>My Profile</h2>

    <c:if test="${not empty success}">
        <div class="alert alert-success">${success}</div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <!-- Profile Display -->
    <div class="card w-50 mx-auto shadow-sm p-4 mb-3">
        <h5>Name: <c:out value="${name}"/></h5>
        <h6>Email: <c:out value="${email}"/></h6>
        <h6>Phone: <c:out value="${phone}"/></h6>
        <button class="btn btn-primary mt-3" id="editBtn">Edit Profile</button>
    </div>

    <!-- Edit Form -->
    <div class="card w-50 mx-auto shadow-sm p-4" id="editForm" style="display:none;">
        <form action="profile" method="post">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" value="${name}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" value="${email}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone</label>
                <input type="text" name="phone" class="form-control" value="${phone}">
            </div>
            <div class="mb-3">
                <label class="form-label">Password (leave blank to keep unchanged)</label>
                <input type="password" name="password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success w-100">Update Profile</button>
        </form>
    </div>
</div>

<script>
    const editBtn = document.getElementById("editBtn");
    const editForm = document.getElementById("editForm");
    editBtn.addEventListener("click", function() {
        editForm.style.display = editForm.style.display === "none" ? "block" : "none";
    });
</script>

<%@ include file="footer.jsp" %>
