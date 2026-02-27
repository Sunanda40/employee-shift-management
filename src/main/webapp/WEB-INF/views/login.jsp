<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
body{font-family:Arial;background:#eef2f3;}
.box{width:300px;margin:auto;margin-top:120px;background:white;padding:20px;border-radius:10px;}
input,button{width:100%;padding:8px;margin:5px 0;}
button{background:#007bff;color:white;border:none;}
</style>
</head>
<body>
<div class="box">
<h2>Login</h2>
<form action="login" method="post">
<input type="email" name="email" placeholder="Email" required/>
<input type="password" name="password" placeholder="Password" required/>
<button type="submit">Login</button>
</form>
<a href="register">Register</a>
</div>
</body>
</html>