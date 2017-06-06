<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Liste des Employés</title>

</head>

<body>

	<h1>Liste des Employés</h1>

	<!-- Liste des noms -->
	<div class="table-responsive">
		<table class="table">
			<tr>
				<th>Matricule</th>
				<th>Entreprise</th>
				<th>Profil</th>
				<th>Grade</th>
			</tr>
			<c:forEach var="employe" items="${employe}">
				<tr>
					<td>${employe.matricule}</td>
					<td>${employe.entreprise.denomination}</td>
					<td>${employe.profilRemuneration.code}</td>
					<td>${employe.grade.code}</td>
				</tr>
			</c:forEach>
			
			<a href="<c:url value='./creer'></c:url>"
				class="btn btn-primary">Creer employé</a>

</html>