<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Add New Car</title>

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

/* Form Card */

.form-box{
width:600px;
padding:40px;
background:rgba(255,255,255,0.07);
backdrop-filter:blur(15px);
border-radius:30px;
box-shadow:0 0 40px rgba(0,0,0,0.5);
animation:fadeIn 1s ease;
}

/* Title */

h2{
text-align:center;
margin-bottom:30px;
letter-spacing:1px;
}

/* Input Group */

.input-box{
position:relative;
margin:18px 0;
}

.input-box input,
.input-box textarea{
width:100%;
padding:14px;
background:transparent;
border:none;
border-bottom:2px solid rgba(255,255,255,0.5);
outline:none;
color:white;
font-size:14px;
}

/* Floating Label */

.input-box label{
position:absolute;
left:0;
top:14px;
color:rgba(255,255,255,0.6);
transition:0.3s;
pointer-events:none;
}

/* Focus Animation */

.input-box input:focus + label,
.input-box input:valid + label,
.input-box textarea:focus + label{
top:-10px;
font-size:12px;
color:#00c6ff;
}

/* Button */

button{
width:100%;
padding:15px;
margin-top:25px;
border:none;
border-radius:15px;
background:linear-gradient(45deg,#00c6ff,#0072ff);
color:white;
font-size:16px;
cursor:pointer;
transition:0.4s;
}

button:hover{
transform:scale(1.05);
box-shadow:0 0 25px rgba(0,198,255,0.6);
}

/* Animation */

@keyframes fadeIn{
from{
opacity:0;
transform:translateY(40px);
}
to{
opacity:1;
transform:translateY(0);
}
}

</style>

</head>

<body>

<div class="form-box">

<h2>🚘 Add New Car</h2>

<form action="saveCar" method="post">

<div class="input-box">
<input type="text" name="title" required>
<label>Car Title</label>
</div>

<div class="input-box">
<input type="text" name="brand" required>
<label>Brand</label>
</div>

<div class="input-box">
<input type="text" name="model" required>
<label>Model</label>
</div>

<div class="input-box">
<input type="number" name="year" required>
<label>Year</label>
</div>

<div class="input-box">
<input type="number" step="0.01" name="price" required>
<label>Price</label>
</div>

<div class="input-box">
<input type="text" name="mileage" required>
<label>Mileage</label>
</div>

<div class="input-box">
<input type="text" name="fuel_type" required>
<label>Fuel Type</label>
</div>

<div class="input-box">
<input type="text" name="transmission" required>
<label>Transmission</label>
</div>

<div class="input-box">
<input type="text" name="engine_size" required>
<label>Engine Size</label>
</div>

<div class="input-box">
<input type="text" name="color" required>
<label>Color</label>
</div>

<div class="input-box">
<input type="text" name="car_condition" required>
<label>Car Condition</label>
</div>

<div class="input-box">
<textarea name="description" required></textarea>
<label>Description</label>
</div>

<div class="input-box">
<input type="text" name="seller_name" required>
<label>Seller Name</label>
</div>

<div class="input-box">
<input type="text" name="seller_phone" required>
<label>Seller Phone</label>
</div>

<div class="input-box">
<input type="text" name="location" required>
<label>Location</label>
</div>

<button type="submit">🚀 Save Car</button>

</form>

</div>

</body>
</html>
