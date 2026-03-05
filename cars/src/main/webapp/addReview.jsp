<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Add Review | AutoNova</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI,sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#0f172a,#1e1b4b);
color:white;
}

/* ===== FORM BOX ===== */

.review-box{
width:420px;
padding:40px;
background:rgba(255,255,255,0.08);
backdrop-filter:blur(12px);
border-radius:18px;
box-shadow:0 20px 50px rgba(0,0,0,0.4);
}

/* Title */

.review-box h2{
text-align:center;
margin-bottom:25px;
color:#8b5cf6;
}

/* Input Group */

.input-group{
margin-bottom:20px;
}

.input-group label{
display:block;
margin-bottom:6px;
font-size:14px;
color:#cbd5e1;
}

.input-group input,
.input-group textarea,
.input-group select{
width:100%;
padding:12px;
border-radius:8px;
border:none;
outline:none;
background:#1f2937;
color:white;
}

/* Button */

.btn{
width:100%;
padding:13px;
border:none;
border-radius:10px;
background:linear-gradient(45deg,#8b5cf6,#ec4899);
color:white;
font-weight:bold;
cursor:pointer;
transition:0.3s;
}

.btn:hover{
transform:scale(1.05);
}

/* Back Link */

.back-link{
text-align:center;
margin-top:18px;
font-size:14px;
}

.back-link a{
color:#8b5cf6;
text-decoration:none;
}

</style>

</head>

<body>

<div class="review-box">

<h2>⭐ Add Your Review</h2>

<form action="addReviewServlet" method="post">

<div class="input-group">
<label>Username</label>
<input type="text" name="username" required>
</div>

<div class="input-group">
<label>Rating</label>
<select name="rating" required>
<option value="5">⭐⭐⭐⭐⭐ (Excellent)</option>
<option value="4">⭐⭐⭐⭐ (Good)</option>
<option value="3">⭐⭐⭐ (Average)</option>
<option value="2">⭐⭐ (Poor)</option>
<option value="1">⭐ (Very Poor)</option>
</select>
</div>

<div class="input-group">
<label>Review Message</label>
<textarea name="review" rows="4" required></textarea>
</div>

<button type="submit" class="btn">Submit Review</button>

</form>

<div class="back-link">
<a href="reviews.jsp">← Back to Reviews</a>
</div>

</div>

</body>
</html>
