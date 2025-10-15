<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Teachers</title>
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
        overflow-x: hidden;
    }

    h2 {
        text-align: center;
        color: #4a148c;
        margin: 50px 0 30px;
        font-size: 36px;
        font-weight: 700;
        position: relative;
        animation: fadeDown 1s ease;
    }

    /* underline animation for heading */
    h2::after {
        content: "";
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        bottom: -10px;
        width: 80px;
        height: 4px;
        background: #8b008b;
        border-radius: 2px;
        animation: growLine 1.2s ease;
    }

    /* Teachers container */
    .teachers-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 30px;
        padding: 0 20px 70px;
    }

    /* Teacher Card */
    .teacher-card {
        background: #fff;
        width: 260px;
        border-radius: 16px;
        padding: 30px 20px;
        box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        text-align: center;
        transition: transform 0.4s ease, box-shadow 0.4s ease;
        opacity: 0;
        transform: translateY(40px);
        animation: fadeUp 0.8s ease forwards;
        cursor: pointer;
        border-bottom: 4px solid transparent;
    }

    .teacher-card:nth-child(1){ animation-delay: 0.2s; }
    .teacher-card:nth-child(2){ animation-delay: 0.4s; }
    .teacher-card:nth-child(3){ animation-delay: 0.6s; }
    .teacher-card:nth-child(4){ animation-delay: 0.8s; }
    .teacher-card:nth-child(5){ animation-delay: 1s; }
    .teacher-card:nth-child(6){ animation-delay: 1.2s; }
    .teacher-card:nth-child(7){ animation-delay: 1.4s; }
    .teacher-card:nth-child(8){ animation-delay: 1.6s; }

    .teacher-card:hover {
        transform: translateY(-10px) scale(1.05);
        box-shadow: 0 14px 35px rgba(0,0,0,0.18);
        border-bottom: 4px solid #8b008b;
    }

    .teacher-card h5 {
        font-size: 22px;
        color: #4a148c;
        margin-bottom: 12px;
        font-weight: 700;
        letter-spacing: 0.5px;
    }

    .teacher-card p {
        font-size: 16px;
        color: #555;
        line-height: 1.5;
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
        .teachers-container {
            flex-direction: column;
            align-items: center;
        }
        .teacher-card {
            width: 90%;
        }
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<h2 class="m-5 fw-bold">Our Expert Teachers</h2>
<div class="teachers-container">
    <div class="teacher-card">
        <h5>Dr. Ramesh Sharma</h5>
        <p>Expert in Java and Backend Development</p>
    </div>
    <div class="teacher-card">
        <h5>Ms. Priya Verma</h5>
        <p>Frontend & React Specialist</p>
    </div>
    <div class="teacher-card">
        <h5>Mr. Arjun Singh</h5>
        <p>Data Scientist & AI Mentor</p>
    </div>
    <div class="teacher-card">
        <h5>Prof. Anjali Mehta</h5>
        <p>Cloud Computing & DevOps Engineer</p>
    </div>
    <div class="teacher-card">
        <h5>Dr. Karan Kapoor</h5>
        <p>Cybersecurity & Ethical Hacking Expert</p>
    </div>
    <div class="teacher-card">
        <h5>Ms. Sanya Rao</h5>
        <p>UI/UX Designer & Creative Mentor</p>
    </div>
    <div class="teacher-card">
        <h5>Mr. Vikram Joshi</h5>
        <p>Mobile App Development (iOS & Android)</p>
    </div>
    <div class="teacher-card">
        <h5>Dr. Neha Patel</h5>
        <p>Machine Learning & Deep Learning Researcher</p>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
