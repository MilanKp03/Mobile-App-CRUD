<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mobile adding form</title>
<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
		
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom styles for this template -->
		<link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <h1>Add mobile</h1>
    
    <!-- enctype="multipart/form-data" -->
    
    
    <form method="POST" action='MobileController' name="frmAddUser" enctype="multipart/form-data" >
        
        Mobile ID : <input type="text" readonly="readonly" name="mobileid"
            value="<c:out value="${mobile.mobileId}" />" /> <br />
        
        Mobile model : <input type="text" name="model"
            value="<c:out value="${mobile.mobileModel}" />" /> <br />
        
        Mobile producer : <input type="text" name="producer"
            value="<c:out value="${mobile.mobileProducer}" />" /> <br />
        
        Mobile processor : <input type="text" name="processor"
            value="<c:out value="${mobile.mobileProcessor}" />" /> <br />
        
        Mobile screen : <input type="text" name="screen"
            value="<c:out value="${mobile.mobileScreen}" />" /> <br />
        
        Mobile camera : <input type="text" name="camera"
            value="<c:out value="${mobile.mobileCamera}" />" /> <br />
        
        Mobile sound : <input type="text" name="sound"
            value="<c:out value="${mobile.mobileSound}" />" /> <br />
        
        Mobile memory : <input type="text" name="memory"
            value="<c:out value="${mobile.mobileMemory}" />" /> <br />
        
        Mobile OS : <input type="text" name="mobile_os"
            value="<c:out value="${mobile.mobileOs}" />" /> <br />
        
        Mobile photo : <input type="file" name="photo"
            value="<c:out value="${mobile.mobilePhoto}" />" /> <br />
        
        Mobile description : <input type="text" name="description"
            value="<c:out value="${mobile.mobileDescription}" />" /> <br />
        
      <input type="submit" value="Submit" />
    </form>
    
    
    
    
    
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