<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Login | Employee Management System</title>

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
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

:root {
	--primary: #2563eb;
	--primary-dark: #1d4ed8;
	--navy: #0f172a;
	--text: #111827;
	--muted: #64748b;
	--border: #e2e8f0;
	--input-bg: #f8fafc;
	--white: #ffffff;
}

body {
	min-height: 100vh;
	font-family: "Inter", sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px;
	background: radial-gradient(circle at 10% 10%, rgba(37, 99, 235, 0.12),
		transparent 28%),
		radial-gradient(circle at 90% 90%, rgba(59, 130, 246, 0.10),
		transparent 28%), #f1f5f9;
	overflow-x: hidden;
}

/* ================= BACKGROUND DECORATION ================= */
.circle {
	position: fixed;
	border-radius: 50%;
	pointer-events: none;
	z-index: 0;
}

.circle-one {
	width: 420px;
	height: 420px;
	top: -250px;
	left: -190px;
	border: 1px solid rgba(37, 99, 235, 0.10);
}

.circle-two {
	width: 500px;
	height: 500px;
	right: -280px;
	bottom: -300px;
	border: 1px solid rgba(37, 99, 235, 0.08);
}

/* ================= MAIN CONTAINER ================= */
.login-container {
	width: 100%;
	max-width: 1020px;
	min-height: 610px;
	display: grid;
	grid-template-columns: 44% 56%;
	background: var(--white);
	border-radius: 26px;
	overflow: hidden;
	position: relative;
	z-index: 2;
	box-shadow: 0 30px 80px rgba(15, 23, 42, 0.12), 0 8px 25px
		rgba(15, 23, 42, 0.05);
	animation: cardEntry 0.7s ease;
}

