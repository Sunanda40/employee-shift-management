<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(to right, #ff9a9e, #fad0c4);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.card {
    background: white;
    padding: 30px;
    width: 350px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

input, select {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border-radius: 8px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 12px;
    background: #28a745;
    color: white;
    border: none;
    border-radius: 25px;
    font-weight: bold;
}
</style>

</head>
<body>

	<div class="card">
		<h2>Register</h2>
		
		<form action="register" method="post">
		<input type="text" name="name" placeholder="Name" required>
		<input type="email" name="email" placeholder="Email" required>
		<input type="password" name="password" placeholder="Password" required>
		
		<select name="role">
		<option value="ADMIN">ADMIN</option>
		<option value="EMPLOYEE">EMPLOYEE</option>
		</select>
		
		<button type="submit">Register</button>
		</form>
	</div>

</body>
</html>