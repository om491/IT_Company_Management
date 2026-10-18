<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Management System</title>

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            font-family: 'Poppins', sans-serif;

            display: flex;
            justify-content: center;
            align-items: center;

            background:
                radial-gradient(circle at top left,
                rgba(37, 99, 235, 0.18),
                transparent 35%),

                radial-gradient(circle at bottom right,
                rgba(30, 64, 175, 0.15),
                transparent 35%),

                #f4f7fb;

            overflow: hidden;
        }

        /* Background circles */

        body::before {
            content: "";
            position: absolute;

            width: 400px;
            height: 400px;

            border-radius: 50%;

            background: rgba(37, 99, 235, 0.05);

            top: -180px;
            left: -150px;
        }

        body::after {
            content: "";
            position: absolute;

            width: 450px;
            height: 450px;

            border-radius: 50%;

            background: rgba(30, 64, 175, 0.05);

            bottom: -230px;
            right: -180px;
        }

        /* Main Card */

        .container {
            width: 90%;
            max-width: 650px;

            background: #ffffff;

            padding: 55px 50px;

            border-radius: 24px;

            text-align: center;

            position: relative;
            z-index: 2;

            box-shadow:
                0 25px 60px rgba(15, 23, 42, 0.12);

            border: 1px solid #eef1f6;
        }

        /* Icon */

        .icon {
            width: 75px;
            height: 75px;

            margin: 0 auto 25px;

            border-radius: 20px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: linear-gradient(
                135deg,
                #2563eb,
                #1d4ed8
            );

            color: #ffffff;

            font-size: 30px;

            box-shadow:
                0 10px 25px rgba(37, 99, 235, 0.25);
        }

        /* Heading */

        h2 {
            font-size: 30px;

            font-weight: 700;

            color: #111827;

            margin-bottom: 10px;
        }

        .subtitle {
            color: #6b7280;

            font-size: 13px;

            line-height: 1.7;

            margin-bottom: 35px;
        }

        /* Buttons */

        .button-container {
            display: flex;

            justify-content: center;

            gap: 15px;

            flex-wrap: wrap;
        }

        button {
            border: none;

            min-width: 170px;

            height: 50px;

            border-radius: 10px;

            cursor: pointer;

            font-family: 'Poppins', sans-serif;

            font-size: 13px;

            font-weight: 600;

            transition: all 0.25s ease;
        }

        button a {
            text-decoration: none;

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 9px;

            width: 100%;
            height: 100%;
        }

        /* Register */

        .register-btn {
            background: #eff6ff;

            border: 1px solid #bfdbfe;
        }

        .register-btn a {
            color: #2563eb;
        }

        .register-btn:hover {
            background: #2563eb;

            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(37, 99, 235, 0.20);
        }

        .register-btn:hover a {
            color: #ffffff;
        }

        /* Login */

        .login-btn {
            background: linear-gradient(
                135deg,
                #2563eb,
                #1d4ed8
            );

            box-shadow:
                0 8px 20px rgba(37, 99, 235, 0.20);
        }

        .login-btn a {
            color: #ffffff;
        }

        .login-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 12px 25px rgba(37, 99, 235, 0.30);
        }

        /* Admin */

        .admin-btn {
            background: #111827;

            box-shadow:
                0 8px 20px rgba(17, 24, 39, 0.18);
        }

        .admin-btn a {
            color: #ffffff;
        }

        .admin-btn:hover {
            background: #1f2937;

            transform: translateY(-2px);

            box-shadow:
                0 12px 25px rgba(17, 24, 39, 0.25);
        }

        /* Footer */

        .footer {
            margin-top: 35px;

            padding-top: 20px;

            border-top: 1px solid #f0f2f5;

            color: #9ca3af;

            font-size: 11px;
        }

        /* Mobile */

        @media (max-width: 600px) {

            .container {
                width: 92%;

                padding: 40px 25px;
            }

            h2 {
                font-size: 25px;
            }

            .button-container {
                flex-direction: column;
            }

            button {
                width: 100%;
            }

        }

    </style>

</head>

<body>

    <div class="container">

        <!-- Application Icon -->

        <div class="icon">
            <i class="fa-solid fa-users"></i>
        </div>


        <!-- Heading -->

        <h2>
            <%= "Welcome..!" %>
        </h2>

        <p class="subtitle">
            Welcome to the Employee Management System.
            Choose an option below to continue.
        </p>


        <!-- Buttons -->

        <div class="button-container">

            <button class="register-btn">
                <a href="registerUser">
                    <i class="fa-solid fa-user-plus"></i>
                    Register User
                </a>
            </button>


            <button class="login-btn">
                <a href="login">
                    <i class="fa-solid fa-right-to-bracket"></i>
                    Login User
                </a>
            </button>


            <button class="admin-btn">
                <a href="adminLogin">
                    <i class="fa-solid fa-user-shield"></i>
                    Login Admin
                </a>
            </button>

        </div>


        <!-- Footer -->

        <div class="footer">
            Employee Management System &nbsp; | &nbsp; Secure Access
        </div>

    </div>

</body>

</html>