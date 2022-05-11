<!--Roncadin Alessandro 5BIA  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='css/bootstrapcss/bootstrap.min.css' rel='stylesheet'
	type='text/css' />
<script src='js/jquery-3.6.0.min.js' type='text/javascript'></script>
<script src='js/bootstrapjs/bootstrap.bundle.min.js'
	type='text/javascript'></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<script type="text/javascript">
$(document).ready(function(){	
	// Show dialog to confirm deleting record:
	myModalDelete = new bootstrap.Modal(document.getElementById('myModalDelete'), {
		backdrop: 'static',  // do not close modal if user click outside
		keyboard: false   // cannot even press esc from keyboard
	}) 
	formDelete = document.getElementById("confirm_reset");
	
	$(document).on("click", "#reset", function () {
		//alert("Elimina");
		myModalDelete.show();
	});
	
	$(document).on("click", "#confirm_reset", function () {
		//alert("Elimina");
		formDelete.submit();
		myModalDelete.dismiss();
	});	
});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conta accessi</title>
</head>
<body>
	<h2>Welcome!</h2>
	<h4>You are the visitor number ${count}</h4>
	<button type="button" id="reset" class="btn btn-primary">Reset</button>
	</br>
	<b>Lista accessi:</b>
	</br>
	<table class="table table-striped table-hover">
		<tr>
			<td><b>Remote address</b></td>
			<td><b>Remote port</b></td>
			<td><b>Date</b></td>
			<td><b>Delete element</b></td>
		</tr>
		<c:forEach var="table" items="${list}">
			<tr>
				<td>${table.ip}</td>
				<td>${table.port}</td>
				<td>${table.date}</td>
				<td><input type='submit' value='DELETE' name="delete" class="btn btn-primary"></td>
			</tr>
		</c:forEach>
	</table>
	<!-- Delete Button: shows the modal when clicked -->
  	
	
<!-- Modal with form: confirm to delete record -->
<div id="myModalDelete" class="modal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Conferma</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p id="modal-message">Sei sicuro di voler cancellare tutta la lista?</p>
        <form id="delete-record-form" method="post" action="logoff">
          <input hidden type="text" name="id" id="id" value="${variable}"/>
		</form>  
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <form method='get' action='/provaServlet/ContaJsp'>
			<button type="button" id="confirm_reset" class="btn btn-primary">Confirm reset</button>
		</form>
      </div>
    </div>
  </div>
</div>
</body>
</html>