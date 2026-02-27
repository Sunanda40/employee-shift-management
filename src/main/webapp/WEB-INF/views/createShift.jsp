<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Create Shift</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(to right, #43e97b, #38f9d7);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.card {
    background: white;
    padding: 30px;
    width: 400px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
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
    background: #007bff;
    color: white;
    border: none;
    border-radius: 25px;
    font-weight: bold;
    cursor: pointer;
}

button:hover {
    opacity: 0.9;
}

.back {
    text-align: center;
    margin-top: 10px;
}
</style>

</head>

<body>

	<div class="card">
		<h2>Create Shift</h2>
		
		<form action="saveShift" method="post">
		
		<select name="userId">
		<c:forEach var="emp" items="${employees}">
		<option value="${emp.id}">${emp.name}</option>
		</c:forEach>
		</select>
		
		<input type="date" name="shiftDate" required>
		<input type="time" name="startTime" required>
		<input type="time" name="endTime" required>
		
		<button type="submit">Save Shift</button>
		
		</form>
		
		<div class="back">
		<a href="dashboard">Back to Dash Board</a>
	</div>
	
	</div>

</body>
</html>