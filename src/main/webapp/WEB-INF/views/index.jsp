<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Healthcare Management System</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
            background: radial-gradient(circle at top left, #caf0f8 0%, #90e0ef 25%, #0077b6 70%, #03045e 100%);
            overflow: hidden;
            color: #fff;
        }

        /* Glowing gradient animation behind */
        .background-glow {
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
            50% { transform: translateY(-20px) rotate(20deg); }
            100% { transform: translateY(0px) rotate(0deg); }
        }

        .container {
            z-index: 2;
            text-align: center;
            padding: 70px 100px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(15px);
            border-radius: 20px;
            box-shadow: 0 0 40px rgba(0,0,0,0.2);
            transition: all 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.03);
            box-shadow: 0 0 50px rgba(0,180,216,0.3);
        }

        h1 {
            font-size: 48px;
            font-weight: 700;
            margin-bottom: 15px;
            color: #e0f7fa;
        }

        p {
            font-size: 18px;
            color: #e0e0e0;
            margin-bottom: 40px;
            opacity: 0.85;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background: linear-gradient(135deg, #00b4d8, #0096c7);
            color: white;
            padding: 14px 34px;
            border-radius: 50px;
            font-weight: 600;
            letter-spacing: 0.5px;
            box-shadow: 0 4px 15px rgba(0, 150, 199, 0.4);
            transition: all 0.3s ease;
        }

        a:hover {
            background: linear-gradient(135deg, #0077b6, #023e8a);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0, 119, 182, 0.5);
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
        }

        footer strong {
            color: #00b4d8;
        }

        /* Floating circles for visual motion */
        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.08);
            animation: move 10s infinite ease-in-out;
        }

        .circle:nth-child(1) { width: 150px; height: 150px; top: 15%; left: 10%; animation-delay: 0s; }
        .circle:nth-child(2) { width: 100px; height: 100px; bottom: 20%; right: 15%; animation-delay: 2s; }
        .circle:nth-child(3) { width: 200px; height: 200px; bottom: 10%; left: 30%; animation-delay: 4s; }

        @keyframes move {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-25px); }
        }
    </style>
</head>

<body>
    <div class="background-glow"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>

    <div class="container">
        <h1>Healthcare Management System</h1>
        <p>Empowering doctors, patients, and staff with an intelligent digital healthcare experience.</p>
        <a href="/getStarted">Get Started</a>
    </div>

    <footer>
        <span>Developed with  by <strong>Jayant Shoundik</strong></span>
    </footer>
</body>
</html>
