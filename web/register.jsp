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


        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>

    <body class="text-center">
        
        
        <form method="POST" action='UserController' name="frmAddUser">
        User ID : <input type="text" readonly="readonly" name="userid"
            value="<c:out value="${user.userId}" />" /> <br /> 
        First Name : <input
            type="text" name="userName"
            value="<c:out value="${user.username}" />" /> <br /> 
        Password : <input
            type="text" name="password"
            value="<c:out value="${user.password}" />" /> <br /> 
        Email : <input type="text" name="email"
            value="<c:out value="${user.email}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
        
        
        
        
<!--
        <form class="form-signin" action="UserController" method="post">
            
            <img class="mb-4" src="img/login_logo.png" alt="trio_fantastico" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please register</h1>

            <label for="inputUsername" class="sr-only">Username</label>
            <input type="username"  class="form-control" placeholder="Username" name="userName" size="30" required autofocus
                   value="<c:out value="${user.username}" />" >

            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" size="30" required>

            <label for="inputPassword" class="sr-only">Confirm password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Confirm password" name="password1" size="30" required>

            <label for="inputEmail" class="sr-only">Email</label>
            <input type="email"  id="inputEmail" class="form-control" placeholder="Email" name="email" size="30" required>


            <button class="btn btn-lg btn-primary btn-block btn-login" type="submit">Register</button>
            <p class="mt-5 mb-3 text-muted">&copy; Trio Fantastico 2018</p>
        </form>
-->

    </body>
</html>

