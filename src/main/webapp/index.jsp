<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ecommerce Website</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
/* General Reset */
body {
    font-family: 'Inter', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background: #f7f8fa;
    color: #333;
}

/* Container */
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Hero Section */
.hero {
    padding: 140px 20px;
    background: linear-gradient(135deg, #4B6CB7, #182848); /* professional gradient */
    color: #fff;
    text-align: center;
    border-radius: 20px;
    box-shadow: 0 15px 50px rgba(0,0,0,0.2);
    margin: 60px 0;
    position: relative;
    overflow: hidden;
}

.hero::after {
    content: "";
    position: absolute;
    width: 500px;
    height: 500px;
    background: rgba(255,255,255,0.1);
    border-radius: 50%;
    top: -100px;
    right: -100px;
    z-index: 0;
}

.hero h5 {
    font-size: 16px;
    letter-spacing: 3px;
    text-transform: uppercase;
    opacity: 0.9;
    margin-bottom: 15px;
    z-index: 1;
    position: relative;
}

.hero h1 {
    font-size: 52px;
    font-weight: 800;
    margin-bottom: 20px;
    line-height: 1.2;
    z-index: 1;
    position: relative;
}

.hero p {
    font-size: 20px;
    margin-bottom: 40px;
    opacity: 0.85;
    z-index: 1;
    position: relative;
}

.hero .btn {
    padding: 16px 50px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    background: #FF4B2B; /* modern accent color */
    border: none;
    border-radius: 50px;
    box-shadow: 0 8px 25px rgba(255,75,43,0.4);
    transition: all 0.3s ease;
    text-decoration: none;
    z-index: 1;
    position: relative;
}

.hero .btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(255,75,43,0.5);
}

/* Achievements Section */
.achievements-section {
    padding: 100px 20px;
    background: #ffffff;
    border-radius: 20px;
    box-shadow: 0 12px 40px rgba(0,0,0,0.08);
    margin: 80px 0;
    text-align: center;
}

.achievements-section h2 {
    font-size: 38px;
    margin-bottom: 60px;
    color: #4B6CB7; /* professional color */
    font-weight: 700;
}

.achievements-cards {
    display: flex;
    justify-content: center;
    gap: 40px;
    flex-wrap: wrap;
}

.achievements-cards .card {
    background: #ffffff;
    color: #333;
    padding: 35px 25px;
    width: 260px;
    border-radius: 20px;
    text-align: center;
    position: relative;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0,0,0,0.08);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
}

.achievements-cards .card::before {
    content: "";
    position: absolute;
    width: 150%;
    height: 150%;
    background: linear-gradient(135deg, rgba(75,108,183,0.15), rgba(255,75,43,0.15));
    top: -50%;
    left: -50%;
    transform: rotate(25deg);
    transition: all 0.5s ease;
}

.achievements-cards .card:hover::before {
    transform: rotate(25deg) translate(20px, 20px);
}

.achievements-cards .card:hover {
    transform: translateY(-12px) scale(1.08);
    box-shadow: 0 20px 40px rgba(0,0,0,0.2);
}

.achievements-cards .card .icon {
    font-size: 48px;
    margin-bottom: 20px;
}

.achievements-cards .card p {
    font-size: 16px;
    line-height: 1.6;
    font-weight: 500;
}

@keyframes fadeInUp {
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.hero {
    opacity: 0;
    transform: translateY(50px);
    animation: fadeInUp 1s forwards;
}

/* Responsive */
@media (max-width: 1024px) {
    .hero h1 { font-size: 44px; }
    .hero p { font-size: 18px; }
    .achievements-section h2 { font-size: 32px; }
    .achievements-cards { gap: 30px; }
}

@media (max-width: 768px) {
    .hero { padding: 100px 15px; }
    .hero h1 { font-size: 36px; }
    .hero p { font-size: 16px; }
    .achievements-section h2 { font-size: 28px; }
    .achievements-cards { flex-direction: column; gap: 30px; align-items: center; }
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="container hero text-center">
    <h5>LEARN FROM THE EXPERTS</h5>
    <h1>Upskill Yourself Anytime, Anywhere</h1>
    <p>Join thousands of learners worldwide and gain in-demand skills through our interactive online courses.</p>
    <a href="courses" class="btn">Browse Courses</a>
</div>


<section class="achievements-section">
    <div class="container">
        <h2>Recent Achievements</h2>

        <div class="achievements-cards">

            <div class="card">
                <div class="icon">🏆</div>
                <p>Awarded Best Online Education Platform 2024</p>
            </div>

            <div class="card">
                <div class="icon">🎓</div>
                <p>Over 10,000+ Students Enrolled Worldwide</p>
            </div>

            <div class="card">
                <div class="icon">🌍</div>
                <p>Recognized Globally in the EdTech Community</p>
            </div>

            <div class="card">
                <div class="icon">💡</div>
                <p>Innovative Courses with Real-World Projects</p>
            </div>

        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>
</body>
</html>
