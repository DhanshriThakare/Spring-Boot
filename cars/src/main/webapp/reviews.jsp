<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Customer Reviews | AutoNova</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI,sans-serif;
}

body{
background:linear-gradient(135deg,#0f172a,#1e1b4b);
color:white;
}

/* ===== NAVBAR ===== */

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
padding:18px 60px;
background:rgba(17,24,39,0.95);
backdrop-filter:blur(10px);
}

.logo{
font-size:24px;
font-weight:bold;
color:#8b5cf6;
}

.nav-links a{
margin:0 15px;
text-decoration:none;
color:#cbd5e1;
transition:0.3s;
}

.nav-links a:hover{
color:#8b5cf6;
}

/* ===== REVIEW SECTION ===== */

.review-section{
padding:70px 60px;
}

.review-title{
text-align:center;
font-size:32px;
margin-bottom:50px;
}

/* Add Review Button */

.add-review-btn{
display:block;
width:220px;
margin:0 auto 50px auto;
text-align:center;
padding:14px;
border-radius:10px;
background:linear-gradient(45deg,#8b5cf6,#ec4899);
color:white;
text-decoration:none;
font-weight:bold;
transition:0.3s;
}

.add-review-btn:hover{
transform:scale(1.05);
}

/* Review Grid */

.review-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:30px;
}

/* Review Card */

.review-card{
background:rgba(255,255,255,0.08);
padding:25px;
border-radius:18px;
backdrop-filter:blur(12px);
box-shadow:0 10px 30px rgba(0,0,0,0.3);
transition:0.3s;
}

.review-card:hover{
transform:translateY(-6px);
}

/* Footer */

.footer{
text-align:center;
padding:25px;
background:#0f172a;
color:#94a3b8;
margin-top:60px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">AutoNova</div>

<div class="nav-links">
<a href="home.jsp">Home</a>
<a href="viewCars.jsp">Cars</a>
<a href="reviews.jsp">Reviews</a>
<a href="aiAssistant.jsp">AI Assistant</a>
</div>

</div>

<!-- REVIEW SECTION -->

<div class="review-section">

<h2 class="review-title">⭐ Customer Reviews</h2>

<a href="addReview.jsp" class="add-review-btn">
➕ Add Your Review
</a>

<div class="review-grid">

<div class="review-card">
<h3>Rahul Sharma</h3>
<p>⭐⭐⭐⭐⭐</p>
<p>Excellent platform. Very easy to search cars.</p>
</div>

<div class="review-card">
<h3>Aditi Verma</h3>
<p>⭐⭐⭐⭐</p>
<p>Good interface and smooth experience.</p>
</div>

<div class="review-card">
<h3>Vikas Patel</h3>
<p>⭐⭐⭐⭐⭐</p>
<p>Best car management system I have used.</p>
</div>

</div>
</div>

<!-- FOOTER -->

<div class="footer">
© 2026 AutoNova | Smart Car Management System
</div>

</body>
</html>
