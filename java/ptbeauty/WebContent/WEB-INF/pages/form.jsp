<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>


<link href="resources/css/bootstrap.min.css" rel="stylesheet">



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="header col-md-12">
				<div class="logo col-md-4">
					<a href="home"> <img src="resources/img/logobmw.jpg">
						<h3>Bayerische Motoren Werke</h3>
					</a>
				</div>
				<div class=" text col-md-7"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<ul class="nav nav-tabs">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>Home
				</a></li>
				<li class="active"><a href="form"> <span
						class="glyphicon glyphicon-plus"></span>Create
				</a></li>
				<li><a href="list"><span
						class="glyphicon glyphicon-th-list"></span>List</a></li>

			</ul>
		</div>
	</div>




	<c:url var="userRegistration" value="saveUser.html" />
	<div class ="container">
	<div class ="row">
	<form:form id="registerForm" modelAttribute="employee" method="post"
		action="register">
	
		<div class="form-group">
			<form:label path="fullname" class="col-sm-2">Full Name:</form:label>
			<div class="col-sm-5">
				<form:input path="fullname" class="control" name="fullname"/>
			</div>
		</div>
		<%--  <div class="form-group">
                    <form:label path="date" class="col-sm-2">Date:</form:label>
                    <div class="col-sm-5">
                        <form:input path="date" class="control" id="datepicker" />             
                    </div>
                </div>  --%>
		<%--  <div class="form-group">
                    <form:label path="gender" class="col-sm-2">Gender:</form:label>
                    <div class="col-sm-5">
                        <form:label path="gender" class="radio-inline">
                            <form:input path="gender" type="radio" name="optradio" />Male</form:label>
                        <form:label path="gender" class="radio-inline">
                            <form:input path="gender" type="radio" name="optradio" />Female</form:label>
                    </div>
                </div>  --%>

		<div class="form-group">
			<form:label path="address" class="col-sm-2">Address:</form:label>
			<div class="col-sm-5">
				<form:input path="address" class="control" name="address" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="email" class="col-sm-2">Email:</form:label>
			<div class="col-sm-5">
				<form:input path="email" class="control" placeholder="abc@gmail.com" name="email" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="phone" class="col-sm-2">Phone:</form:label>
			<div class="col-sm-5">
				<form:input path="phone" class="control" name="phone" />
			</div>
		</div>
		

		<button type="submit" class=" col-sm-2 btn btn-default"
			value="register">Save</button>
		<button type="reset" class="col-sm-2 btn btn-default">Reset</button>
	</form:form>
</div>
</div>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<!-- <script src="js/app.js"></script>-->
	<script type="text/javascript">
		$(document).ready(function() {

			$('#datepicker').datepicker({
				format : "mm/dd/yyyy"
			});

		});
	</script>
	<script type="text/javascript">
    $(document).ready(function(){
        $("#registerForm").validate({
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
</body>
</html>
