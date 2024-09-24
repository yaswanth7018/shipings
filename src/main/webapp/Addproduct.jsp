<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <jsp:include page="navbar.jsp"></jsp:include>
    <link rel="styles" href="styles.css">
    <style >
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f7f7f7;
}

.container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
}

h1, h2 {
    text-align: center;
}

form {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
    
    </style>
</head>
<body>
<br><br><br><br><br><br><br><br>
    <h1>Add Product</h1>
   
    <form action="product" method="post">
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="pname" required>
        
        <label for="productPrice">Price:</label>
        <input type="number" id="productPrice" name="pprice" step="0.01" required>
        <label for="productQuantity">Quantity:</label>
        
        <input type="number" id="productQuantity" name="pquantity" required>
        <button type="submit">Add Product</button>
    </form>
    </body>
    </html>