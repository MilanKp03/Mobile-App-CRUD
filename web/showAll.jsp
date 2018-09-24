<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Mobiles</title>
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet"> 
    </head>
    <body>
        
        <table border=1 class="table>
        <thead class="thead-dark">
            <tr>
                <th scope="col">Mobile Id</th>
                <th scope="col">Mobile model</th>
                <th  scope="col">Mobile Producer</th>
                <th  scope="col">Mobile Processor</th>
                <th scope="col">Mobile Screen</th>
                <th  scope="col">Mobile Camera</th>
                <th  scope="col">Mobile Sound</th>
                <th  scope="col">Mobile Memory</th>
                <th  scope="col">Mobile OS</th>
                <th  scope="col">Mobile Photo</th>
                <th  scope="col">Mobile Description</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${mobiles}" var="mobile">
                <tr>
                    <td><c:out value="${mobile.mobileId}" /></td>
                    <td><c:out value="${mobile.mobileModel}" /></td>
                    <td><c:out value="${mobile.mobileProducer}" /></td>
                    <td><c:out value="${mobile.mobileProcessor}" /></td>
                    <td><c:out value="${mobile.mobileScreen}" /></td>
                    <td><c:out value="${mobile.mobileCamera}" /></td>
                    <td><c:out value="${mobile.mobileSound}" /></td>
                    <td><c:out value="${mobile.mobileMemory}" /></td>
                    <td><c:out value="${mobile.mobileOs}" /></td>
                    <td><img src="data:image/png;base64,${mobile.base64Image}" width="90"  height="90"/></td>
                    <td><c:out value="${mobile.mobileDescription}" /></td>
                    
                    <!-- data:image/jpeg;base64, width="90" height="90" -->
                    
                    
                    <td><a href="MobileController?action=edit&mobileId=<c:out value="${mobile.mobileId}"/>">Update</a></td>
                    <td><a href="MobileController?action=delete&mobileId=<c:out value="${mobile.mobileId}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        
        <button class="btn btn-outline-primary" > <a href="MobileController?action=insert">Add Mobile</a></button>
        
       
    </body>
</html>
