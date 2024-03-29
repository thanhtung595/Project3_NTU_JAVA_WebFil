<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-90680653-2"></script>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Meta -->
<meta name="description"
	content="Responsive Bootstrap 4 Dashboard Template">
<meta name="author" content="BootstrapDash">

<title>DanhSachMuaFlim</title>

<!-- vendor css -->
<link href="lib/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/typicons.font/typicons.css" rel="stylesheet">
<link href="lib/spectrum-colorpicker/spectrum.css" rel="stylesheet">
<link href="lib/select2/css/select2.min.css" rel="stylesheet">
<link href="lib/ion-rangeslider/css/ion.rangeSlider.css"
	rel="stylesheet">
<link href="lib/ion-rangeslider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">
<link href="lib/amazeui-datetimepicker/css/amazeui.datetimepicker.css"
	rel="stylesheet">
<link href="lib/jquery-simple-datetimepicker/jquery.simple-dtpicker.css"
	rel="stylesheet">
<link href="lib/pickerjs/picker.min.css" rel="stylesheet">

<!-- azia CSS -->
<link rel="stylesheet" href="css/azia.css">


</head>
<body>


	<div class="az-content pd-y-20 pd-lg-y-30 pd-xl-y-40">
		<div class="container">
			<div class="az-content-left az-content-left-components">
				<jsp:include page="navAdminLayout.jsp"></jsp:include>

			</div>
			<!-- az-content-left -->
			<div class="az-content-body pd-lg-l-40 d-flex flex-column">
				<h2 class="az-content-title">Danh sách mua flim</h2>
				<div class="table-responsive">
					<table class="table table-bordered mg-b-0">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Position</th>
								<th>Salary</th>
								<th>Active</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Tiger Nixon</td>
								<td>System Architect</td>
								<td>$320,800</td>
								<td>
									<button type="button">Xem</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<!-- az-content-body -->
		</div>
		<!-- container -->
	</div>
	<!-- az-content -->

	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="lib/ionicons/ionicons.js"></script>
	<script src="lib/jquery.maskedinput/jquery.maskedinput.js"></script>
	<script src="lib/spectrum-colorpicker/spectrum.js"></script>
	<script src="lib/select2/js/select2.min.js"></script>
	<script src="lib/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
	<script
		src="lib/amazeui-datetimepicker/js/amazeui.datetimepicker.min.js"></script>
	<script
		src="lib/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
	<script src="lib/pickerjs/picker.min.js"></script>

	<script src="js/azia.js"></script>
</body>
</html>
