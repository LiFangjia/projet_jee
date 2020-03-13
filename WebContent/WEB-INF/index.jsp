<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/app.css">
	<title>Reddit</title>
</head>
<body>
    <div class="grid-container">
        <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
            <form action="AddPost" method="post">
                	<label>
                		Nouvelle choses dans ma vie...<br>
                	</label>
                	titre <input type="text" name="titre" > <br>
                	content <input type="text" name="content" > <br>
                	<input type="submit" value="Post" class="success button">
                </form>
                <h3>Popular posts</h3>
                <table>
                    <tr>
                    	<th>Post</th>
                    	<th></th>
                    </tr>
                    <c:forEach var="row" items="${posts}">
                	 <tr>
                        <td>
                          <c:out value="${row.id}"/>.	<c:out value="${row.titre}"/>
                    </tr>
                    </c:forEach>
                </table>
                
            </div>
        </div>
    </div>
</body>
</html>