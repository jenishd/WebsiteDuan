<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Cập Nhật Bảng Chữ Cái</title>

<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<!-- Text Area -->
<script src="/js/nicEdit.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>
	bkLib.onDomLoaded(function() {
		nicEditors.allTextAreas()
	});
</script>
<%@include file="includes/heatag.jsp"%>
</head>

<body id="page-top">
	<%@include file="includes/header.jsp"%>
	<!-- End of Topbar -->
	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">CẬP NHẬT THÔNG TIN</h1>
		<!-- ----------------------------------------------------------------------------------------------- -->
		<!-- ----------------------------------------------------------------------------------------------- -->

		<!-- ----------------------------------------------------------------------------------------------- -->

		<!-- ----------------------------------------------------------------------------------------------- -->


		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">Cập Nhật Bảng Chữ Cái</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<form:form action="/admin/update-bang-chu-cai"
						modelAttribute="updateBangChuCai" method="POST" enctype="multipart/form-data">
						<div class="form-group">
							<form:input path="idbang" cssClass="form-control" />
						</div>
						<div class="form-group" >
							<label for="exampleInputEmail1">Chữ cái</label>
							<input
								type="file" name="uploadFiles1"
								class="form-control" accept=".jpg, .png, .jpeg" id="imgInp1"/>
							<img alt="" id="blah1" src="../images/bangchucai/chucai/${chucaitruoc }" width="30%" class="mx-auto d-block mt-3">
							<input value="${chucaitruoc}" name="chucaitruoc" type="hidden">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Romanjji</label>
							<form:input path="romajji" cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Âm thanh</label>
							<form:input type="text" path="linkamthanh"
								cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Hình ảnh</label>
							<input
								type="file" name="uploadFiles2" 
								class="form-control" accept=".gif" id="imgInp"/>
							<img alt="" id="blah" src="../images/bangchucai/detailchucai/${linkanhtruoc }" width="30%" class="mx-auto d-block mt-3">
							<input value="${linkanhtruoc }" name="linkanhtruoc" type="hidden">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Ví dụ 1</label>
							<form:input path="vidu1" cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Ví dụ 2</label>
							<form:input path="vidu2" cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Ví dụ 3</label>
							<form:input path="vidu3" cssClass="form-control" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Loại bảng</label>
							<form:select path="loaibang" cssClass="form-control">
								<option  value="hiragana">Hiragana</option>
								<option  value="katakana">Katakana</option>
							</form:select>
						</div>
						<button type="submit" value="updateBaiHoc" class="btn btn-dark">
							CẬP NHẬT <i class="fas fa-plus"></i>
						</button>
						<button type="reset" value="Reset" class="btn btn-info">
							LÀM MỚI <i class="fas fa-redo-alt"></i>
						</button>
					</form:form>
				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->
	<!-- End of Main Content -->
	<!-- Footer -->
	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Bản quyền &copy; Yuki.vn</span>
			</div>
		</div>
	</footer>
	<!-- End of Footer -->
	<!-- End of Content Wrapper -->
	<!-- End of Page Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/js/demo/datatables-demo.js"></script>
	<script>
	//Show image when update or add file 1
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function() {
		readURL(this);
	});
	//Show image when update or add file 2
	function readURL1(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah1').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp1").change(function() {
		readURL1(this);
	});
	</script>
</body>

</html>
