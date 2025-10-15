<%@ page import="java.util.*, model.Course" %>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        /* General Page Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f0f2f5, #e8eaf6);
            color: #333;
        }

        .cart-page {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
        }

        /* Table Styling */
        .cart-page table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }

        .cart-page th, 
        .cart-page td {
            padding: 15px 20px;
            text-align: center;
        }

        .cart-page th {
            background: #6a1b9a;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .cart-page tr:nth-child(even) {
            background: #f9f9f9;
        }

        .cart-page tr:hover {
            background: #f1f1f1;
        }

        .cart-page .remove-link {
            text-decoration: none;
            color: #6a1b9a;
            font-weight: bold;
            transition: color 0.3s;
        }

        .cart-page .remove-link:hover {
            color: #4a148c;
        }

        .cart-page .total-row {
            font-weight: bold;
            background: #f3e5f5;
            font-size: 18px;
        }
    

        /* Empty Cart Message */
        .cart-page p {
            text-align: center;
            font-size: 18px;
            color: #555;
            margin-top: 40px;
        }

        .cart-page .container {
            text-align: center;
            margin-top: 30px;
        }

        /* Responsive */
        @media(max-width: 768px){
            .cart-page {
                padding: 10px;
                margin: 30px auto;
            }
            .cart-page table, .cart-page th, .cart-page td {
                font-size: 14px;
                padding: 10px 12px;
            }
            .cart-page .cart-btn {
                margin: 10px 5px;
                padding: 10px 18px;
                font-size: 14px;
            }
        }
        
        .cart-btn {
	display: inline-block;
	background: linear-gradient(135deg, #4a148c, #6a1b9a);
	color: #fff;
	font-weight: 600;
	padding: 12px 28px;
	border-radius: 10px;
	text-decoration: none;
	font-size: 16px;
	transition: all 0.3s ease;
	box-shadow: 0 5px 15px rgba(74, 20, 140, 0.3);
	position: relative;
	overflow: hidden;
}

.cart-btn::after {
	content: '';
	position: absolute;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100%;
	background: rgba(255, 255, 255, 0.2);
	transform: skewX(-20deg);
	transition: all 0.5s ease;
}

.cart-btn:hover {
	transform: translateY(-3px) scale(1.05);
	box-shadow: 0 8px 20px rgba(74, 20, 140, 0.4);
}

.cart-btn:hover::after {
	left: 100%;
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

    </style>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="cart-page">
    <h2 class="fw-bold mb-5">Your Cart</h2>
    <%
        List<Course> cart = (List<Course>) request.getAttribute("cartItems");
        if(cart != null && !cart.isEmpty()) {
            double total = 0;
    %>
    <table>
        <tr><th>ID</th><th>Name</th><th>Price</th><th>Action</th></tr>
        <%
            for(Course c : cart) {
                total += c.getPrice();
        %>
        <tr>
          <td><%=c.getId()%></td>
          <td><%=c.getName()%></td>
          <td>$<%=c.getPrice()%></td>
          <td><a href="cart?action=remove&id=<%=c.getId()%>" class="remove-link">Remove</a></td>
        </tr>
        <% } %>
        <tr class="total-row">
            <td colspan="2">Total</td>
            <td colspan="2">$<%=total%></td>
        </tr>
    </table>
    <div class="container">
        <%
            Object userId = session.getAttribute("userId");
            if(userId == null) {
        %>
            <a href="login.jsp?msg=Please+log+in+first" class="cart-btn">Proceed to Checkout</a>
        <%
            } else {
        %>
            <a href="payment" class="cart-btn">Proceed to Checkout</a>
        <%
            }
        %>
        <a href="courses" class="cart-btn">Back to Courses</a>
    </div>
    <% } else { %>
        <p>Your cart is empty.</p>
        <div class="container">
            <a href="courses" class="cart-btn">Back to Courses</a>
        </div>
    <% } %>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
