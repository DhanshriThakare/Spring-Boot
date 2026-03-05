<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>AutoNova Dashboard</title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

<style>

/* Reset */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI;
}

/* Body */

body{
background:linear-gradient(135deg,#020617,#1e3a8a);
color:white;
display:flex;
min-height:100vh;
}

/* Sidebar */

.sidebar{
width:250px;
background:rgba(255,255,255,0.06);
backdrop-filter:blur(15px);
padding:30px 20px;
position:fixed;
height:100%;
}

.logo{
font-size:24px;
font-weight:bold;
margin-bottom:40px;
}

/* Menu */

.menu a{
display:block;
color:white;
text-decoration:none;
padding:14px;
margin:12px 0;
border-radius:12px;
transition:0.3s;
}

.menu a:hover{
background:rgba(255,255,255,0.2);
transform:translateX(8px);
}

/* Logout */

.logout{
margin-top:50px;
}

.logout a{
color:white;
text-decoration:none;
padding:12px;
display:block;
border-radius:10px;
}

.logout a:hover{
background:rgba(255,255,255,0.2);
}

/* Main */

.main{
margin-left:260px;
padding:50px;
width:100%;
animation:fadeIn 1s ease;
}

/* Header */

.header{
font-size:32px;
margin-bottom:40px;
}

/* Cards */

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
gap:30px;
}

.card{
background:rgba(255,255,255,0.08);
backdrop-filter:blur(12px);
padding:35px;
border-radius:20px;
transition:0.4s;
cursor:pointer;
text-align:center;
}

.card:hover{
transform:translateY(-12px) scale(1.05);
background:rgba(255,255,255,0.18);
}

.card i{
font-size:45px;
margin-bottom:20px;
}

/* Animation */

@keyframes fadeIn{
from{opacity:0; transform:translateY(30px);}
to{opacity:1; transform:translateY(0);}
}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

<div class="logo">
🚘 AutoNova
</div>

<div class="menu">

<a href="dashboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>

<a href="addNew.jsp"><i class="fa fa-plus"></i> Add New Car</a>

<a href="modify.jsp"><i class="fa fa-edit"></i> Modify Car</a>

<a href="delete.jsp"><i class="fa fa-trash"></i> Delete Car</a>

<a href="view"><i class="fa fa-car"></i> View Cars</a>

</div>

<div class="logout">
<a href="index.jsp">🚪 Logout</a>
</div>

</div>

<!-- Main Content -->

<div class="main">

<div class="header">
Welcome Admin 👋
</div>

<div class="grid">

<div class="card" onclick="location.href='addNew.jsp'">
<i class="fa fa-plus"></i>
<h3>Add New Car</h3>
</div>

<div class="card" onclick="location.href='modify.jsp'">
<i class="fa fa-edit"></i>
<h3>Modify Car</h3>
</div>

<div class="card" onclick="location.href='delete.jsp'">
<i class="fa fa-trash"></i>
<h3>Delete Car</h3>
</div>

<div class="card" onclick="location.href='view'">
<i class="fa fa-car"></i>
<h3>View Cars</h3>
</div>

</div>

</div>

</body>
</html>
