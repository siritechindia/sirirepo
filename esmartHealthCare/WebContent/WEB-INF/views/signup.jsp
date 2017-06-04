
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <form action="/savedepartmet">
First Name<span style= "color:red" >*</span>:<input type="text" name="firstname"><br>
Middile Name:<input type="text" name="lastname"><br>
Last Name<span style= "color:red" >*</span>:<input type="text" name="lastname"><br>
Email<span style= "color:red" >*</span>:<input type="text" name="email"><br>
UserId<span style= "color:red" >*</span>:<input type="text" name="userid"><br>
Password<span style= "color:red" >*</span>:<input type="password" name="pwd"><br>
MobileNumber<span style= "color:red" >*</span>:<input type="text" name="mnumber"><br>
Gender<span style= "color:red" >*</span>:<input type="radio" name="radioValue" checked="checked">male<input type="radio" name="radioValue">female<br>
Department:<select style="width:300px">
<option>${deptList}</option>
</select>
<core:forEach items="${deptList}" var="deptbean">
<option>${deptbean.getDeptName()}</option>
</core:forEach></select><br>
<input type="checkbox" name="chbox"><span>accept terms and conditions</span><br>
<input type="submit" value="Submit"/>
<input type="submit" value="Cancel"/>

</form> --%>
<form:form action="signupPage" commandName="signup" method="POST">
First Name<form:input path="firstname"/><br>
Middile Name:<form:input path="middlename"/><br>
Lastname<form:input path="lastname"/><br>
Email<form:input path="email"/><br>
User Id<form:input path="userid"/><br>
Password<form:input path="password"/><br>
Mobile No<form:input path="mobilenumber"/><br>
<form:radiobutton path="gender"  value="male"/>Male
<form:radiobutton path="gender" value="female"/>Female<br>
department:<form:select path="department"><br>
<form:option value="-" label="--Select phone"/>
<form:options items="${deptList}"/>
</form:select>
<form:checkbox path="acceptTerm" value="accept terms and conditions" />accept terms and conditions<br>
<input type="submit" value="Submit"/>
<input type="submit" value="Cancel"/><br><br><br><br>
<div style="color: green">
${message}
</div>
</form:form>
</body>
</html>