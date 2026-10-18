<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Management System | Login</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	min-height: 100vh;
	background: #f4f7fb;
	display: flex;
	align-items: center;
	justify-content: center;
	overflow-x: hidden;
}

/* ================= BACKGROUND ================= */
.page-wrapper {
	width: 100%;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px;
	position: relative;
	overflow: hidden;
	background: radial-gradient(circle at 10% 20%, rgba(37, 99, 235, 0.12),
		transparent 30%),
		radial-gradient(circle at 90% 80%, rgba(30, 64, 175, 0.10),
		transparent 30%), #f5f7fb;
}

.bg-circle {
	position: absolute;
	border-radius: 50%;
	pointer-events: none;
}

.circle-1 {
	width: 380px;
	height: 380px;
	background: rgba(37, 99, 235, 0.06);
	top: -180px;
	left: -150px;
}

.circle-2 {
	width: 450px;
	height: 450px;
	background: rgba(30, 64, 175, 0.05);
	bottom: -250px;
	right: -180px;
}

/* ================= MAIN CARD ================= */
.login-container {
	width: 100%;
	max-width: 1050px;
	min-height: 610px;
	display: grid;
	grid-template-columns: 45% 55%;
	background: #ffffff;
	border-radius: 24px;
	overflow: hidden;
	box-shadow: 0 25px 70px rgba(15, 23, 42, 0.12), 0 5px 20px
		rgba(15, 23, 42, 0.05);
	position: relative;
	z-index: 5;
}

