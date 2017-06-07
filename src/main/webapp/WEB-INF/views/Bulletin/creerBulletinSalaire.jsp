<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<form class="form-horizontal" method="post">
	<fieldset>
		<h1>Créer Bulletin Salaire</h1>
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Periode</label>
			<div class="col-md-4">
				<select id=periode name="periode" class="form-control">
					<c:forEach var="periode" items="${periode}">
						<option value="${periode.id}">${periode.dateDebut} - ${periode.dateFin}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Matricule</label>
			<div class="col-md-4">
				<select id="matricule" name="matricule" class="form-control">
					<c:forEach var="employe" items="${employe}">
						<option value="${employe.id}">${employe.matricule}</option>
					</c:forEach>
				</select>
			</div>
		</div>



		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Prime</label>
			<div class="col-md-4">
				<input id="prime" name="prime" type="text" placeholder=""
					class="form-control input-md">
			</div>
		</div>



		<!-- Button -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="singlebutton"></label>
			<div class="col-md-4">
				<button id="singlebutton" name="name" class="btn btn-primary">Ajouter</button>
			</div>
		</div>
		
	</fieldset>
	<sec:csrfInput/>
</form>
				<a href="<c:url value='../employes/creer'></c:url>"
				class="btn btn-primary">Creer employé</a>
				
				<a href="<c:url value='../employes/lister'></c:url>"
				class="btn btn-primary">Lister employé</a>
				
				<a href="<c:url value='./lister'></c:url>"
				class="btn btn-primary">Lister Bulletins</a>
				
</body>
</html>
