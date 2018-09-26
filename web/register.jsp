<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>Register</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <h1 > Test </h1>

        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>

    <body class="text-center">
        
        
        <form class="form-signin" method="POST" action='UserController' name="frmAddUser">
           <img class="mb-4" src="img/login_logo.png" alt="trio_fantastico" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign-Up</h1>  
      
        <label for="inputUsername" class="sr-only">Username : </label>
        Username : <input
            type="text" id="inputUsername" name="userName" name="username" class="form-control" placeholder="Email address" required autofocus
            value="<c:out value="${user.username}" />" /> <br /> 
         <label for="inputPassword" class="sr-only">Password</label>
        Password : <input
            type="text" id="inputPassword" class="form-control" placeholder="Password" required name="password"
            value="<c:out value="${user.password}" />" /> <br /> 
        
        <label for="inputEmail" class="sr-only">Email address</label>
        Email : <input type="text" id="inputEmail"  name="email" class="form-control" placeholder="Email address" required autofocus
            value="<c:out value="${user.email}" />" /> <br /> <input
            type="submit" value="Submit" />
         <p class="mt-5 mb-3 text-muted">&copy; Trio Fantastico 2018</p>
    </form>
   
        </body>
</html>
     
        
        
        
<!--
       <body class="text-center">
  
 
  
    <form class="form-signin">
      <img class="mb-4" src="img/login_logo.png" alt="trio_fantastico" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block btn-login" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; Trio Fantastico 2018</p>
    </form>
	
	
  </body>
-->

   
