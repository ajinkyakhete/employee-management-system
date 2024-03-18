<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="css/welcomepage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
                <style>
          .login-btn {
  transition: all 0.3s ease-in-out;
}

.login-btn:active {
  transform: scale(0.95);
}
</style>
    </head>
    <body style="background-image: url(img/Fullblack.jpg);">
        <div class="imgcontainer" style="color: white">
            <h2>Welcome Admin</h2>
        </div>
        <div class="container" style="color: white">
            <form:form action="employeedetails" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Add new employee</button>
            </form:form>
            <form:form action="departmentdetails" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Add new department</button>
            </form:form>
            <form:form action="gradedetails" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Add new grade</button>
            </form:form>
            <form:form action="employeegradedetails" method="post">
                <button class="login-btn"style="background-color: #ddd; color: black" type="submit">Employee grade details</button>
            </form:form>
            <form:form action="employeesalarydetails" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Prepare monthly salary</button>
            </form:form>
            <form:form action="generatereport" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Generate report</button>
            </form:form>
            <form:form action="updateemployee" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Update Employee Details</button>
            </form:form>
            <form:form action="deleteemployee" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Delete Employee Details</button>
            </form:form>
            <form:form action="displayemployee" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Display Employee Details</button>
            </form:form>
        </div>
    </body>
</html>
