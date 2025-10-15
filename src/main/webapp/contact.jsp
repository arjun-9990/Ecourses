<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
    /* General Reset */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #f0f2f5, #e8eaf6);
        color: #333;
    }

    h2 {
        text-align: center;
        color: #4a148c;
        margin: 60px 0 40px;
        font-size: 38px;
        font-weight: 700;
        position: relative;
        animation: fadeDown 1s ease;
    }

    h2::after {
        content: "";
        display: block;
        width: 80px;
        height: 4px;
        background: #4a148c;
        margin: 12px auto 0;
        border-radius: 2px;
        animation: growLine 1.2s ease;
    }

    /* Form Container */
    .contact-container {
        max-width: 650px;
        margin: 0 auto 80px;
        background: #ffffff;
        padding: 45px 35px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.12);
        animation: fadeUp 0.8s ease;
    }

    .form-group {
        position: relative;
        margin-bottom: 25px;
    }

    .form-group label {
        position: absolute;
        top: 12px;
        left: 15px;
        font-size: 16px;
        color: #777;
        pointer-events: none;
        transition: 0.3s ease all;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 14px 15px;
        border: 1px solid #ccc;
        border-radius: 10px;
        font-size: 16px;
        background: #fafafa;
        transition: all 0.3s ease;
    }

    .form-group input:focus,
    .form-group textarea:focus {
        border-color: #4a148c;
        box-shadow: 0 0 10px rgba(75, 0, 75, 0.2);
        outline: none;
        background: #fff;
    }

    /* Floating label effect */
    .form-group input:focus + label,
    .form-group input:not(:placeholder-shown) + label,
    .form-group textarea:focus + label,
    .form-group textarea:not(:placeholder-shown) + label {
        top: -10px;
        left: 12px;
        font-size: 13px;
        color: #4a148c;
        background: #fff;
        padding: 0 5px;
    }

    /* Button */
    .contact-container button {
        width: 100%;
        background: linear-gradient(135deg, #4a148c, #6a1b9a);
        color: #fff;
        border: none;
        padding: 14px 25px;
        border-radius: 12px;
        font-size: 18px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 5px 15px rgba(74, 20, 140, 0.3);
    }

    .contact-container button:hover {
        background: linear-gradient(135deg, #330066, #4a148c);
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(74, 20, 140, 0.4);
    }

    /* Animations */
    @keyframes fadeUp {
        from { opacity: 0; transform: translateY(40px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes fadeDown {
        from { opacity: 0; transform: translateY(-30px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes growLine {
        from { width: 0; }
        to { width: 80px; }
    }

    /* Responsive */
    @media(max-width: 768px){
        .contact-container {
            width: 90%;
            padding: 30px 20px;
        }
        h2 {
            font-size: 32px;
        }
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<h2 class="m-5 fw-bold">Contact Us</h2>
<div class="contact-container">
  <form action="contact" method="post">
    <div class="form-group">
      <input type="text" id="name" name="name" placeholder=" " required>
      <label for="name">Name</label>
    </div>
    <div class="form-group">
      <input type="email" id="email" name="email" placeholder=" " required>
      <label for="email">Email</label>
    </div>
    <div class="form-group">
      <textarea id="message" name="message" rows="6" placeholder=" " required></textarea>
      <label for="message">Message</label>
    </div>
    <button type="submit">Send Message</button>
  </form>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
