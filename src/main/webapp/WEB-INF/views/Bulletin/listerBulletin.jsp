<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="icon" type="image/png"
    href="http://www.salaire-brut-en-net.fr/wp-content/uploads/favicon2.png" />
<title>SGP - App</title>
</head>
<body>
   <h1>Listes des bulletins</h1>
    <table class="table table-bordered">
        <thead>
            <td>Date/heure creation</td>
            <td>Periode</td>
            <td>Matricule</td>
            <td>Salaire Brut</td>
            <td>Net Imposable</td>
            <td>Net à payer</td>
        </thead>
        <tbody>
            <c:forEach var="bulletins" items="${bulletins}">
                <td>${bulletins.dateForm()}</td>
                <td>${bulletins.periode.dateDebut} - ${bulletins.periode.dateFin}</td>
                <td>${bulletins.remunerationEmploye.matricule}</td>
                <td></td>
                <td></td>
                <td></td>
            </c:forEach>
        </tbody>
    </table>
     
   				 <a href="<c:url value='../employes/creer'></c:url>"
				class="btn btn-primary">Creer employé</a>
				
				<a href="<c:url value='../employes/lister'></c:url>"
				class="btn btn-primary">Lister employé</a>
				
				<a href="<c:url value='./creer'></c:url>"
				class="btn btn-primary">Creer Bulletin</a>

</body>
</html>