<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login or Register</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/UserLoginorRegister.css">
	<style>
.error{
color:red;
font-family:sans-serif;
padding-left:10px 20px;
text-align:center;
position:center;
float: center;
}
</style>

</head>
<body style="background-image: url('<c:url value="WEB-INF/views/images/stock.jpg" />');">



<nav class="navbar navbar-inverse" role="navigation">
	<div class="navbar-inner">
	 <div class="container-fluid">
		<a class="navbar-brand" href="#" style="text-align:center; width:100%; font-size:50px; height:60px;">Stock Market Charting</a>
	</div>
	</div>
</nav>	

<div class="login-reg-panel">
		<div class="login-info-box">
			<h2 style="color:white;">Have an account?</h2>
			<label id="label-register" for="log-reg-show" style="color:white;">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2 style="color:white;">Don't have an account?</h2>
			
			<label id="label-login" for="log-login-show" style="color:white;">Register</label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<div class="login-show">
				<h2>LOGIN</h2>
				<form:form action="userlogin"   method="GET"  modelAttribute="user">
				<form:input path="userName" type="text" placeholder="User Name"></form:input>
				<form:input path="password" type="password" placeholder="Password"></form:input>
				<input type="submit" value="Login">
				<p>${message}</p>
				</form:form>
			</div>
			<div class="register-show">
				<h2 style="margin-top:-2px;">REGISTER</h2>
				<form:form action="saveUser"  method="POST"  modelAttribute="user">
				
				<form:input path="userName" type="text" placeholder="User Name" ></form:input>
				 <form:errors path="userName" cssClass="error"></form:errors>
				
				<form:input path="password" type="text" placeholder="Password" ></form:input>
				 <form:errors path="password" cssClass="error"></form:errors>
				
				<form:input path="email" type="text" placeholder="email" ></form:input>
				<form:errors path="email" cssClass="error"></form:errors>
				
				<form:input path="phoneNumber" type="text" placeholder="phoneNumber" ></form:input>
				<form:errors path="phoneNumber" cssClass="error"></form:errors>
				
				<br><input type="submit" onclick="myFunction()" value="Register">
				<p>${message}</p>
				</form:form>
			</div>
		</div>
	</div>
	
	<script  type="text/javascript">
		
    $(document).ready(function(){
        $('.login-info-box').fadeOut();
        $('.login-show').addClass('show-log-panel');
    });


    $('.login-reg-panel input[type="radio"]').on('change', function() {
        if($('#log-login-show').is(':checked')) {
            $('.register-info-box').fadeOut(); 
            $('.login-info-box').fadeIn();
            
            $('.white-panel').addClass('right-log');
            $('.register-show').addClass('show-log-panel');
            $('.login-show').removeClass('show-log-panel');
            
        }
        else if($('#log-reg-show').is(':checked')) {
            $('.register-info-box').fadeIn();
            $('.login-info-box').fadeOut();
            
            $('.white-panel').removeClass('right-log');
            
            $('.login-show').addClass('show-log-panel');
            $('.register-show').removeClass('show-log-panel');
        }
    });
	
	</script>
</body>
</html>