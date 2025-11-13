<!DOCTYPE html>
<html>
<head>
    <title>Patient Login</title>
    <style>
        body {
            margin: 0;
            background: linear-gradient(135deg, #00b4d8, #0077b6);
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .login-box {
            background: rgba(255,255,255,0.1);
            padding: 50px;
            border-radius: 15px;
            text-align: center;
            width: 380px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        h2 {
            margin-bottom: 30px;
            font-size: 28px;
        }

        input {
            width: 85%;
            padding: 12px;
            margin: 12px 0;
            border-radius: 8px;
            border: none;
            font-size: 15px;
        }

        input:focus {
            outline: 2px solid #00b4d8;
        }

        button {
            width: 90%;
            background: white;
            color: #0077b6;
            border: none;
            padding: 14px;
            font-weight: bold;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #023e8a;
            color: white;
        }

        a {
            display: block;
            margin-top: 15px;
            color: white;
            opacity: 0.8;
            text-decoration: none;
        }

        a:hover {
            opacity: 1;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>doctorLogin</h2>
        <form action="/doctorLogin" method="post">
    <input type="email" name="email" placeholder="Doctor Email" required><br><br>
    <input type="password" name="password" placeholder="Password" required><br><br>

    <button type="submit">Login</button>

    <c:if test="${not empty error}">
        <p style="color:red;">${error}</p>
    </c:if>
</form>
        <a href="loginSelection.jsp">← Back</a>
        <!-- Done -->
    </div>
 <%@ include file="footer.jsp" %>

</body>
</html>