@
keyframes cardEntry {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* ================= LEFT PANEL ================= */
.brand-panel {
	position: relative;
	padding: 55px 48px;
	display: flex;
	align-items: center;
	color: white;
	overflow: hidden;
	background: linear-gradient(145deg, #0f172a 0%, #172554 50%, #1d4ed8 100%);
}

.brand-panel::before {
	content: "";
	position: absolute;
	width: 360px;
	height: 360px;
	border-radius: 50%;
	top: -190px;
	right: -190px;
	border: 1px solid rgba(255, 255, 255, 0.10);
}

.brand-panel::after {
	content: "";
	position: absolute;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	bottom: -190px;
	left: -150px;
	border: 1px solid rgba(255, 255, 255, 0.08);
}

.brand-content {
	position: relative;
	z-index: 2;
}

/* ================= ICON ================= */
.brand-icon {
	width: 74px;
	height: 74px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 20px;
	background: rgba(255, 255, 255, 0.10);
	border: 1px solid rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	font-size: 30px;
	margin-bottom: 30px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.18);
}

.eyebrow {
	font-size: 11px;
	font-weight: 700;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #93c5fd;
	margin-bottom: 12px;
}

.brand-title {
	font-size: 36px;
	line-height: 1.2;
	font-weight: 800;
	letter-spacing: -1px;
	margin-bottom: 18px;
}

.brand-description {
	max-width: 390px;
	font-size: 13px;
	line-height: 1.8;
	color: rgba(255, 255, 255, 0.72);
	margin-bottom: 35px;
}

/* ================= FEATURES ================= */
.features {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

.feature {
	display: flex;
	align-items: center;
	gap: 13px;
	font-size: 12px;
	color: rgba(255, 255, 255, 0.88);
}

.feature-icon {
	width: 34px;
	height: 34px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 9px;
	background: rgba(255, 255, 255, 0.09);
	color: #bfdbfe;
	font-size: 13px;
}

/* ================= RIGHT PANEL ================= */
.form-panel {
	padding: 55px 72px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	background: #ffffff;
}

.form-header {
	margin-bottom: 30px;
}

.form-label-top {
	font-size: 11px;
	font-weight: 700;
	letter-spacing: 1.7px;
	text-transform: uppercase;
	color: var(--primary);
	margin-bottom: 9px;
}

.form-title {
	font-size: 30px;
	font-weight: 800;
	letter-spacing: -0.7px;
	color: var(--text);
	margin-bottom: 9px;
}

.form-subtitle {
	font-size: 12.5px;
	line-height: 1.7;
	color: var(--muted);
}

/* ================= FORM ================= */
.form-group {
	margin-bottom: 20px;
}

.form-label {
	display: block;
	font-size: 12px;
	font-weight: 600;
	color: #334155;
	margin-bottom: 8px;
}

.input-box {
	position: relative;
}

.input-icon {
	position: absolute;
	left: 16px;
	top: 50%;
	transform: translateY(-50%);
	color: #94a3b8;
	font-size: 14px;
	z-index: 2;
	transition: 0.2s ease;
}

.form-input {
	width: 100%;
	height: 52px;
	padding: 0 45px;
	border: 1px solid var(--border);
	border-radius: 12px;
	outline: none;
	background: var(--input-bg);
	color: var(--text);
	font-family: "Inter", sans-serif;
	font-size: 13px;
	transition: all 0.25s ease;
}

.form-input::placeholder {
	color: #94a3b8;
}

.form-input:hover {
	border-color: #cbd5e1;
	background: #ffffff;
}

.form-input:focus {
	background: #ffffff;
	border-color: var(--primary);
	box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.08);
}

.input-box:focus-within .input-icon {
	color: var(--primary);
}

/* ================= PASSWORD ================= */
.password-toggle {
	position: absolute;
	right: 16px;
	top: 50%;
	transform: translateY(-50%);
	color: #94a3b8;
	cursor: pointer;
	font-size: 14px;
	transition: 0.2s ease;
}

.password-toggle:hover {
	color: var(--primary);
}

/* ================= OPTIONS ================= */
.form-options {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 5px 0 25px;
}

.remember {
	display: flex;
	align-items: center;
	gap: 8px;
	font-size: 11.5px;
	color: #64748b;
	cursor: pointer;
}

.remember input {
	width: 14px;
	height: 14px;
	accent-color: var(--primary);
	cursor: pointer;
}

.forgot {
	color: var(--primary);
	font-size: 11.5px;
	font-weight: 600;
	text-decoration: none;
}

.forgot:hover {
	text-decoration: underline;
}

/* ================= BUTTON ================= */
.login-button {
	width: 100%;
	height: 52px;
	border: none;
	border-radius: 12px;
	background: linear-gradient(135deg, #2563eb, #1d4ed8);
	color: white;
	font-family: "Inter", sans-serif;
	font-size: 13px;
	font-weight: 700;
	cursor: pointer;
	box-shadow: 0 10px 24px rgba(37, 99, 235, 0.22);
	transition: all 0.25s ease;
}

.login-button:hover {
	transform: translateY(-2px);
	box-shadow: 0 14px 30px rgba(37, 99, 235, 0.30);
}

.login-button:active {
	transform: translateY(0);
}

.login-button i {
	margin-right: 8px;
}

/* ================= BACK LINK ================= */
.back-link {
	text-align: center;
	margin-top: 23px;
	font-size: 11.5px;
	color: #94a3b8;
}

.back-link a {
	color: var(--primary);
	text-decoration: none;
	font-weight: 700;
	margin-left: 4px;
}

.back-link a:hover {
	text-decoration: underline;
}

/* ================= SECURITY ================= */
.security-note {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 7px;
	margin-top: 20px;
	font-size: 10px;
	color: #94a3b8;
}

.security-note i {
	color: #16a34a;
}

/* ================= RESPONSIVE ================= */
@media ( max-width : 900px) {
	.login-container {
		max-width: 650px;
		grid-template-columns: 1fr;
	}
	.brand-panel {
		padding: 42px;
	}
	.brand-title {
		font-size: 31px;
	}
	.brand-description {
		max-width: 600px;
	}
	.features {
		flex-direction: row;
		flex-wrap: wrap;
	}
	.form-panel {
		padding: 45px;
	}
}

@media ( max-width : 600px) {
	body {
		padding: 18px;
	}
	.login-container {
		width: 100%;
		border-radius: 20px;
		min-height: auto;
	}
	.brand-panel {
		padding: 32px 26px;
	}
	.brand-icon {
		width: 60px;
		height: 60px;
		border-radius: 16px;
		font-size: 24px;
		margin-bottom: 22px;
	}
	.brand-title {
		font-size: 27px;
	}
	.brand-description {
		font-size: 12px;
		margin-bottom: 25px;
	}
	.features {
		display: none;
	}
	.form-panel {
		padding: 35px 26px;
	}
	.form-title {
		font-size: 25px;
	}
	.form-options {
		align-items: flex-start;
	}
	.circle-one, .circle-two {
		display: none;
	}
}
</style>

</head>


<body>

	<!-- Background Decoration -->

	<div class="circle circle-one"></div>
	<div class="circle circle-two"></div>


	<!-- Main Login Container -->

	<main class="login-container">


		<!-- ================= LEFT BRAND PANEL ================= -->

		<section class="brand-panel">

			<div class="brand-content">

				<div class="brand-icon">
					<i class="fa-solid fa-user-shield"></i>
				</div>

				<div class="eyebrow">Employee Management System</div>

				<h1 class="brand-title">
					Administrator<br> Portal
				</h1>

				<p class="brand-description">Manage employees, monitor system
					activities, and control application resources through a secure
					administrative dashboard.</p>


				<div class="features">

					<div class="feature">

						<div class="feature-icon">
							<i class="fa-solid fa-shield-halved"></i>
						</div>

						<span> Secure Administrator Access </span>

					</div>


					<div class="feature">

						<div class="feature-icon">
							<i class="fa-solid fa-users-gear"></i>
						</div>

						<span> Complete Employee Management </span>

					</div>


					<div class="feature">

						<div class="feature-icon">
							<i class="fa-solid fa-chart-line"></i>
						</div>

						<span> Monitor System Activities </span>

					</div>

				</div>

			</div>

		</section>


		<!-- ================= LOGIN FORM PANEL ================= -->

		<section class="form-panel">


			<!-- Header -->

			<div class="form-header">

				<div class="form-label-top">Administrator Login</div>

				<h2 class="form-title">Welcome back, Admin</h2>

				<p class="form-subtitle">Sign in with your administrator
					credentials to access the management dashboard.</p>

			</div>


			<!-- Login Form -->

			<form action="adminLogin"
				method="post">


				<!-- Username -->

				<div class="form-group">

					<label class="form-label"> Admin Username </label>

					<div class="input-box">

						<i class="fa-solid fa-user input-icon"></i> <input type="text"
							name="userName" class="form-input"
							placeholder="Enter admin username" autocomplete="username"
							required>

					</div>

				</div>


				<!-- Password -->

				<div class="form-group">

					<label class="form-label"> Password </label>

					<div class="input-box">

						<i class="fa-solid fa-lock input-icon"></i> <input type="password"
							name="password" id="password" class="form-input"
							placeholder="Enter admin password"
							autocomplete="current-password" required> <i
							class="fa-solid fa-eye password-toggle" id="togglePassword"
							title="Show password"> </i>

					</div>

				</div>


				<!-- Options -->

				<div class="form-options">

					<label class="remember"> <input type="checkbox"
						name="remember"> <span> Remember me </span>

					</label> <a href="#" class="forgot"> Forgot Password? </a>

				</div>


				<!-- Login Button -->

				<button type="submit" class="login-button">

					<i class="fa-solid fa-right-to-bracket"></i> Sign In as
					Administrator

				</button>

			</form>


			<!-- Employee Login -->

			<div class="back-link">

				Not an administrator? <a
					href="${pageContext.request.contextPath}/login"> Employee Login
				</a>

			</div>

			<!-- Security -->

			<div class="security-note">

				<i class="fa-solid fa-shield-halved"></i> <span> Secure &amp;
					protected administrative access </span>

			</div>

		</section>

	</main>


	<!-- ================= PASSWORD TOGGLE ================= -->

	<script>
		const togglePassword = document.getElementById("togglePassword");

		const password = document.getElementById("password");

		togglePassword.addEventListener("click", function() {

			const isPassword = password.type === "password";

			password.type = isPassword ? "text" : "password";

			this.classList.toggle("fa-eye", !isPassword);

			this.classList.toggle("fa-eye-slash", isPassword);

			this.setAttribute("title", isPassword ? "Hide password"
					: "Show password");

		});
	</script>

</body>

</html>