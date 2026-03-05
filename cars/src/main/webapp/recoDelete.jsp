<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Redirecting...</title>

<style>

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

.box{
text-align:center;
padding:40px;
background:rgba(255,255,255,0.08);
backdrop-filter:blur(15px);
border-radius:25px;
box-shadow:0 0 40px rgba(0,0,0,0.4);
animation:fadeIn 1s ease;
}

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

<!-- Auto Redirect Script -->

<script>
setTimeout(function(){
    window.location.href = "dashboard.jsp";
}, 3000);
</script>

</head>

<body>

<div class="box">
<h2>✔ Record Deleted Successfully</h2>
<p>Redirecting to dashboard...</p>
</div>

</body>
</html>
