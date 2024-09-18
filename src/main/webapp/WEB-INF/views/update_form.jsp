<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="./base.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #ffffff;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
            color: #495057;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border: 1px solid #000000; 
            max-width: 600px; 
            margin: 0 auto;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ced4da;
        }
        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #fbd700; 
            color: black;
            border: 1px solid #000000; 
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #f9c100; 
        }
        .back-link {
            text-align: center;
            margin-top: 15px;
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
        <h1>Change the product details</h1>
        
        <form action="${pageContext.request.contextPath}/handle-product" method="post">
            <input type="hidden" value="${product.id}" name="id">
            <div class="mb-3">
                <label for="name">Product Name</label>
                <input type="text" value="${product.name}" class="form-control" name="name" required>
            </div>
            <div class="mb-3">
                <label for="description">Product Description</label>
                <textarea id="description" class="form-control" name="description" required>${product.description}</textarea>
            </div>
            <div class="mb-3">
                <label for="price">Product Price</label>
                <input type="text" value="${product.price}" class="form-control" name="price" required>
            </div>

            <button type="submit" class="btn">Update Product</button>
        </form>
        
        <div class="back-link">
            <a href="${pageContext.request.contextPath }/">Back</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
