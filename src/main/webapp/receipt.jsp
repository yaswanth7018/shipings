<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Receipt</title>
</head>
<body>
<marquee style="color: green"><h1>Ordered successful</h1></marquee>
  <h2>Receipt</h2>
  <!-- Add a download link for the receipt file -->
  <a href="receipt?id=<%= request.getAttribute("oid") %>">Download Receipt</a>
</body>
</html>
