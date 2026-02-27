<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>My Shifts</title>

<style>
body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(to right, #4facfe, #00f2fe);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background: white;
    padding: 30px;
    width: 600px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    text-align: center;
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
}

th {
    background-color: #007bff;
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background-color: #f2f2f2;
}

.back-btn {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #343a40;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    transition: 0.3s;
}

.back-btn:hover {
    background-color: #000;
}
</style>

</head>

<body>

<div class="container">

<h2>Your Assigned Shifts</h2>

<c:if test="${empty shifts}">
    <p>No shifts assigned yet.</p>
</c:if>

<c:if test="${not empty shifts}">
<table>
<tr>
    <th>Date</th>
    <th>Start Time</th>
    <th>End Time</th>
</tr>

<c:forEach var="shift" items="${shifts}">
<tr>
    <td>${shift.shiftDate}</td>
    <td>${shift.startTime}</td>
    <td>${shift.endTime}</td>
</tr>
</c:forEach>

</table>
</c:if>

<a href="dashboard" class="back-btn">Back to Dash Board</a>

</div>

</body>
</html>