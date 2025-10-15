<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


<style>
    body {
        background: linear-gradient(135deg, #f0f2f5, #e8eaf6);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .signup-card {
        background: #fff;
        border-radius: 16px;
        padding: 40px 30px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        position: relative;
    }

    .signup-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 14px 35px rgba(0,0,0,0.15);
    }

    .signup-card h2 {
        text-align: center;
        color: #4a148c;
        margin-bottom: 30px;
        position: relative;
    }

    .signup-card h2::after {
        content: '';
        display: block;
        width: 60px;
        height: 4px;
        background: #8b008b;
        margin: 10px auto 0;
        border-radius: 2px;
    }

    .signup-card label {
        font-weight: 600;
        color: #4a148c;
    }

    .signup-card input.form-control {
        border-radius: 8px;
        border: 1px solid #ccc;
        padding: 12px 40px 12px 12px;
        transition: all 0.3s ease;
    }

    .signup-card input.form-control:focus {
        border-color: #4a148c;
        box-shadow: 0 0 8px rgba(75, 0, 75, 0.2);
        outline: none;
    }

    /* Password toggle icon */
    .password-container {
        position: relative;
    }

    .password-container .toggle-password {
        position: absolute;
        right: 12px;
        top: 70%;
        transform: translateY(-50%);
        cursor: pointer;
        font-size: 18px;
        color: #6a1b9a;
        transition: color 0.3s;
    }

    .password-container .toggle-password:hover {
        color: #4a148c;
    }

    .signup-card .btn-primary {
        background: linear-gradient(135deg, #4a148c, #6a1b9a);
        border: none;
        font-weight: 600;
        padding: 12px;
        border-radius: 10px;
        transition: all 0.3s ease;
    }

    .signup-card .btn-primary:hover {
        background: linear-gradient(135deg, #330066, #4a148c);
        transform: translateY(-2px) scale(1.02);
        box-shadow: 0 8px 20px rgba(74, 20, 140, 0.4);
    }

    .signup-card p {
        margin-top: 20px;
        color: #555;
    }

    .signup-card a {
        color: #6a1b9a;
        text-decoration: none;
        font-weight: 600;
        transition: color 0.3s;
    }

    .signup-card a:hover {
        color: #4a148c;
    }

    @media(max-width: 768px){
        .signup-card {
            padding: 30px 20px;
        }
    }
</style>

</head>

<body>
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="signup-card">
                <h2>Sign Up</h2>

                <!-- Display messages -->
                <c:if test="${not empty param.msg}">
                    <div class="alert alert-warning text-center">${param.msg}</div>
                </c:if>

                <form action="signup" method="post">
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Phone</label>
                        <input type="text" name="phone" class="form-control" placeholder="Enter your phone number">
                    </div>
                    <div class="mb-3 password-container">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Enter password" required>
                        <span class="toggle-password" onclick="togglePassword()">👁️</span>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Sign Up</button>
                </form>

                <p class="text-center">
                    Already have an account? <a href="login.jsp">Login here</a>
                </p>
            </div>
        </div>
    </div>
</div>

<script>
    function togglePassword() {
        const passwordField = document.getElementById('password');
        const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', type);
    }
</script>

<%@ include file="footer.jsp" %>
</body>
</html>