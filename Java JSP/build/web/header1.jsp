<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>
<head>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
 <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>
</head>
<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="index.jsp" class="brand"> <img src="./assets/img/examshow.png" alt="Exam Show" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Exam Show</h1>
<h3 class="brand" style="font-weight:bold;"><a href="home.jsp">Home</a></h3>
<h3 class="brand" style="font-weight:bold;" align="center"><a href="upcomingevents.jsp">Events<img src="assets/img/new.gif" border="0" style="margin-top: -10px""/></a></h3>
<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > logout </button>
</form>
<p class="pull-right" style="color:white;">
<br />
<%
   String username = (String)session.getAttribute("username");
    String fname = (String)session.getAttribute("facultyname");
    if(username!=null)
        {
    out.println("<b> Welcome , <a href='studentprofile.jsp' style='color:white'>" +username+ "</a></b>");
        }
    else
        {
        out.println("<b> Welcome , <a href='facultyprofile.jsp' style='color:white'>" +fname+ "</a></b>");
        }
    %>

&nbsp;&nbsp;

</p>

</div>
</div>

</div>