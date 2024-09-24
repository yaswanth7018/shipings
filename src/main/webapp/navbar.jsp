<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
 <link rel="stylesheet" href="css/nav.css"/>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'/>
</head>
<body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen' ></i>
            <span class="logo navLogo"><a action="home.xhtml">CARRYTO</a></span>
            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a action="home.xhtml">CARRYTO</a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>
                <ul class="nav-links">
                    <li><a href="home.jsp" style="color:white;" >Home</a></li>
                    <li><a href="aboutus.jsp" style="color:white;" >About</a></li>
                  
                    <li><a href="services.jsp" style="color:white;" >Services</a></li>
                    <li><a href="Addproduct.jsp" style="color:white;" >AddProduct</a></li>
                    
          <%
				String uid = (String)session.getAttribute("loginstatus");
				if (uid == null)
				{
		%>
                    <li><a href="login.jsp" style="color:white;" >Login/SignUp</a></li>
                    <li><a href="Adminlogin.jsp" style="color:white;" >AdminLogin</a></li>
                    <%	
				}
				else
				{
					%>
					 <li><a href="#" style="color:white;" >	welcome <%= uid %></a></li>
					 <li><a href="logout" style="color:white;" >	LogOut</a></li>
			
				<%}
		%>
                </ul>
            </div>

    </nav>
    <script>

 
      
//   js code to toggle sidebar

</script>
</body>
</html>