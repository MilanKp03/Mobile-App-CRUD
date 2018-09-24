<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="shortcut icon" href="../../assets/ico/favicon.ico">
<title>Mobile adding form</title>
<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
		
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom styles for this template -->
		<link href="css/custom.css" rel="stylesheet">
</head>
<body>
    
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					  <a class="navbar-brand" href="index.html">MOBILE_INFO</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#who">WHO WE ARE</a></li>
						<li><a href="#get-involved">MORE ABOUT US</a></li>
						<li><a href="register.jsp" target="_blank">REGISTER </a></li>
                                                <li><a href="login.html" target="_blank">LOG IN</a></li>
                                                <li><a href="add_mobile.jsp" target="_blank" >ADD MOBILE</a></li>
						<li><a href="#contact_me">CONTACT US</a></li>
						
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
		
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
			
				<h1>MOBILE_INFO WORLD! <br>Our goal is to make <br>Lorem ipsum dolor sit amet,<br> Lorem ipsum dolor sit amet_</h1>
				<p>Lorem ipsum dolor sit amet,<strong>Lorem ipsum dolor sit amet,</strong> Lorem ipsum dolor sit amet, <strong>CODE.org</strong>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sollicitudin risus in magna vehicula, id tincidunt nunc feugiat. Maecenas sit amet lectus vel nisi dignissim semper sit amet sit amet sem. Aliquam viverra placerat accumsan._</p>
				<p><a class="btn btn-danger btn-lg" role="button">LEARN MORE &raquo;</a></p>
		<!--		 <img src="img/logo.png" title="Code.org logo" alt="Code.org"> -->
			</div>
		</div>
		
		<div id="who">
			<div class="container homepage">
				<span class="fa-stack fa-4x">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fas fa-mobile fa-stack-1x fa-inverse"></i>
						</span>
				 <h1>Add mobile</h1>
    
    <!-- enctype="multipart/form-data" -->
    
    
    <form method="POST" action='MobileController' name="frmAddUser" enctype="multipart/form-data" >
        <div class="form-group"> 
        Mobile ID : <input type="text" readonly="readonly" name="mobileid" class="form-control form-control-lg" type="text" placeholder="This field is automatic.You don't need to fullified"
            value="<c:out value="${mobile.mobileId}" />" /> <br />
        
        Mobile model : <input type="text" name="model" class="form-control form-control-lg" type="text" placeholder="Model"
            value="<c:out value="${mobile.mobileModel}" />" /> <br />
        
        Mobile producer : <input type="text" name="producer" class="form-control form-control-lg" type="text" placeholder="Producer"
            value="<c:out value="${mobile.mobileProducer}" />" /> <br />
        
        Mobile processor : <input type="text" name="processor" class="form-control form-control-lg" type="text" placeholder="Processor"
            value="<c:out value="${mobile.mobileProcessor}" />" /> <br />
        
        Mobile screen : <input type="text" name="screen" class="form-control form-control-lg" type="text" placeholder=".Screen"
            value="<c:out value="${mobile.mobileScreen}" />" /> <br />
        
        Mobile camera : <input type="text" name="camera" class="form-control form-control-lg" type="text" placeholder="Camera"
            value="<c:out value="${mobile.mobileCamera}" />" /> <br />
        
        Mobile sound : <input type="text" name="sound" class="form-control form-control-lg" type="text" placeholder="Sound"
            value="<c:out value="${mobile.mobileSound}" />" /> <br />
        
        Mobile memory : <input type="text" name="memory" class="form-control form-control-lg" type="text" placeholder="Mobile memmory"
            value="<c:out value="${mobile.mobileMemory}" />" /> <br />
        
        Mobile OS : <input type="text" name="mobile_os" class="form-control form-control-lg" type="text" placeholder="Mobile OS"
            value="<c:out value="${mobile.mobileOs}" />" /> <br />
        
        Mobile photo : <input type="file" name="photo" class="form-control form-control-lg" type="text" placeholder="Photo"
            value="<c:out value="${mobile.mobilePhoto}" />" /> <br />
        
        Mobile description : <input type="text" name="description" class="form-control form-control-lg" type="text" placeholder="Description"
            value="<c:out value="${mobile.mobileDescription}" />" /> <br />
        
      <input type="submit" value="Submit" type="button" class="btn btn-primary" />
        </div>
    </form>
			</div>
		</div>
    
    
    
    
    
    
   <!--
    <form action="MobileControllerServlet" method="post">
        <table cellpadding="3pt">
            <tr>
                <td>Model :</td>
                <td><input type="text" name="model" size="30" /></td>
            </tr>
            <tr>
                <td>Producer :</td>
                <td><input type="text" name="producer" size="30" /></td>
            </tr>
 
            <tr>
                <td>Procesor :</td>
                <td><input type="text" name="procesor" size="30" /></td>
            </tr>
            <tr>
                <td>Screen:</td>
                <td><input type="text" name="screen" size="30" /></td>
            </tr>
             <tr>
                <td>Camera :</td>
                <td><input type="text" name="camera" size="30" /></td>
            </tr>
             <tr>
                <td>Sound :</td>
                <td><input type="text" name="sound" size="30" /></td>
            </tr>
             <tr>
                <td>Memory :</td>
                <td><input type="text" name="memory" size="30" /></td>
            </tr>
             <tr>
                <td>Mobile OS :</td>
                <td><input type="text" name="mobile_os" size="30" /></td>
            </tr>
             <tr>
                 <td>Foto :</td>
                
                <td><input type="file" name="foto"/></td>
                
                <!-- <td><input type="image" name="foto" /></td> -->
                
                
                <!--
            </tr>
             <tr>
                <td>Description :</td>
                <td><input type="text" name="description" size="30" /></td>
            </tr>
        </table>
        <p />
        <input type="submit" value="Add" />
    </form>
    
    
    
    <form action="MobileControllerServlet" method="GET">
            <input type="submit" name="showMobile" value="Show"><br>
            
            
        </form>
    
                -->
    
    
</body>
</html>