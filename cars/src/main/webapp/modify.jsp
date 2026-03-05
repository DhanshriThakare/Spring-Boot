<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Update Car</title>

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
width:450px;
padding:40px;
background:rgba(255,255,255,0.07);
backdrop-filter:blur(15px);
border-radius:25px;
box-shadow:0 0 40px rgba(0,0,0,0.4);
animation:fadeIn 1s ease;
text-align:center;
}

/* Title */

h2{
margin-bottom:30px;
}

/* Input */

input{
width:100%;
padding:14px;
margin:18px 0;
border:none;
border-radius:10px;
outline:none;
font-size:15px;
}

/* Button */

button{
width:100%;
padding:14px;
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

<h2>✏ Update Car</h2>

<!-- Step 1 → Enter Car ID -->

<form action="editCar" method="post">

<input type="number" name="id" placeholder="Enter Car ID" required>

<button type="submit">Search Car</button>

</form>

</div>

</body>
</html>
