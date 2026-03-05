<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Edit Car</title>

<style>

/* Background */

body{
margin:0;
font-family:Segoe UI;
background:linear-gradient(135deg,#020617,#0f172a,#1e3a8a);
display:flex;
justify-content:center;
align-items:center;
min-height:100vh;
color:white;
}

/* Card Container */

.container{
width:600px;
padding:40px;
background:rgba(255,255,255,0.07);
backdrop-filter:blur(15px);
border-radius:30px;
box-shadow:0 0 40px rgba(0,0,0,0.4);
animation:fadeIn 1s ease;
}

/* Title */

h2{
text-align:center;
margin-bottom:30px;
}

/* Input Style */

input,textarea{
width:100%;
padding:12px;
margin:8px 0;
border:none;
border-radius:8px;
outline:none;
font-size:14px;
}

/* Button */

button{
width:100%;
padding:15px;
margin-top:20px;
border:none;
border-radius:12px;
background:linear-gradient(45deg,#00c6ff,#0072ff);
color:white;
font-size:16px;
cursor:pointer;
transition:0.4s;
}

button:hover{
transform:scale(1.05);
box-shadow:0 0 20px rgba(0,198,255,0.6);
}

/* Animation */

@keyframes fadeIn{
from{
opacity:0;
transform:translateY(30px);
}
to{
opacity:1;
transform:translateY(0);
}
}

</style>

</head>

<body>

<div class="container">

<h2>✏ Edit Car Details</h2>

<form action="updateCar" method="post">

<!-- Hidden ID -->

<input type="hidden" name="id" value="${car.id}">

Title <input type="text" name="title" value="${car.title}" required>

Brand <input type="text" name="brand" value="${car.brand}" required>

Model <input type="text" name="model" value="${car.model}" required>

Year <input type="number" name="year" value="${car.year}" required>

Price <input type="number" step="0.01" name="price" value="${car.price}" required>

Mileage <input type="text" name="mileage" value="${car.mileage}" required>

Fuel Type <input type="text" name="fuel_type" value="${car.fuel_type}" required>

Transmission <input type="text" name="transmission" value="${car.transmission}" required>

Engine Size <input type="text" name="engine_size" value="${car.engine_size}" required>

Color <input type="text" name="color" value="${car.color}" required>

Car Condition <input type="text" name="car_condition" value="${car.car_condition}" required>

Description

<textarea name="description">${car.description}</textarea>

Seller Name <input type="text" name="seller_name" value="${car.seller_name}" required>

Seller Phone <input type="text" name="seller_phone" value="${car.seller_phone}" required>

Location <input type="text" name="location" value="${car.location}" required>

<button type="submit">Update Car</button>

</form>

</div>

</body>
</html>
