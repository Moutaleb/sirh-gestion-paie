<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<form class="form-horizontal">
	<fieldset>
	<h1> Ajouter Un Employé </h1>
		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Matricule</label>
			<div class="col-md-4">
				<input id="textinput" name="textinput" type="text"
					placeholder="" class="form-control input-md">
			</div>
		</div>
		<!-- Select Basic -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Entreprise</label>
			<div class="col-md-4">
				<select id="selectbasic" name="selectbasic" class="form-control">
                        <c:forEach var="entreprise" items="${entreprise}">
                            <option value="${entreprise.denomination}">${entreprise.denomination}</option>
                        </c:forEach>
                        </select>
			</div>
		</div>
		<!-- Select Profil -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Profil</label>
			<div class="col-md-4">
				<select id="selectbasic" name="selectbasic" class="form-control">
                        <c:forEach var="profil" items="${profil}">
                            <option value="${profil.code}">${profil.code}</option>
                        </c:forEach>
                    </select>
			</div>
		</div>
		
		<!-- Select Grade -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="selectbasic">Grade</label>
                <div class="col-md-4">
                    <select id="selectbasic" name="selectbasic" class="form-control">
                        <c:forEach var="grade" items="${grade}">
                            <option value="${grade.code}">${grade.code}</option>
                        </c:forEach>
                    </select>
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
</form>
</body>
</html>





