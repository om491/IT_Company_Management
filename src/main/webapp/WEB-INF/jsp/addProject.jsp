<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Project | Manager Portal</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Inter', sans-serif;
	background: #f4f7fb;
	color: #172033;
}

.main-wrapper {
	min-height: 100vh;
	padding: 35px;
}

.page-header {
	background: linear-gradient(135deg, #172033, #273449);
	border-radius: 20px;
	padding: 30px;
	color: white;
	margin-bottom: 25px;
	position: relative;
	overflow: hidden;
}

.page-header::after {
	content: "";
	position: absolute;
	width: 220px;
	height: 220px;
	border-radius: 50%;
	background: rgba(245, 158, 11, 0.12);
	right: -70px;
	top: -80px;
}

.page-header-content {
	position: relative;
	z-index: 2;
}

.page-header h2 {
	font-size: 26px;
	font-weight: 800;
	margin-bottom: 7px;
}

.page-header p {
	color: #cbd5e1;
	font-size: 13px;
	margin: 0;
}

.form-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 18px;
	padding: 30px;
	box-shadow: 0 10px 30px rgba(15, 23, 42, 0.06);
}

.section-title {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-bottom: 25px;
	padding-bottom: 15px;
	border-bottom: 1px solid #e5e7eb;
}

.section-icon {
	width: 42px;
	height: 42px;
	border-radius: 11px;
	background: #fffbeb;
	color: #d97706;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 19px;
}

.section-title h5 {
	margin: 0;
	font-size: 17px;
	font-weight: 800;
}

.section-title small {
	color: #94a3b8;
	font-size: 11px;
}

.form-label {
	font-size: 12px;
	font-weight: 700;
	color: #475569;
	margin-bottom: 7px;
}

.form-control, .form-select {
	border: 1px solid #dbe1e8;
	border-radius: 10px;
	padding: 11px 13px;
	font-size: 13px;
	color: #172033;
	transition: 0.2s;
}

.form-control:focus, .form-select:focus {
	border-color: #f59e0b;
	box-shadow: 0 0 0 3px rgba(245, 158, 11, 0.12);
}

textarea.form-control {
	min-height: 120px;
	resize: vertical;
}

.input-icon {
	position: relative;
}

.input-icon i {
	position: absolute;
	left: 13px;
	top: 12px;
	color: #94a3b8;
	font-size: 15px;
	z-index: 2;
}

.input-icon .form-control {
	padding-left: 38px;
}

.form-hint {
	color: #94a3b8;
	font-size: 10px;
	margin-top: 5px;
}

.button-area {
	margin-top: 28px;
	padding-top: 20px;
	border-top: 1px solid #e5e7eb;
	display: flex;
	justify-content: flex-end;
	gap: 10px;
}

.btn-cancel {
	background: #f1f5f9;
	color: #475569;
	border: none;
	padding: 11px 18px;
	border-radius: 10px;
	font-size: 12px;
	font-weight: 700;
	text-decoration: none;
	transition: 0.2s;
}

.btn-cancel:hover {
	background: #e2e8f0;
	color: #172033;
}

.btn-save {
	background: #f59e0b;
	color: white;
	border: none;
	padding: 11px 20px;
	border-radius: 10px;
	font-size: 12px;
	font-weight: 700;
	transition: 0.2s;
}

.btn-save:hover {
	background: #d97706;
	transform: translateY(-2px);
}

.required {
	color: #ef4444;
}

@media ( max-width : 768px) {
	.main-wrapper {
		padding: 20px;
	}
	.page-header {
		padding: 25px;
	}
	.page-header h2 {
		font-size: 22px;
	}
	.form-card {
		padding: 22px;
	}
	.button-area {
		flex-direction: column;
	}
	.btn-cancel, .btn-save {
		width: 100%;
		text-align: center;
	}
}
</style>

</head>

<body>

	<div class="main-wrapper">

		<!-- ================= PAGE HEADER ================= -->

		<div class="page-header">

			<div class="page-header-content">

				<h2>
					<i class="bi bi-folder-plus"></i> Create New Project
				</h2>

				<p>Create and configure a new project for your organization.</p>

			</div>

		</div>


		<!-- ================= FORM ================= -->

		<div class="form-card">

			<div class="section-title">

				<div class="section-icon">
					<i class="bi bi-kanban-fill"></i>
				</div>

				<div>
					<h5>Project Information</h5>
					<small>Enter project details below</small>
				</div>

			</div>


			<form action="/EmployeeMVC/saveProject"
				method="post">


				<!-- ================= PROJECT NAME ================= -->

				<div class="row g-4">

					<div class="col-md-6">

						<label class="form-label"> Project Name <span
							class="required">*</span>
						</label>

						<div class="input-icon">

							<i class="bi bi-folder"></i> <input type="text"
								name="projectName" class="form-control"
								placeholder="Enter project name" required>

						</div>

					</div>


					<!-- ================= MANAGER ID ================= -->

					<div class="col-md-6">

						<label class="form-label"> Manager ID <span
							class="required">*</span>
						</label>

						<div class="input-icon">

							<i class="bi bi-person-badge"></i> <input type="number"
								name="managerId" class="form-control"
								placeholder="Enter manager ID" min="1" required>

						</div>

						<div class="form-hint">Enter the ID of the manager
							responsible for this project.</div>

					</div>


					<!-- ================= START DATE ================= -->

					<div class="col-md-6">

						<label class="form-label"> Start Date <span
							class="required">*</span>
						</label>

						<div class="input-icon">

							<i class="bi bi-calendar-event"></i> <input type="date"
								name="startDate" class="form-control" required>

						</div>

					</div>


					<!-- ================= END DATE ================= -->

					<div class="col-md-6">

						<label class="form-label"> End Date <span class="required">*</span>
						</label>

						<div class="input-icon">

							<i class="bi bi-calendar-check"></i> <input type="date"
								name="endDate" class="form-control" required>

						</div>

					</div>


					<!-- ================= STATUS ================= -->

					<div class="col-md-6">

						<label class="form-label"> Project Status <span
							class="required">*</span>
						</label> <select name="status" class="form-select" required>

							<option value="">-- Select Status --</option>

							<option value="PLANNED">Planned</option>

							<option value="IN_PROGRESS">In Progress</option>

							<option value="COMPLETED">Completed</option>

							<option value="ON_HOLD">On Hold</option>

							<option value="CANCELLED">Cancelled</option>

						</select>

					</div>


					<!-- ================= DESCRIPTION ================= -->

					<div class="col-12">

						<label class="form-label"> Project Description <span
							class="required">*</span>
						</label>

						<textarea name="description" class="form-control"
							placeholder="Enter project description..." required></textarea>

					</div>

				</div>


				<!-- ================= BUTTONS ================= -->

				<div class="button-area">

					<a href="/EmployeeMVC/managerDashboard" class="btn-cancel"> <i
						class="bi bi-arrow-left"></i> Cancel

					</a>


					<button type="submit" class="btn-save">

						<i class="bi bi-check-circle"></i> Save Project

					</button>

				</div>

			</form>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>

</html>
