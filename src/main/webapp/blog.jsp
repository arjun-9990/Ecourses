<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Blog</title>
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

    /* Blog container */
    .blog-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 30px;
        padding: 0 20px 70px;
    }

    /* Blog card */
    .blog-card {
        background: #fff;
        width: 300px;
        border-radius: 16px;
        padding: 30px 20px;
        box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        transition: transform 0.4s ease, box-shadow 0.4s ease;
        text-align: center;
        opacity: 0;
        transform: translateY(40px);
        animation: fadeUp 0.8s ease forwards;
        border-bottom: 4px solid transparent;
        cursor: pointer;
    }

    .blog-card:nth-child(1){ animation-delay: 0.2s; }
    .blog-card:nth-child(2){ animation-delay: 0.4s; }
    .blog-card:nth-child(3){ animation-delay: 0.6s; }
    .blog-card:nth-child(4){ animation-delay: 0.8s; }
    .blog-card:nth-child(5){ animation-delay: 1s; }
    .blog-card:nth-child(6){ animation-delay: 1.2s; }
    .blog-card:nth-child(7){ animation-delay: 1.4s; }
    .blog-card:nth-child(8){ animation-delay: 1.6s; }
    .blog-card:nth-child(9){ animation-delay: 1.8s; }

    .blog-card:hover {
        transform: translateY(-10px) scale(1.05);
        box-shadow: 0 14px 35px rgba(0,0,0,0.18);
        border-bottom: 4px solid #8b008b;
        background: linear-gradient(135deg, #ffffff, #f3e5f5);
    }

    .blog-card h5 {
        font-size: 22px;
        color: #4a148c;
        margin-bottom: 12px;
        font-weight: 700;
        letter-spacing: 0.5px;
    }

    .blog-card p {
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
        .blog-container {
            flex-direction: column;
            align-items: center;
        }
        .blog-card {
            width: 90%;
        }
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>

<h2 class="mt-5 fw-bold">Our Blog</h2>
<div class="blog-container mt-5 mb-5">
    <div class="blog-card">
        <h5>Future of Online Learning</h5>
        <p>Online learning is growing rapidly. Discover how it is transforming education worldwide.</p>
    </div>
    <div class="blog-card">
        <h5>Top 5 Programming Languages in 2025</h5>
        <p>Explore the most in-demand programming languages to learn this year.</p>
    </div>
    <div class="blog-card">
        <h5>AI in Education</h5>
        <p>How Artificial Intelligence is changing the way we learn and teach.</p>
    </div>
    <div class="blog-card">
        <h5>Mastering Data Science</h5>
        <p>From beginner to expert: learn the essential tools and techniques in data science.</p>
    </div>
    <div class="blog-card">
        <h5>The Rise of Cloud Computing</h5>
        <p>Why every developer and business should understand the power of the cloud.</p>
    </div>
    <div class="blog-card">
        <h5>Building Responsive Websites</h5>
        <p>Modern tips and best practices to create websites that work on any device.</p>
    </div>
    <div class="blog-card">
        <h5>Cybersecurity Essentials</h5>
        <p>Protect your data and apps with the latest security strategies and tools.</p>
    </div>
    <div class="blog-card">
        <h5>Machine Learning for Everyone</h5>
        <p>Simple guide to understanding machine learning and its real-world applications.</p>
    </div>
    <div class="blog-card">
        <h5>Career Growth in Tech</h5>
        <p>Proven strategies to advance your career in the fast-moving tech industry.</p>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
