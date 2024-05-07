<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Film Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> Film App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Film</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${film != null}">
                <form action="update" method="post">
            </c:if>
            <c:if test="${film == null}">
                <form action="insert" method="post">
            </c:if>

            <caption>
                <h2>
                    <c:if test="${film != null}">
                        Edit Film
                    </c:if>
                    <c:if test="${film == null}">
                        Add New Film
                    </c:if>
                </h2>
            </caption>

            <c:if test="${film != null}">
                <input type="hidden" name="id" value="<c:out value='${film.id}' />" />
            </c:if>

            <fieldset class="form-group">
                <label>Film Title</label>
                <input type="text" value="<c:out value='${film.title}' />" class="form-control" name="title" required="required">
            </fieldset>

            <fieldset class="form-group">
                <label>Release Year</label>
                <input type="text" value="<c:out value='${film.year}' />" class="form-control" name="year">
            </fieldset>

            <fieldset class="form-group">
                <label>Director</label>
                <input type="text" value="<c:out value='${film.director}' />" class="form-control" name="director">
            </fieldset>

            <fieldset class="form-group">
                <label>Stars</label>
                <input type="text" value="<c:out value='${film.stars}' />" class="form-control" name="stars">
            </fieldset>

            <fieldset class="form-group">
                <label>Review</label>
                  <textarea class="form-control" name="review" rows="5"><c:out value='${film.review}' /></textarea>
            </fieldset>

            <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>