<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<style>
    body {
        background: linear-gradient(135deg, #f0f2f5, #e8eaf6);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .login-card {
        background: #fff;
        border-radius: 16px;
        padding: 40px 30px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        position: relative;
    }

    .login-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 14px 35px rgba(0,0,0,0.15);
    }

    .login-card h2 {
        text-align: center;
        color: #4a148c;
        margin-bottom: 30px;
        position: relative;
    }

    .login-card h2::after {
        content: '';
        display: block;
        width: 60px;
        height: 4px;
        background: #8b008b;
        margin: 10px auto 0;
        border-radius: 2px;
    }

    .login-card label {
        font-weight: 600;
        color: #4a148c;
    }

    .login-card input.form-control {
        border-radius: 8px;
        border: 1px solid #ccc;
        padding: 12px 40px 12px 12px;
        transition: all 0.3s ease;
    }

    .login-card input.form-control:focus {
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

    .login-card .btn-success {
        background: linear-gradient(135deg, #4a148c, #6a1b9a);
        border: none;
        font-weight: 600;
        padding: 12px;
        border-radius: 10px;
        transition: all 0.3s ease;
        color: #fff;
    }

    .login-card .btn-success:hover {
        background: linear-gradient(135deg, #330066, #4a148c);
        transform: translateY(-2px) scale(1.02);
        box-shadow: 0 8px 20px rgba(74, 20, 140, 0.4);
    }

    .login-card p {
        margin-top: 20px;
        color: #555;
    }

    .login-card a {
        color: #6a1b9a;
        text-decoration: none;
        font-weight: 600;
        transition: color 0.3s;
    }

    .login-card a:hover {
        color: #4a148c;
    }

    @media(max-width: 768px){
        .login-card {
            padding: 30px 20px;
        }
    }
</style>

<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="login-card">
                <h2>Login</h2>

                <!-- Display messages -->
                <c:if test="${not empty param.msg}">
                    <div class="alert alert-warning text-center">${param.msg}</div>
                </c:if>

                <form action="login" method="post">
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3 password-container">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Enter password" required>
                        <span class="toggle-password" onclick="togglePassword('password')">👁️</span>
                    </div>
                    <button type="submit" class="btn btn-success w-100">Login</button>
                </form>

                <p class="text-center mt-3">
                    Don't have an account? <a href="signup.jsp">Sign up here</a>
                </p>
            </div>
        </div>
    </div>
</div>

<script>
    function togglePassword(fieldId) {
        const passwordField = document.getElementById(fieldId);
        const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', type);
    }
</script>

<%@ include file="footer.jsp" %>
