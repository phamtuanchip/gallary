<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bootstrap 101 Template</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	 <div class="container">
       <div class="row">
        <div class="header col-md-12">
            <div class="logo col-md-4">
                <a href="home">
                    <img src="resources/img/logobmw.jpg">
                    <h3>Bayerische Motoren Werke</h3>
                </a>
            </div>
            <div class=" text col-md-8">
                <h3> Sheer Driving Pleasure </h3>
            </div>
        </div>
        </div>
    </div>

    <div class="container">
       <div class="row">
        <ul class="nav nav-tabs">
            <li><a href="home"> <span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="form"> <span class="glyphicon glyphicon-plus"></span>Create</a></li>
            <li class="active"><a href="list"><span class="glyphicon glyphicon-th-list"></span>List</a></li>
            
        </ul>
        </div>
    </div>
    <div class="container">
        <div class="row">
         <c:url var="userRegistration" value="saveUser.html" /> 
            <form:form class="form-horizontal" id="formdemo"  modelAttribute="employee" method="post"  
   			action="update">
   			<div class="form-group">
                    <form:label path="id" class="col-sm-2">Id:</form:label>
                    <div class="col-sm-5">
                    	<form:input path="id" class="control"   value="${carObject.id}" />
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="fullname" class="col-sm-2">Full Name:</form:label>
                    <div class="col-sm-5">
                    	<form:input path="fullname" class="control" name="fullname"  value="${carObject.fullname}" />
                    </div>
                </div>
                
            
                
                 <div class="form-group">
                    <form:label path="address" class="col-sm-2">Address:</form:label>
                    <div class="col-sm-5">
                    <form:input path="address" class="control" name="address" value="${carObject.address}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="email" class="col-sm-2">Email:</form:label>
                    <div class="col-sm-5">
                    <form:input path="email" class="control" name="email" value="${carObject.email}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="phone" class="col-sm-2">Phone:</form:label>
                    <div class="col-sm-5">
                    <form:input path="phone" class="control" name="phone" value="${carObject.phone}"/>
                    </div>
                </div>
                   
               
                <button type="submit" class=" col-sm-2 btn btn-default" value="update">Update</button>
                <button type="reset" class="col-sm-2 btn btn-default">Reset</button>
            </form:form>
        </div>
    </div>
    
    	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {

			$('#datepicker').datepicker({
				format : "mm/dd/yyyy"
			});

		});
	</script>
	<script type="text/javascript">
    $(document).ready(function(){
        $("#formdemo").validate({
        rules:{
            fullname:"required",
            address:{
            	required: true,
            	minlength:5
            },
            email: {
            	 required: true,
            	 email: true
            	 },
            phone:{
            	required: true,
            	minlength:5
            },
            
        },
            messages:{
                fullname:"Vui lòng Nhập Tên",
                
                address:{
                	required: "Vui lòng nhập địa chỉ",
                	minlength: "Địa chỉ ngắn vậy, chém gió ah?"
                },
                email: 
               	  "Vui lòng nhập Email",
               	 phone:{
                 	required: "Vui lòng nhập số điện thoại",
                 	minlength:"Bốc phét số điện thoại à?"
                 },
               	 
            }
            });
    });
    </script>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
</body>
</html>
