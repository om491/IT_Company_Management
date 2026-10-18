<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Details</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
body {
	background: #f5f7fb;
	font-family: Arial, sans-serif;
}

.container-box {
	max-width: 900px;
	margin: 50px auto;
}

.card {
	border: none;
	border-radius: 18px;
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
}

.profile-header {
	background: linear-gradient(135deg, #4f46e5, #7c3aed);
	color: white;
	padding: 30px;
	border-radius: 18px 18px 0 0;
}

.profile-icon {
	width: 75px;
	height: 75px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.2);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 35px;
}

.detail-box {
	padding: 25px;
}

.detail-item {
	padding: 15px;
	border-bottom: 1px solid #eee;
}

.detail-label {
	color: #777;
	font-size: 13px;
	margin-bottom: 5px;
}

.detail-value {
	font-size: 16px;
	font-weight: 600;
}

.role-badge {
	background: #e0e7ff;
	color: #4338ca;
	padding: 6px 14px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 600;
}
</style>

</head>

<body>

	<div class="container-box">

		<div class="card">

			<div class="profile-header">

				<div class="d-flex align-items-center gap-3">

					<div class="profile-icon">
						<i class="bi bi-person-fill"></i>
					</div>

					<div>
						<h3 class="mb-1">${user.name}</h3>

						<span class="role-badge"> ${user.role} </span>
					</div>

				</div>

			</div>

			<div class="detail-box">

				<div class="row">

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Employee ID</div>

							<div class="detail-value">${user.id}</div>

						</div>

					</div>
					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Full Name</div>

							<div class="detail-value">${user.name}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Username</div>

							<div class="detail-value">${user.userName}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Salary</div>

							<div class="detail-value">₹ ${user.salary}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Role</div>

							<div class="detail-value">${user.role}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Department ID</div>

							<div class="detail-value">${user.department.id}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Department Name</div>

							<div class="detail-value">${user.department.name}</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="detail-item">

							<div class="detail-label">Department Description</div>

							<div class="detail-value">${user.department.description}</div>

						</div>

					</div>

				</div>

				<div class="mt-4 d-flex gap-2">

					<a href="/EmployeeMVC/admin/dashboard" class="btn btn-dark"> <i
						class="bi bi-arrow-left"></i> Back to Dashboard

					</a> <a href="/EmployeeMVC/admin/deleteUser?id=${user.id}"
						class="btn btn-outline-danger"> <i class="bi bi-trash"></i>
						Delete User

					</a>

				</div>

			</div>

		</div>

	</div>

</body>
</html>