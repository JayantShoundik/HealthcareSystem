<!DOCTYPE html>
<html>
<head>
    <title>Select Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #0077b6, #00b4d8);
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .card {
            background: rgba(255, 255, 255, 0.1);
            padding: 50px;
            border-radius: 20px;
            text-align: center;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 40px;
            font-size: 35px;
        }

        .role-btn {
            display: block;
            margin: 15px auto;
            width: 260px;
            padding: 14px;
            background: white;
            color: #0077b6;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
            text-decoration: none;
            transition: 0.3s;
        }

        .role-btn:hover {
            background: #023e8a;
            color: white;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Login As</h2>
        <a class="role-btn" href="/patientLogin">👤 Patient</a>
        <a class="role-btn" href="/doctorLogin">🩺 Doctor</a>
        <a class="role-btn" href="/managementLogin">🏢 Management</a>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
