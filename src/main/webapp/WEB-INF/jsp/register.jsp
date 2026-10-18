<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Registration</title>

<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>
* {
	font-family: 'Poppins', sans-serif;
}

body {
	min-height: 100vh;
	background: linear-gradient(135deg, #667eea, #764ba2);
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px 15px;
}

.register-card {
	width: 100%;
	max-width: 950px;
	background: #ffffff;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.20);
}

.register-header {
	background: linear-gradient(135deg, #4f46e5, #7c3aed);
	color: white;
	text-align: center;
	padding: 30px 20px;
}

.register-header .icon {
	width: 65px;
	height: 65px;
	background: rgba(255, 255, 255, 0.18);
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 0 auto 15px;
	font-size: 28px;
}

.register-header h2 {
	font-weight: 600;
	margin-bottom: 5px;
}

.register-header p {
	margin: 0;
	opacity: 0.85;
	font-size: 14px;
}

.register-body {
	padding: 35px 45px;
}

.form-label {
	font-size: 14px;
	font-weight: 500;
	color: #374151;
	margin-bottom: 8px;
}

.input-group-text {
	background: #f8f9fa;
	border: 1px solid #dee2e6;
	color: #6366f1;
	min-width: 45px;
	justify-content: center;
}

.form-control, .form-select {
	min-height: 48px;
	border-radius: 8px;
	border: 1px solid #d1d5db;
	font-size: 14px;
	transition: 0.3s;
}

.input-group .form-control, .input-group .form-select {
	border-radius: 0 8px 8px 0;
}

.input-group .input-group-text {
	border-radius: 8px 0 0 8px;
}

.form-control:focus, .form-select:focus {
	border-color: #6366f1;
	box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.12);
}

textarea.form-control {
	min-height: 110px;
	resize: vertical;
	border-radius: 8px;
}

.password-btn {
	min-height: 48px;
	border-radius: 0 8px 8px 0 !important;
	border: 1px solid #d1d5db;
	background: #f8f9fa;
	color: #6366f1;
}

.password-btn:hover {
	background: #eef2ff;
	color: #4f46e5;
}

.register-btn {
	min-height: 50px;
	border: none;
	border-radius: 9px;
	background: linear-gradient(135deg, #4f46e5, #7c3aed);
	color: white;
	font-weight: 600;
	transition: 0.3s;
}

.register-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 8px 20px rgba(99, 102, 241, 0.3);
	color: white;
}

.login-link {
	text-align: center;
	margin-top: 20px;
	font-size: 14px;
	color: #6b7280;
}

.login-link a {
	color: #4f46e5;
	font-weight: 600;
	text-decoration: none;
}

.login-link a:hover {
	text-decoration: underline;
}

.form-check-label {
	font-size: 13px;
	color: #6b7280;
}

.form-check-input:checked {
	background-color: #4f46e5;
	border-color: #4f46e5;
}

.section-title {
	font-size: 16px;
	font-weight: 600;
	color: #4f46e5;
	margin-top: 5px;
	margin-bottom: 5px;
}

.section-line {
	height: 1px;
	background: #e5e7eb;
	margin-bottom: 5px;
}

@media ( max-width : 576px) {
	.register-body {
		padding: 25px 20px;
	}
	.register-header {
		padding: 25px 15px;
	}
	.register-header h2 {
		font-size: 22px;
	}
}
</style>

</head>

<body>

	<div class="register-card">

		<!-- Header -->
		<div class="register-header">

			<div class="icon">
				<i class="fa-solid fa-user-plus"></i>
			</div>

			<h2>Create Employee Account</h2>

			<p>Register a new employee in the company management system</p>

		</div>


		<!-- Form Body -->
		<div class="register-body">

			<!-- IMPORTANT:
         Context path included so request goes to
         /EmployeeMVC/registerUser
    -->
			<form action="registerUser" method="post">
				<div class="row g-4">
					<!-- ================= EMPLOYEE DETAILS ================= -->
					<div class="col-12">
						<div class="section-title">
							<i class="fa-solid fa-user me-2"></i> Employee Details
						</div>
						<div class="section-line"></div>
					</div>
					<!-- Employee Name -->
					<div class="col-md-6">

						<label class="form-label"> Employee Name </label>

						<div class="input-group">

							<span class="input-group-text"> <i
								class="fa-solid fa-user"></i>
							</span> <input type="text" name="name" class="form-control"
								placeholder="Enter full name" required>
						</div>
					</div>
					<!-- Salary -->
					<div class="col-md-6">
						<label class="form-label"> Salary </label>
						<div class="input-group">
							<span class="input-group-text"> <i
								class="fa-solid fa-indian-rupee-sign"></i>
							</span> <input type="number" name="salary" class="form-control"
								placeholder="Enter salary" min="0" step="0.01" required>
						</div>
					</div>
					<!-- Username -->
					<div class="col-md-6">

						<label class="form-label"> Username </label>

						<div class="input-group">

							<span class="input-group-text"> <i class="fa-solid fa-at"></i>
							</span> <input type="text" name="userName" class="form-control"
								placeholder="Enter username" required>

						</div>

					</div>


					<!-- Role -->
					<div class="col-md-6">

						<label class="form-label"> Role </label>

						<div class="input-group">

							<span class="input-group-text"> <i
								class="fa-solid fa-user-shield"></i>
							</span> <select name="role" class="form-select" required>

								<option value="" selected disabled>Select Role</option>

								<option value="ADMIN">Admin</option>

								<option value="MANAGER">Manager</option>

								<option value="HR">HR</option>

								<option value="EMPLOYEE">Employee</option>

							</select>

						</div>

					</div>


					<!-- ================= DEPARTMENT DETAILS ================= -->

					<div class="col-12 mt-4">

						<div class="section-title">
							<i class="fa-solid fa-building me-2"></i> Department Details
						</div>

						<div class="section-line"></div>

					</div>


					<!-- Department ID -->
					<div class="col-md-4">

						<label class="form-label"> Department ID </label>

						<div class="input-group">

							<span class="input-group-text"> <i
								class="fa-solid fa-hashtag"></i>
							</span> <input type="number" name="department.id" class="form-control"
								placeholder="Enter ID" min="1" required>

						</div>

					</div>


					<!-- Department Name -->
					<div class="col-md-8">

						<label class="form-label"> Department Name </label>

						<div class="input-group">

							<span class="input-group-text"> <i
								class="fa-solid fa-building"></i>
							</span> <input type="text" name="department.name" class="form-control"
								placeholder="e.g. IT, HR, Finance" required>

						</div>

					</div>


					<!-- Department Description -->
					<div class="col-12">

						<label class="form-label"> Department Description </label>

						<textarea name="department.description" class="form-control"
							placeholder="Enter department description"></textarea>

					</div>


					<!-- Terms -->
					<div class="col-12">

						<div class="form-check">

							<input class="form-check-input" type="checkbox" id="terms"
								required> <label class="form-check-label" for="terms">

								I confirm that the information provided is correct. </label>

						</div>

					</div>


					<!-- Register Button -->
					<div class="col-12">

						<button type="submit" class="btn register-btn w-100">

							<i class="fa-solid fa-user-plus me-2"></i> Create Employee
							Account

						</button>

					</div>

				</div>

			</form>


			<!-- Login -->
			<div class="login-link">

				Already have an account? <a
					href="${pageContext.request.contextPath}/login"> Login </a>

			</div>

		</div>
	</div>
	<script>
		function togglePassword() {

			const password = document.getElementById("password");

			const icon = document.getElementById("eyeIcon");

			if (password.type === "password") {

				password.type = "text";

				icon.classList.remove("fa-eye");
				icon.classList.add("fa-eye-slash");

			} else {

				password.type = "password";

				icon.classList.remove("fa-eye-slash");
				icon.classList.add("fa-eye");

			}

		}
	</script>

</body>

</html>