/* ================= LEFT PANEL ================= */
.brand-panel {
	position: relative;
	padding: 55px 50px;
	color: #ffffff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	overflow: hidden;
	background: linear-gradient(145deg, #0f172a 0%, #172554 45%, #1d4ed8 100%);
}

.brand-panel::before {
	content: "";
	position: absolute;
	width: 320px;
	height: 320px;
	border: 1px solid rgba(255, 255, 255, 0.08);
	border-radius: 50%;
	top: -140px;
	right: -130px;
}

.brand-panel::after {
	content: "";
	position: absolute;
	width: 250px;
	height: 250px;
	border: 1px solid rgba(255, 255, 255, 0.06);
	border-radius: 50%;
	bottom: -130px;
	left: -120px;
}

.brand-content {
	position: relative;
	z-index: 2;
}

/* Logo */
.brand-logo {
	width: 64px;
	height: 64px;
	border-radius: 16px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(255, 255, 255, 0.12);
	border: 1px solid rgba(255, 255, 255, 0.18);
	backdrop-filter: blur(10px);
	margin-bottom: 28px;
	font-size: 26px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.brand-tag {
	font-size: 12px;
	font-weight: 500;
	letter-spacing: 1.5px;
	text-transform: uppercase;
	color: #93c5fd;
	margin-bottom: 12px;
}

.brand-title {
	font-size: 34px;
	font-weight: 700;
	line-height: 1.25;
	margin-bottom: 18px;
	letter-spacing: -0.5px;
}

.brand-description {
	font-size: 13px;
	line-height: 1.9;
	color: rgba(255, 255, 255, 0.72);
	max-width: 390px;
	margin-bottom: 35px;
}

/* Features */
.features {
	display: flex;
	flex-direction: column;
	gap: 17px;
}

.feature-item {
	display: flex;
	align-items: center;
	gap: 13px;
	font-size: 12.5px;
	color: rgba(255, 255, 255, 0.86);
}

.feature-icon {
	width: 32px;
	height: 32px;
	min-width: 32px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 9px;
	background: rgba(255, 255, 255, 0.10);
	color: #bfdbfe;
	font-size: 13px;
}

/* ================= RIGHT PANEL ================= */
.login-panel {
	padding: 55px 65px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	background: #ffffff;
}

.login-header {
	margin-bottom: 34px;
}

.login-label {
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 1.5px;
	color: #2563eb;
	font-weight: 600;
	margin-bottom: 8px;
}

.login-title {
	font-size: 30px;
	font-weight: 700;
	color: #111827;
	margin-bottom: 8px;
}

.login-subtitle {
	font-size: 13px;
	color: #6b7280;
	line-height: 1.7;
}

/* ================= INPUT ================= */
.form-group {
	margin-bottom: 21px;
}

.form-label {
	display: block;
	font-size: 12px;
	font-weight: 600;
	color: #374151;
	margin-bottom: 8px;
}

.input-wrapper {
	position: relative;
}

.input-icon {
	position: absolute;
	left: 16px;
	top: 50%;
	transform: translateY(-50%);
	color: #9ca3af;
	font-size: 14px;
	z-index: 2;
}

.form-control-custom {
	width: 100%;
	height: 52px;
	border: 1px solid #e5e7eb;
	border-radius: 11px;
	background: #f9fafb;
	padding: 0 45px;
	font-family: 'Poppins', sans-serif;
	font-size: 13px;
	color: #111827;
	outline: none;
	transition: all 0.25s ease;
}

.form-control-custom::placeholder {
	color: #9ca3af;
}

.form-control-custom:hover {
	border-color: #d1d5db;
	background: #ffffff;
}

.form-control-custom:focus {
	background: #ffffff;
	border-color: #2563eb;
	box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.08);
}

.password-toggle {
	position: absolute;
	right: 16px;
	top: 50%;
	transform: translateY(-50%);
	color: #9ca3af;
	cursor: pointer;
	font-size: 14px;
	transition: 0.2s;
}

.password-toggle:hover {
	color: #2563eb;
}

/* ================= REMEMBER ================= */
.remember-row {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 4px 0 25px;
}

.remember {
	display: flex;
	align-items: center;
	gap: 8px;
	font-size: 11.5px;
	color: #6b7280;
	cursor: pointer;
}

.remember input {
	width: 14px;
	height: 14px;
	accent-color: #2563eb;
	cursor: pointer;
}

.forgot-link {
	font-size: 11.5px;
	color: #2563eb;
	text-decoration: none;
	font-weight: 500;
}

.forgot-link:hover {
	color: #1d4ed8;
}

/* ================= BUTTON ================= */
.login-button {
	width: 100%;
	height: 52px;
	border: none;
	border-radius: 11px;
	background: linear-gradient(135deg, #2563eb, #1d4ed8);
	color: #ffffff;
	font-family: 'Poppins', sans-serif;
	font-size: 13px;
	font-weight: 600;
	cursor: pointer;
	transition: all 0.25s ease;
	box-shadow: 0 8px 20px rgba(37, 99, 235, 0.22);
}

.login-button:hover {
	transform: translateY(-2px);
	box-shadow: 0 12px 25px rgba(37, 99, 235, 0.30);
}

.login-button:active {
	transform: translateY(0);
}

.login-button i {
	margin-right: 8px;
}

/* ================= REGISTER ================= */
.register-section {
	text-align: center;
	margin-top: 28px;
	padding-top: 22px;
	border-top: 1px solid #f0f0f0;
	font-size: 12px;
	color: #9ca3af;
}

.register-section a {
	color: #2563eb;
	text-decoration: none;
	font-weight: 600;
	margin-left: 4px;
}

.register-section a:hover {
	text-decoration: underline;
}

/* ================= SECURITY TEXT ================= */
.security-text {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 6px;
	margin-top: 22px;
	font-size: 10px;
	color: #9ca3af;
}

.security-text i {
	color: #16a34a;
}

/* ================= RESPONSIVE ================= */
@media ( max-width : 900px) {
	.login-container {
		max-width: 750px;
		grid-template-columns: 1fr;
	}
	.brand-panel {
		padding: 40px;
	}
	.brand-description {
		max-width: 600px;
	}
	.features {
		flex-direction: row;
		flex-wrap: wrap;
	}
	.login-panel {
		padding: 45px;
	}
}

@media ( max-width : 600px) {
	.page-wrapper {
		padding: 15px;
	}
	.login-container {
		border-radius: 18px;
	}
	.brand-panel {
		padding: 32px 25px;
	}
	.brand-logo {
		width: 55px;
		height: 55px;
		font-size: 22px;
	}
	.brand-title {
		font-size: 26px;
	}
	.brand-description {
		font-size: 12px;
	}
	.features {
		display: none;
	}
	.login-panel {
		padding: 35px 25px;
	}
	.login-title {
		font-size: 26px;
	}
	.remember-row {
		align-items: flex-start;
	}
}
</style>

</head>

<body>

	<div class="page-wrapper">

		<!-- Background -->
		<div class="bg-circle circle-1"></div>
		<div class="bg-circle circle-2"></div>


		<!-- Main Login Container -->
		<div class="login-container">


			<!-- ================= LEFT BRAND PANEL ================= -->

			<div class="brand-panel">

				<div class="brand-content">

					<div class="brand-logo">
						<i class="fa-solid fa-users"></i>
					</div>

					<div class="brand-tag">Employee Management System</div>

					<h1 class="brand-title">Welcome Back!</h1>

					<p class="brand-description">Access your employee dashboard,
						manage your profile and stay connected with your organization
						through one secure platform.</p>


					<!-- Features -->

					<div class="features">

						<div class="feature-item">

							<div class="feature-icon">
								<i class="fa-solid fa-shield-halved"></i>
							</div>

							<span> Secure & Protected Access </span>

						</div>


						<div class="feature-item">

							<div class="feature-icon">
								<i class="fa-solid fa-gauge-high"></i>
							</div>

							<span> Fast & Efficient Dashboard </span>

						</div>


						<div class="feature-item">

							<div class="feature-icon">
								<i class="fa-solid fa-user-check"></i>
							</div>

							<span> Easy Employee Management </span>

						</div>

					</div>

				</div>

			</div>


			<!-- ================= RIGHT LOGIN PANEL ================= -->

			<div class="login-panel">


				<!-- Header -->

				<div class="login-header">

					<div class="login-label">Account Login</div>

					<h2 class="login-title">Login</h2>

					<p class="login-subtitle">Enter your credentials below to
						access your employee dashboard.</p>

				</div>


				<!-- Login Form -->

				<form action="loginUser" method="post">

					<div class="form-group">

						<label class="form-label"> Username </label>

						<div class="input-wrapper">

							<i class="fa-solid fa-user input-icon"></i> <input type="text"
								name="userName" class="form-control-custom"
								placeholder="Enter your username" autocomplete="username"
								required>

						</div>

					</div>


					<!-- Password -->

					<div class="form-group">

						<label class="form-label"> Password </label>

						<div class="input-wrapper">

							<i class="fa-solid fa-lock input-icon"></i> <input
								type="password" name="password" id="password"
								class="form-control-custom" placeholder="Enter your password"
								autocomplete="current-password" required> <i
								class="fa-solid fa-eye password-toggle" id="togglePassword">
							</i>

						</div>

					</div>


					<!-- Remember -->

					<div class="remember-row">

						<label class="remember"> <input type="checkbox"
							name="remember"> <span> Remember me </span>

						</label> <a href="#" class="forgot-link"> Forgot Password? </a>

					</div>


					<!-- Login Button -->

					<button type="submit" class="login-button">

						<i class="fa-solid fa-right-to-bracket"></i> Sign In

					</button>

				</form>


				<!-- Register -->

				<div class="register-section">

					Don't have an account? <a
						href="${pageContext.request.contextPath}/register"> Create an
						account </a>

				</div>


				<!-- Security -->

				<div class="security-text">

					<i class="fa-solid fa-lock"></i> <span> Your login
						information is securely protected </span>

				</div>

			</div>

		</div>

	</div>

	<script>
		const togglePassword = document.getElementById("togglePassword");

		const password = document.getElementById("password");

		togglePassword.addEventListener("click", function() {

			const isPassword = password.type === "password";

			password.type = isPassword ? "text" : "password";

			this.classList.toggle("fa-eye", !isPassword);

			this.classList.toggle("fa-eye-slash", isPassword);

		});
	</script>

</body>

</html>