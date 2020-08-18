<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>BookaZon | Sold Ads</title>
</head>
<body>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		
	<div class="bg-image"></div>
<div class="bg-text">	
 <div class="topnav">
 	
  <a  href="ahome">Home</a>
  <a href="searchbkpre">Book Catalog</a>
  <a href="admactad">Active Ads</a>
  <a class="active" href="sale">Sales</a>
  <a href="reviewlist">Books to Review</a>
  <a href="singlebookadmin.jsp">Add new Book</a>
  
  <div class="dropdown">
  	<button class="dropbtn">${username}</button>
  	<div class="dropdown-content">
  	  <a href="userpr">My Profile</a>
      <a href="break">Logout</a>
    </div>
  	
  </div>
  
</div> 
<center>
	<table border="1" cellpadding="5">
            <caption><h2>All Sold Ads</h2></caption>
            <tr>
                <th>Title</th>
                <th>Publication</th>
                <th>Price</th>
                
            </tr>
             <c:forEach var="ad" items="${adlist}">
            
                <tr>
                    <td><a href="soldindi?adid=<c:out value="${ad.aid}"/>"><c:out value="${ad.title}" /></a></td>
                    <td><c:out value="${ad.publication}"/></td>
                    <td><c:out value="${ad.price}" /></td>
                    
                </tr>
            </c:forEach>
        </table>
</center>
</div>
</body>
</html>