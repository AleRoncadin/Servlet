<!--Roncadin Alessandro 5BIA 12/05/2022-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='css/bootstrapcss/bootstrap.min.css' rel='stylesheet'
	type='text/css' />
<script src='js/jquery-3.6.0.min.js' type='text/javascript'></script>
<script src='js/bootstrapjs/bootstrap.bundle.min.js'
	type='text/javascript'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGOUT PAGE</title>
</head>
<body>

	<script type="text/javascript">

$(document).ready(function(){

	// Show dialog to confirm deleting record:
	myModalDelete = new bootstrap.Modal(document.getElementById('myModalDelete'), {
	backdrop: 'static',  // do not close modal if user click outside
	keyboard: false   // cannot even press esc from keyboard
	})
	formDelete = document.getElementById("delete-record-form");

	$(document).on("click", "#HardReset", function () {
	//alert("Elimina");
	myModalDelete.show();
	});

	$(document).on("click", "#delete-form-submit", function () {
	//alert("Elimina");
	formDelete.submit();
	myModalDelete.dismiss();
	});


	});
</script>

	<h2>Welcome!</h2>
	<h4>You are the visitor ${user}</h4>

	</br>
	<form method="GET">
		<button name="logout" value="logout" type="submit" class="btn btn-primary">Logout</button>
	</form>
	</br>


	<!-- Modal with form: confirm to delete record -->
	<div id="myModalDelete" class="modal" tabindex="-1"
		data-bs-backdrop="static" data-bs-keyboard="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Confirm</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p id="modal-message">Are you sure to logout???</p>

					<form id="delete-record-form" method="GET">
						<input type='hidden' name='logout' value='yes'>
						<!-- button id="your-id">submit</button>  -->

						<button type="button" class="btn btn-primary"
							data-bs-dismiss="modal" id="delete-form-submit">Yes</button>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">No</button>


				</div>
			</div>
		</div>
	</div>
	</br>


</body>
</html>