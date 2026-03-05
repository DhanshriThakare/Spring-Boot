<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Delete Car</title>

<style>

/* Background */

body{
margin:0;
font-family:Segoe UI;
background:linear-gradient(135deg,#020617,#0f172a,#1e3a8a);
display:flex;
justify-content:center;
align-items:center;
height:100vh;
color:white;
}

/* Container */

.container{
width:400px;
padding:40px;
background:rgba(255,255,255,0.08);
backdrop-filter:blur(15px);
border-radius:20px;
box-shadow:0 0 30px rgba(0,0,0,0.4);
text-align:center;
animation:fadeIn 1s ease;
}

/* Input */

input{
width:100%;
padding:14px;
margin:20px 0;
border:none;
border-radius:10px;
outline:none;
}

/* Button */

button{
width:100%;
padding:14px;
border:none;
border-radius:12px;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
color:white;
font-size:16px;
cursor:pointer;
transition:0.4s;
}

button:hover{
transform:scale(1.05);
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

<h2>🗑 Delete Car</h2>

<form action="deleteCar" method="post">

<input type="number" name="id" placeholder="Enter Car ID" required>

<button type="submit">Delete Car</button>

</form>

</div>

</body>
</html>
