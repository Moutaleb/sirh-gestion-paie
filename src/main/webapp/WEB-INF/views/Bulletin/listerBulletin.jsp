<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
   <h1>Listes des bulletins</h1>
    <table class="table table-bordered">
      <tr>
            <th>Date/heure creation</th>
            <th>Periode</th>
            <th>Matricule</th>
            <th>Salaire Brut</th>
            <th>Net Imposable</th>
            <th>Net à payer</th>
            </tr>
            
            <c:forEach var="bulletins" items="${bulletins}">
            <tr>
                <td>${bulletins.dateForm()}</td>
                <td>${bulletins.periode.dateDebut} - ${bulletins.periode.dateFin}</td>
                <td>${bulletins.remunerationEmploye.matricule}</td>
                <td></td>
                <td></td>
                <td></td>
                </tr>
            </c:forEach>
    
    </table>
     
   				 <a href="<c:url value='../employes/creer'></c:url>"
				class="btn btn-primary">Creer employé</a>
				
				<a href="<c:url value='../employes/lister'></c:url>"
				class="btn btn-primary">Lister employé</a>
				
				<a href="<c:url value='./creer'></c:url>"
				class="btn btn-primary">Creer Bulletin</a>

</body>
</html>