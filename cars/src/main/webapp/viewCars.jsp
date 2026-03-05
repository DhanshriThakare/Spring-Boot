<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>All Cars | AutoVista</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* GLOBAL STYLE */

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

/* Navbar */

.navbar{
padding:18px 60px;
background:rgba(17,24,39,0.95);
}

.logo{
font-size:24px;
font-weight:bold;
color:#8b5cf6;
}

/* Container */

.car-container{
padding:60px;
}

/* Grid */

.car-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:30px;
}

/* Card */

.car-card{
background:rgba(255,255,255,0.08);
padding:25px;
border-radius:18px;
backdrop-filter:blur(10px);
transition:0.3s;
}

.car-card:hover{
transform:translateY(-6px);
}

.price{
margin-top:12px;
background:linear-gradient(45deg,#8b5cf6,#ec4899);
padding:8px 14px;
border-radius:6px;
display:inline-block;
}

/* Footer */

.footer{
text-align:center;
padding:25px;
background:#0f172a;
margin-top:60px;
color:#94a3b8;
}

</style>

</head>

<body>

<div class="navbar">
<div class="logo">🚘 AutoVista Cars</div>
</div>

<div class="car-container">

<h2 style="text-align:center;margin-bottom:40px">
All Available Cars
</h2>

<div class="car-grid">

<c:forEach var="car" items="${cars}">

<div class="car-card">

<h3>${car.brand} ${car.model}</h3>

<p><b>Title:</b> ${car.title}</p>
<p><b>Year:</b> ${car.year}</p>
<p><b>Condition:</b> ${car.car_condition}</p>
<p><b>Fuel:</b> ${car.fuel_type}</p>
<p><b>Transmission:</b> ${car.transmission}</p>
<p><b>Location:</b> ${car.location}</p>

<p style="margin-top:10px">${car.description}</p>

<div class="price">₹ ${car.price}</div>

</div>

</c:forEach>

</div>

</div>

<div class="footer">
© 2026 AutoVista | Smart Car Management System
</div>

</body>
</html>