<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f1f3f5, #dee2e6);
            font-family: 'Segoe UI', Tahoma, sans-serif;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        h1 {
            margin-bottom: 25px;
            text-align: center;
            color: #495057;
            font-weight: 600;
        }
        label {
            font-weight: 500;
            margin-bottom: 5px;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ced4da;
        }
        button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Product</h1>
        <form action="handle-product" method="post">
            <div class="mb-3">
                <label for="name">Product Name</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="mb-3">
                <label for="description">Product Description</label>
                <textarea id="description" class="form-control" name="description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="price">Product Price</label>
                <input type="text" class="form-control" name="price" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Product</button>
        </form>
        <div class="back-link">
            <a href="${pageContext.request.contextPath }/">Back</a>
        </div>
    </div>
</body>
</html>
