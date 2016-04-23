<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                    
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <ul class="nav nav-tabs">
                <li><a href="home"><span class="glyphicon glyphicon-home"></span>Home</a>
                </li>
                <li><a href="form"><span class="glyphicon glyphicon-plus"></span>Create</a>
                </li>
                <li class="active"><a href="list"><span class="glyphicon glyphicon-th-list"></span>List</a>
                </li>

            </ul>
        </div>
    </div>
	

		<div class="container">
        <div class="row">

		<c:if test="${!empty carList}">
			<table class="table table-hover">
				<thead>
                    <tr>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="selectall">
                                </label>
                            </div>
                        </th>
                        <th>ID</th>
                        <th>Full Name</th>                 
                        <th>Date</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Edit</th>
                        <th>Delete</th>

                    </tr>
                </thead>
				<c:forEach items="${carList}" var="user">
		<tr>
						<td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="cb1">
                                </label>
                            </div>
                        </td>
						<td><c:out value="${user.id}" />
						<td><c:out value="${user.fullname}" />
						</td>
						
						 <td><c:out value="${user.date}" />
						</td>
						<%-- <td><c:out value="${user.gender}" />
						</td>  --%>
						<td><c:out value="${user.address}" />
						</td>
						<td><c:out value="${user.email}" />
						</td>
						<td><c:out value="${user.phone}" />
						</td>
						<td>
                            <a href="edit?id=${user.id}">
                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span> Edit</button>
                            </a>
                        </td>
						<td>
                        <a href="delete?id=${user.id}">
                            <button type="reset" class="btn btn-default"><span class="glyphicon glyphicon-remove-circle"></span>Delete</button>
                            </a>
                        </td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		</div>
		</div>
		<script src="resources/js/bootstrap.min.js"></script>
		<script>
		
        $(document).ready(function() {
            $('#selectall').on('click', function() {
                if (this.checked) {
                    $('.cb1').each(function() {
                        this.checked = true;
                    });
                } else {
                    $('.cb1').each(function() {
                        this.checked = false;
                    });
                }
            });

            $('.cb1').on('click', function() {
                if ($('.cb1:checked').length == $('.cb1').length) {
                    $('#selectall').prop('checked', true);
                } else {
                    $('#selectall').prop('checked', false);
                }
            });
        });
    </script>


		
</body>
</html>
