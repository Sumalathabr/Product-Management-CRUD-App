<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- Ensure Bootstrap is included -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center mb-3">Welcome to Product App</h1>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Sl.no</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products }" var="p">
                        <tr>
                            <th scope="row">${p.id}</th>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td>${p.price}</td>
                            <td>
                                <a href="update?id=${p.id}" class="btn btn-warning btn-sm">Edit</a>
                                <a href="deleteProduct?id=${p.id}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="container text-center">
                <a href="addProduct" class="btn btn-outline-success">Add Product</a>
            </div>
        </div>
    </div>
</div>

<!-- Ensure Bootstrap JS is included if needed -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
