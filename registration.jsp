<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Stock Management</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">SPharma</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item px-2">
            <a href="#" class="nav-link active">Dashboard</a>
          </li>
             
        </ul>

        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="login.jsp" class="nav-link ">
              <i class="fa fa-user"></i> Login
            </a>
           
          </li>
          <li class="nav-item">
            <a href="registration.jsp" class="nav-link">
              <i class="fa fa-user-times"></i> SignUp
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>

<div class="container">
<header id="main-header" class="py-2 bg-warning text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
         <img src="images/icon.png" class="rounded float-left" alt="sanjeev"> <h1>Item Stock Management</h1>
        </div>
      </div>
    </div>
  </header>
  </div>
  
  <div class="container">
  <h2>Registration Form</h2>
  
  <form action="UserController" method="post" enctype="multipart/form-data">
  <input type="hidden" name="command" value="ADD"/>
  <%
  	String msg = (String)request.getAttribute("msg");
  if(msg != null){
	  %>
	  <h4 style="color: red;"> <%=msg%> </h4>
  <%
  }
  %>
<table>
<tr>

<td> User ID :</td><td> <input type="text" name="userId"> </td>

</tr>

<tr>

<td> Password :</td><td> <input type="password" name="password"> </td>

</tr>

<tr>

<td> First name :</td><td> <input type="text" name="firstName"> </td>

</tr>

<tr>

<td> Last Name :</td><td> <input type="text" name="lastName"> </td>

</tr>

<tr>

<td> Address :</td><td> <textarea rows="2" cols="20" name="address"></textarea> </td>

</tr>

<tr>

<td> City :</td><td>
 <select name="city">
<option>Greater Noida</option>
<option>Delhi</option>
<option>Chandigarh</option>
<option>Hyderbad</option>
<option>Amritsar</option>
<option>Shimla</option>
</select> 
</td>

</tr>

<tr>
<td>Profile Photo:</td>
<td><input type="file" name="photo" size="50" /></td>

</tr>

<tr>

<td colspan="2"> <button type="submit" class="btn btn-primary">Sign Up</button>  </td>

</tr>
</table>


</form>
  
  </div>
  
 </body>
</html>