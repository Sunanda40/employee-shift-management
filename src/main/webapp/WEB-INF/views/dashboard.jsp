<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Dash Board</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(to right, #4facfe, #00f2fe);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.card {
    background: white;
    padding: 40px;
    width: 450px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    text-align: center;
}

h2 {
    margin-bottom: 30px;
}

.btn {
    display: block;
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
    transition: 0.3s;
}

.create { background: #28a745; color: white; }
.view { background: #007bff; color: white; }
.logout { background: #dc3545; color: white; }

.btn:hover {
    opacity: 0.85;
}
</style>
</head>

<body>

<div class="card">
    <h2>Welcome ${sessionScope.user.name}</h2>

    <a href="createShift" class="btn create">Create Shift</a>
    <a href="viewShifts" class="btn view">View My Shifts</a>
    <a href="logout" class="btn logout">Logout</a>
</div>

</body>
</html>