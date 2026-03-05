<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Home | AutoNova</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- GSAP Animation CDN -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>

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
font-size:15px;
}

.nav-links a:hover{
color:#8b5cf6;
}

.btn-login{
background:linear-gradient(45deg,#8b5cf6,#ec4899);
padding:8px 18px;
border-radius:6px;
text-decoration:none;
color:white;
}

/* ===== HERO ===== */

.hero{
display:flex;
justify-content:center;
align-items:center;
text-align:center;
padding:120px 40px;
}

.hero-text{
max-width:600px;
}

.hero-text h1{
font-size:55px;
margin-bottom:20px;
background:linear-gradient(45deg,#8b5cf6,#ec4899);
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
}

.hero-text p{
color:#cbd5e1;
line-height:1.7;
margin-bottom:30px;
}

.btn-primary{
background:linear-gradient(45deg,#8b5cf6,#ec4899);
padding:14px 30px;
border-radius:8px;
text-decoration:none;
color:white;
font-weight:bold;
display:inline-block;
}

/* ===== FEATURE CARDS ===== */

.cars-section{
background:#f8fafc;
padding:70px 60px;
color:black;
}

.cars-title{
text-align:center;
font-size:30px;
margin-bottom:50px;
font-weight:bold;
color:#1e293b;
}

.cars-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:30px;
}

.car-card{
background:white;
padding:25px;
border-radius:18px;
text-align:center;
box-shadow:0 10px 30px rgba(0,0,0,0.08);
opacity:0;
transform:translateY(40px);
}

.price{
margin-top:15px;
background:linear-gradient(45deg,#8b5cf6,#ec4899);
color:white;
padding:8px 16px;
border-radius:6px;
display:inline-block;
}

/* ===== FOOTER ===== */

.footer{
text-align:center;
padding:25px;
background:#0f172a;
color:#94a3b8;
}

/* ===== MOBILE ===== */

@media(max-width:900px){
.hero{
padding:80px 25px;
}
.hero-text h1{
font-size:40px;
}
}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">
<div class="logo">AutoNova</div>

<div class="nav-links">
<a href="home.jsp">Home</a>
<a href="view">Cars</a>
<a href="reviews.jsp">Reviews</a>
<a href="admin">Admin</a>
</div>

<a href="login.jsp" class="btn-login">Login</a>

</div>

<!-- HERO -->

<div class="hero">
<div class="hero-text">
<h1>Smart Car Management</h1>
<p>
Welcome to AutoNova — modern smart car platform.
Explore cars, manage listings and read trusted reviews.
Simple. Fast. Reliable.
</p>

<a href="view" class="btn-primary">Explore Platform</a>

</div>
</div>

<!-- FEATURE SECTION -->

<div class="cars-section">
<div class="cars-title">Featured Cars</div>

<div class="cars-grid">

<div class="car-card">
<h3>Premium Sport Collection</h3>
<p>Discover high performance luxury cars.</p>
<div class="price">Starting ₹50 Lakh+</div>
</div>

<div class="car-card">
<h3>Luxury Sedan Series</h3>
<p>Comfort + technology combined.</p>
<div class="price">Starting ₹40 Lakh+</div>
</div>

<div class="car-card">
<h3>Super Performance Models</h3>
<p>Track level engineering power.</p>
<div class="price">Starting ₹80 Lakh+</div>
</div>

</div>
</div>

<!-- FOOTER -->

<div class="footer">
© 2026 AutoNova | Smart Car Management System
</div>

<!-- ANIMATION SCRIPT -->

<script>

/* Hero Animation */
gsap.from(".hero-text h1",{
duration:1,
y:-60,
opacity:0,
ease:"power3.out"
});

gsap.from(".hero-text p",{
duration:1.2,
y:40,
opacity:0,
delay:0.3
});

gsap.from(".btn-primary",{
duration:1,
scale:0.7,
opacity:0,
delay:0.6
});

/* Card Animation */
gsap.to(".car-card",{
duration:1,
opacity:1,
y:0,
stagger:0.25,
ease:"power2.out",
delay:0.8
});

</script>

</body>
</html>
