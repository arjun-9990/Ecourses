<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #f2f2f2;
    margin: 0;
    padding: 0;
}

/* Payment Form Container */
.payment-form {
    background: #fff;
    padding: 40px 50px;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 500px;
    margin: 50px auto;
}

/* Labels and Inputs */
.payment-form label {
    display: block;
    margin: 15px 0 6px;
    font-weight: 600;
    font-size: 14px;
}

.payment-form input[type="text"],
.payment-form input[type="email"],
.payment-form input[type="number"] {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
    transition: all 0.3s ease;
}

.payment-form input:focus {
    border-color: #6a5acd;
    outline: none;
    box-shadow: 0 0 8px rgba(106, 90, 205, 0.3);
}

/* Modern Radio Buttons */
.payment-options {
    display: flex;
    justify-content: space-between;
    margin: 20px 0;
    gap: 10px;
}

/* Hide radio buttons */
.payment-options input[type="radio"] {
    display: none;
}

/* Style labels as toggle buttons */
.payment-options .option-btn {
    flex: 1;
    padding: 12px 15px;
    border-radius: 12px;
    border: 2px solid #6a5acd;
    text-align: center;
    font-weight: 600;
    cursor: pointer;
    background: #fff;
    transition: all 0.3s ease;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.payment-options input[type="radio"]:checked + .option-btn {
    background: #6a5acd;
    color: #fff;
    border-color: #594ac4;
    box-shadow: 0 6px 12px rgba(0,0,0,0.2);
}

.payment-options .option-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(0,0,0,0.15);
}

/* Card and UPI Sections */
#cardDetails, #upiDetails {
    margin-top: 20px;
    background: #fafafa;
    padding: 20px;
    border-radius: 10px;
    border: 1px solid #eee;
}

/* Submit Button */
.payment-form button.btn {
    width: 100%;
    padding: 14px;
    margin-top: 25px;
    border: none;
    border-radius: 10px;
    background: linear-gradient(135deg, #6a5acd, #836fff);
    color: #fff;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s ease;
}

.payment-form button.btn:hover {
    background: linear-gradient(135deg, #594ac4, #6f5ee6);
    transform: translateY(-2px);
}

/* Responsive */
@media (max-width: 600px) {
    .payment-form {
        padding: 20px;
    }
    .payment-options {
        flex-direction: column;
    }
}
</style>

<script>
// Toggle card and UPI sections
function togglePayment(method) {
    const card = document.getElementById('cardDetails');
    const upi = document.getElementById('upiDetails');

    if (method === 'card') {
        card.style.display = 'block';
        upi.style.display = 'none';
    } else {
        card.style.display = 'none';
        upi.style.display = 'block';
    }
}
window.onload = function() {
    // default show card section
    togglePayment('card');
};
</script>

</head>
<body>
<%@ include file="header.jsp" %>

<%
    String email = (String) session.getAttribute("userEmail");
%>

<form action="payment" method="post" class="payment-form">
    <label for="name">Full Name</label>
    <input type="text" id="name" name="customer_name" required>

    <label for="email">Email Address</label>
    <input type="email" id="email" name="user_email" value="<%= email != null ? email : "" %>" required>

    <div class="payment-options">
        <input type="radio" name="payment_method" value="Card" id="payCard" checked onclick="togglePayment('card')">
        <label for="payCard" class="option-btn">Credit/Debit Card</label>

        <input type="radio" name="payment_method" value="UPI" id="payUPI" onclick="togglePayment('upi')">
        <label for="payUPI" class="option-btn">UPI</label>
    </div>

    <!-- Card Section -->
    <div id="cardDetails">
        <label for="cardNumber">Card Number</label>
        <input type="number" id="cardNumber" name="card_number">

        <label for="expiry">Expiry Date</label>
        <input type="text" id="expiry" name="expiry" placeholder="MM/YY">

        <label for="cvv">CVV</label>
        <input type="number" id="cvv" name="cvv">
    </div>

    <!-- UPI Section -->
    <div id="upiDetails">
        <label for="upiId">Enter UPI ID</label>
        <input type="text" id="upiId" name="upi_id" placeholder="example@upi">
    </div>

    <button type="submit" class="btn">Confirm & Pay</button>
</form>

<%@ include file="footer.jsp" %>
</body>
</html>
