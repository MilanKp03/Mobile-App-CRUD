<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table border=1>
        <thead>
            <tr>
                <th>Mobile Id</th>
                <th>Mobile model</th>
                <th>Mobile Producer</th>
                <th>Mobile Processor</th>
                <th>Mobile Screen</th>
                <th>Mobile Camera</th>
                <th>Mobile Sound</th>
                <th>Mobile Memory</th>
                <th>Mobile OS</th>
                <th>Mobile Photo</th>
                <th>Mobile Description</th>
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
                    <td><img src="data:image/jpeg;base64, <c:out value='${mobile.base64Image}'/>" width="90" height="90"/></td>
                    <td><c:out value="${mobile.mobileDescription}" /></td>
                    
                    <!-- data:image/jpeg;base64, -->
                    
                    
                    <td><a href="MobileController?action=edit&mobileId=<c:out value="${mobile.mobileId}"/>">Update</a></td>
                    <td><a href="MobileController?action=delete&mobileId=<c:out value="${mobile.mobileId}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        
        <p><a href="MobileController?action=insert">Add Mobile</a></p>
        
       
    </body>
</html>
