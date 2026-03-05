<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Update Success</title>

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

/* Success Card */

.box{
text-align:center;
padding:50px;
background:rgba(255,255,255,0.08);
backdrop-filter:blur(15px);
border-radius:25px;
box-shadow:0 0 40px rgba(0,0,0,0.4);
animation:fadeIn 1s ease;
}

/* Icon */

.icon{
font-size:70px;
color:#00ff99;
}

/* Button */

button{
margin-top:25px;
padding:14px 30px;
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

<div class="box">

<div class="icon">✔</div>

<h2>Car Updated Successfully!</h2>

<p>Your car information has been updated.</p>

<button onclick="location.href='dashboard.jsp'">
Go to Dashboard
</button>

</div>

</body>
</html>
