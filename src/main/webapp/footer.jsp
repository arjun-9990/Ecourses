<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ECOURSES Footer</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
    font-family: 'Inter', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background: #f0f2f5;
    color: #333;
}

/* Footer Styles */
footer {
    background: #1a1a1a;
    color: #f0f0f0;
    padding: 60px 0 30px 0;
    position: relative;
    font-size: 14px;
}

footer h5 {
    color: #ff6a00;
    margin-bottom: 20px;
    font-weight: 700;
}

footer p, footer a {
    color: #f0f0f0;
    text-decoration: none;
    opacity: 0.85;
    transition: all 0.3s ease;
}

footer a:hover {
    color: #ff6a00;
    text-decoration: none;
    opacity: 1;
}

footer .row > div {
    margin-bottom: 20px;
}

/* List style for links and achievements */
footer ul {
    list-style: none;
    padding: 0;
}

footer ul li {
    margin-bottom: 10px;
}

/* Scroll to Top Button */
#scrollTopBtn {
    position: fixed;
    bottom: 30px;
    right: 30px;
    background: linear-gradient(135deg, #FF4B2B, #FF6A00);
    color: #fff;
    border: none;
    padding: 10px 18px;
    border-radius: 50%;
    font-size: 22px;
    cursor: pointer;
    box-shadow: 0 8px 25px rgba(255,75,43,0.5);
    transition: all 0.4s ease, transform 0.3s ease;
    z-index: 999;
    display: none;
    animation: float 2.5s infinite ease-in-out;
}

/* Hover effect */
#scrollTopBtn:hover {
    background: linear-gradient(135deg, #FF6A00, #FF4B2B);
    transform: translateY(-5px) scale(1.1);
    box-shadow: 0 12px 35px rgba(255,75,43,0.6), 0 0 15px rgba(255,106,0,0.6);
}

/* Floating animation */
@keyframes float {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-6px); }
}

/* Responsive */
@media(max-width:768px){
    footer .row {
        text-align: center;
    }
    footer .row > div {
        margin-bottom: 30px;
    }
}
</style>
</head>
<body>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <!-- About -->
            <div class="col-md-3">
                <h5>ECOURSES</h5>
                <p>High-quality online courses for learners worldwide. Learn anytime, anywhere.</p>
            </div>

            <!-- Quick Links -->
            <div class="col-md-2">
                <h5>Quick Links</h5>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="courses">Courses</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>

            <!-- Contact -->
            <div class="col-md-3">
                <h5>Contact Us</h5>
                <p>Email: Arjungaikwad@gmail.com</p>
                <p>Phone: +91 8237319320</p>
                <p>Address: Pune, Maharashtra, India</p>
            </div>

            <!-- Social -->
            <div class="col-md-2">
                <h5>Follow Us</h5>
                <a href="https://facebook.com" target="_blank">Facebook</a><br>
                <a href="https://twitter.com" target="_blank">Twitter</a><br>
                <a href="https://instagram.com" target="_blank">Instagram</a><br>
                <a href="https://linkedin.com" target="_blank">LinkedIn</a>
            </div>

            <!-- Achievements -->
            <div class="col-md-2">
                <h5>Achievements</h5>
                <ul>
                    <li>Best E-Learning Platform 2024</li>
                    <li>10,000+ Students</li>
                    <li>Learners from 20+ Countries</li>
                </ul>
            </div>
        </div>

        <hr class="bg-secondary mt-4">
        <div class="text-center">
            &copy; 2025 ECOURSES. All Rights Reserved.
        </div>
    </div>
</footer>

<!-- Scroll to Top Button -->
<button id="scrollTopBtn">&#8679;</button>

<script>
// Show button on scroll
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    const btn = document.getElementById("scrollTopBtn");
    if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
        btn.style.display = "block";
    } else {
        btn.style.display = "none";
    }
}

// Scroll to top smoothly
document.getElementById("scrollTopBtn").addEventListener("click", function(){
    window.scrollTo({top: 0, behavior: 'smooth'});
});
</script>

</body>
</html>
