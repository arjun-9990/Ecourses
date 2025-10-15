<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ECOURSES</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
   <style>
        /* Navbar professional styling */
        .navbar {
            background-color: #1a1a1a; /* dark slate blue */
            padding: 0.8rem 0;
            box-shadow: 0 3px 15px rgba(0,0,0,0.1);
        }

        .navbar-brand {
            font-weight: 800;
            font-size: 1.6rem;
            color: #10B981 !important; 
        }

        .navbar-nav .nav-link {
            color: #ff6a00;
            font-weight: 500;
            margin-right: 15px;
            transition: color 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            color: white;
        }

        /* Buttons consistent height and auto width */
        .navbar .btn {
            height: 38px;
            width: auto;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 15px;
            border-radius: 5px;
            font-weight: 500;
        }

        .btn-outline-success {
            border-color: #10B981;
            color: #10B981;
        }

        .btn-outline-success:hover {
            background-color: #10B981;
            color: #fff;
        }

        .btn-outline-dark {
            border-color: #fff;
            color: #fff;
        }

        .btn-outline-dark:hover {
            background-color: #10B981;
            border-color: #10B981;
            color: #fff;
        }

        .btn-primary {
            background-color: #10B981;
            border-color: #10B981;
        }

        .btn-primary:hover {
            background-color: #34D399;
            border-color: #34D399;
        }

        /* Search input height */
        .form-control {
            height: 38px;
        }

        /* Cart badge */
        .badge {
            font-size: 0.7rem;
            font-weight: 600;
        }

        /* Dropdown */
        .dropdown-menu {
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        .dropdown-item:hover {
            background-color: #10B981;
            color: #fff;
        }

        /* Mobile toggler */
        .navbar-toggler {
            border-color: #fff;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba%2816,185,129,1%29' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <!-- Logo -->
        <a class="navbar-brand" href="index.jsp">ECOURSES</a>

        <!-- Mobile toggle button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar items -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                <li class="nav-item"><a class="nav-link" href="courses">Courses</a></li>
                <li class="nav-item"><a class="nav-link" href="teachers.jsp">Teachers</a></li>
                <li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
            </ul>

            <!-- Search form 
            <form action="search" method="get" class="d-flex me-3">
                <input type="text" name="q" class="form-control me-2" placeholder="Search courses...">
                <button type="submit" class="btn btn-outline-success">Search</button>
            </form>
			-->
            <!-- Cart -->
            <a href="cart" class="btn btn-outline-warning position-relative me-2">
                Cart
                <c:if test="${not empty sessionScope.cart}">
                    <span class="badge bg-danger position-absolute top-0 start-100 translate-middle">
                        ${fn:length(sessionScope.cart)}
                    </span>
                </c:if>
            </a>

         <c:choose>
    <c:when test="${not empty sessionScope.userName}">
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                Welcome, ${sessionScope.userName}
            </button>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                <li><a class="dropdown-item" href="profile">My Profile</a></li>
                <li><a class="dropdown-item" href="myorders">My Orders</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </c:when>
    <c:otherwise>
        <a href="login.jsp" class="btn btn-outline-primary me-2">Login</a>
        <a href="signup.jsp" class="btn btn-outline-danger">Sign Up</a>
    </c:otherwise>
</c:choose>

        </div>
    </div>
</nav>
</body>
</html>
