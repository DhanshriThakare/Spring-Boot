<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>AutoVista - Register</title>

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI', sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background: linear-gradient(135deg,#0f2027,#203a43,#2c5364);
overflow:hidden;
}

/* Floating Background Circles */

body::before,
body::after{
content:'';
position:absolute;
width:300px;
height:300px;
background:rgba(255,255,255,0.05);
border-radius:50%;
animation: float 6s ease-in-out infinite alternate;
}

body::before{
top:10%;
left:15%;
}

body::after{
bottom:10%;
right:15%;
animation-delay:3s;
}

@keyframes float{
from{ transform:translateY(0); }
to{ transform:translateY(30px); }
}

/* ===== REGISTER BOX ===== */

.register-box{
width:380px;
padding:50px 40px;
background:rgba(255,255,255,0.08);
backdrop-filter:blur(15px);
border-radius:20px;
box-shadow:0 25px 50px rgba(0,0,0,0.5);
text-align:center;
color:white;
animation: fadeIn 1s ease forwards;
}

@keyframes fadeIn{
from{ opacity:0; transform:translateY(20px); }
to{ opacity:1; transform:translateY(0); }
}

.brand{
font-size:28px;
font-weight:bold;
margin-bottom:10px;
letter-spacing:1px;
}

.msg{
font-size:14px;
opacity:0.8;
margin-bottom:25px;
}

/* ===== INPUT ===== */

.input-group{
position:relative;
margin:25px 0;
}

.input-group input{
width:100%;
padding:12px 10px;
background:transparent;
border:none;
border-bottom:2px solid rgba(255,255,255,0.5);
outline:none;
color:white;
font-size:14px;
}

.input-group label{
position:absolute;
left:10px;
top:12px;
color:rgba(255,255,255,0.7);
font-size:14px;
pointer-events:none;
transition:0.3s;
}

/* Floating label effect */

.input-group input:focus + label,
.input-group input:valid + label{
top:-10px;
font-size:12px;
color:#00c6ff;
}

/* ===== BUTTON ===== */

.register-btn{
width:100%;
padding:12px;
margin-top:20px;
border:none;
border-radius:30px;
background:linear-gradient(45deg,#00c6ff,#0072ff);
color:white;
font-weight:bold;
cursor:pointer;
transition:0.4s;
}

.register-btn:hover{
transform:scale(1.05);
box-shadow:0 0 20px rgba(0,198,255,0.6);
}

/* Footer Link */

.footer-text{
margin-top:20px;
font-size:13px;
opacity:0.7;
}

.footer-text a{
color:#00c6ff;
text-decoration:none;
}

</style>

</head>

<body>

<div class="register-box">

<div class="brand">🚘 AutoVista</div>

<div class="msg">
Please create your account to continue.
</div>

<form action="registerServlet" method="post">

<div class="input-group">
<input type="text" name="username" required>
<label>Username</label>
</div>

<div class="input-group">
<input type="password" name="password" required>
<label>Password</label>
</div>

<input type="submit" value="Register" class="register-btn">

</form>

<div class="footer-text">
Already have account? <a href="index.jsp">Login here</a>
</div>

</div>

</body>
</html>
