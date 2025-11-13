<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Select Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: radial-gradient(circle at top left, #caf0f8 0%, #90e0ef 25%, #0077b6 70%, #03045e 100%);
            overflow: hidden;
            color: white;
        }

        .glow {
            position: absolute;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(0,180,216,0.3), rgba(0,119,182,0));
            border-radius: 50%;
            animation: float 6s ease-in-out infinite;
            z-index: 0;
        }

        @keyframes float {
            0% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(15deg); }
            100% { transform: translateY(0px) rotate(0deg); }
        }

        .card {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.1);
            padding: 60px 80px;
            border-radius: 20px;
            text-align: center;
            backdrop-filter: blur(12px);
            box-shadow: 0 10px 40px rgba(0,0,0,0.25);
            transition: all 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 12px 50px rgba(0,180,216,0.4);
            transform: translateY(-5px);
        }

        h2 {
            margin-bottom: 40px;
            font-size: 36px;
            color: #e0f7fa;
            text-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }

        .role-btn {
            display: block;
            margin: 15px auto;
            width: 260px;
            padding: 14px;
            background: linear-gradient(135deg, #ffffff, #d9f3ff);
            color: #0077b6;
            border-radius: 12px;
            font-weight: 600;
            font-size: 17px;
            text-decoration: none;
            letter-spacing: 0.4px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.15);
            transition: all 0.3s ease;
        }

        .role-btn:hover {
            background: linear-gradient(135deg, #0077b6, #023e8a);
            color: #ffffff;
            transform: scale(1.06);
            box-shadow: 0 6px 25px rgba(0,119,182,0.4);
        }

        .emoji {
            margin-right: 8px;
            font-size: 18px;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background: rgba(3, 4, 94, 0.95);
            color: #caf0f8;
            text-align: center;
            padding: 14px 10px;
            font-size: 14px;
            border-top: 1px solid rgba(0, 180, 216, 0.3);
            letter-spacing: 0.5px;
            font-family: 'Poppins', sans-serif;
        }

        footer strong {
            color: #00b4d8;
        }

        /* Floating visual shapes */
        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255,255,255,0.08);
            animation: move 10s infinite ease-in-out;
        }

        .circle:nth-child(1) { width: 140px; height: 140px; top: 15%; left: 10%; animation-delay: 0s; }
        .circle:nth-child(2) { width: 100px; height: 100px; bottom: 20%; right: 15%; animation-delay: 2s; }
        .circle:nth-child(3) { width: 200px; height: 200px; bottom: 8%; left: 30%; animation-delay: 4s; }

        @keyframes move {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-25px); }
        }
    </style>
</head>

<body>
    <div class="glow"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>

    <div class="card">
        <h2>Login As</h2>
        <a class="role-btn" href="/patientLogin"><span class="emoji"></span>Patient</a>
        <a class="role-btn" href="/doctorLogin"><span class="emoji"></span>Doctor</a>
        <a class="role-btn" href="/managementLogin"><span class="emoji"></span>Management</a>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
