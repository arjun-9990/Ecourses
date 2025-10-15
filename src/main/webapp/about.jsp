<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us - ECourses</title>
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

/* Hero Section */
.hero {
    padding: 120px 20px;
    background: linear-gradient(135deg, #4B6CB7, #182848);
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

.hero h1, .hero p, .hero .btn {
    position: relative;
    z-index: 1;
}

.hero h1 {
    font-size: 48px;
    font-weight: 800;
    margin-bottom: 20px;
}

.hero p {
    font-size: 20px;
    margin-bottom: 40px;
    opacity: 0.85;
}

.hero .btn {
    padding: 16px 50px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    background: #FF4B2B;
    border: none;
    border-radius: 50px;
    box-shadow: 0 8px 25px rgba(255,75,43,0.4);
    transition: all 0.3s ease;
    text-decoration: none;
}

.hero .btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(255,75,43,0.5);
}

/* About Section */
.about-section {
    padding: 80px 20px;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 12px 40px rgba(0,0,0,0.08);
    margin: 60px 0;
    text-align: center;
}

.about-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: #4B6CB7;
    font-weight: 700;
}

.about-section p {
    font-size: 18px;
    line-height: 1.7;
    color: #555;
    max-width: 900px;
    margin: 0 auto 15px;
}

/* Courses Section */
.courses-section {
    padding: 80px 20px;
    background: #f9f9f9;
    border-radius: 20px;
    box-shadow: 0 12px 40px rgba(0,0,0,0.08);
    margin: 60px 0;
    text-align: center;
}

.courses-section h2 {
    font-size: 36px;
    margin-bottom: 50px;
    color: #4B6CB7;
    font-weight: 700;
}

.course-cards {
    display: flex;
    justify-content: center;
    gap: 40px;
    flex-wrap: wrap;
}

.course-card {
    background: #fff;
    padding: 35px 25px;
    width: 260px;
    border-radius: 20px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0,0,0,0.08);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    position: relative;
    overflow: hidden;
}

.course-card::before {
    content: "";
    position: absolute;
    width: 150%;
    height: 150%;
    background: linear-gradient(135deg, rgba(75,108,183,0.1), rgba(255,75,43,0.1));
    top: -50%;
    left: -50%;
    transform: rotate(25deg);
    transition: all 0.5s ease;
}

.course-card:hover::before {
    transform: rotate(25deg) translate(20px, 20px);
}

.course-card:hover {
    transform: translateY(-10px) scale(1.05);
    box-shadow: 0 20px 40px rgba(0,0,0,0.2);
}

.course-card h3 {
    font-size: 22px;
    margin-bottom: 15px;
    color: #4B6CB7;
}

.course-card p {
    font-size: 16px;
    line-height: 1.6;
    font-weight: 500;
    color: #555;
}

/* Achievements Section */
.achievements-section {
    padding: 80px 20px;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 12px 40px rgba(0,0,0,0.08);
    margin: 60px 0;
    text-align: center;
}

.achievements-section h2 {
    font-size: 36px;
    margin-bottom: 50px;
    color: #4B6CB7;
    font-weight: 700;
}

.achievements-cards {
    display: flex;
    justify-content: center;
    gap: 40px;
    flex-wrap: wrap;
}

.achievements-cards .card {
    background: #f9f9f9;
    padding: 35px 25px;
    width: 260px;
    border-radius: 20px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0,0,0,0.08);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    position: relative;
    overflow: hidden;
}

.achievements-cards .card::before {
    content: "";
    position: absolute;
    width: 150%;
    height: 150%;
    background: linear-gradient(135deg, rgba(75,108,183,0.1), rgba(255,75,43,0.1));
    top: -50%;
    left: -50%;
    transform: rotate(25deg);
    transition: all 0.5s ease;
}

.achievements-cards .card:hover::before {
    transform: rotate(25deg) translate(20px,20px);
}

.achievements-cards .card:hover {
    transform: translateY(-10px) scale(1.05);
    box-shadow: 0 20px 40px rgba(0,0,0,0.2);
}

.achievements-cards .card .icon {
    font-size: 48px;
    margin-bottom: 20px;
}

.achievements-cards .card p {
    font-size: 16px;
    line-height: 1.6;
    color: #555;
    font-weight: 500;
}

/* Animations */
@keyframes fadeInUp {
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.hero, .about-section, .courses-section, .achievements-section {
    opacity: 0;
    transform: translateY(50px);
    animation: fadeInUp 1s forwards;
}

.hero { animation-delay: 0.1s; }
.about-section { animation-delay: 0.3s; }
.courses-section { animation-delay: 0.6s; }
.achievements-section { animation-delay: 0.9s; }

/* Responsive */
@media(max-width:768px){
    .hero h1 { font-size: 32px; }
    .hero p { font-size: 16px; }
    .about-section h2, .courses-section h2, .achievements-section h2 { font-size: 28px; }
    .about-section p, .course-card p, .achievements-cards .card p { font-size: 16px; }
    .course-cards, .achievements-cards { flex-direction: column; gap: 20px; align-items: center; }
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<!-- Hero Section -->
<div class="container hero text-center">
    <h1>Learn Anytime, Anywhere</h1>
    <p>Join thousands of students upgrading their skills with our professional online courses.</p>
    <a href="courses" class="btn">Explore Courses</a>
</div>

<!-- About Us Section -->
<div class="container about-section">
    <h2>About Us</h2>
    <p>We are an online education platform providing high-quality courses for students and professionals worldwide.</p>
    <p>Our mission is to make education accessible to everyone, from beginners to advanced learners, empowering them to achieve their career goals.</p>
</div>

<!-- Courses Highlights -->
<div class="container courses-section">
    <h2>Our Popular Courses</h2>
    <div class="course-cards">
        <div class="course-card">
            <h3>Java Full Stack Development</h3>
            <p>Learn backend & frontend technologies including Java, Spring Boot, React, and MySQL.</p>
        </div>
        <div class="course-card">
            <h3>Data Science & AI</h3>
            <p>Master Python, Machine Learning, and AI tools to analyze data and create intelligent systems.</p>
        </div>
        <div class="course-card">
            <h3>Cybersecurity Essentials</h3>
            <p>Understand ethical hacking, network security, and protect systems from cyber threats.</p>
        </div>
    </div>
</div>

<!-- Achievements Section -->
<div class="container achievements-section">
    <h2>Recent Achievements</h2>
    <div class="achievements-cards">
        <div class="card">
            <div class="icon">🏆</div>
            <p>Awarded Best Online Education Platform 2024</p>
        </div>
        <div class="card">
            <div class="icon">🎓</div>
            <p>Over 10,000+ Students Enrolled</p>
        </div>
        <div class="card">
            <div class="icon">🌍</div>
            <p>Recognized Globally in EdTech Community</p>
        </div>
        <div class="card">
            <div class="icon">💡</div>
            <p>Innovative Courses with Real-World Projects</p>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
