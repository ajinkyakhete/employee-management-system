<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DepartmentDetails Form</title>
        <link rel="stylesheet" href="css/departmentdetailspage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    </head>
    <body>
        <form:form style="border:1px solid #ccc" action="processformdepartmentdetails" method="post" commandName="departmentForm">
            <div class="container">
                <div class="subcontainer">
                    <h1>Welcome Admin</h1>
                    <h2>Department Details</h2>
                </div>
                <hr>
                
                <label for="userid"><b>Department ID</b></label>
                <form:input placeholder="Enter Department ID" name="userid" path="dept_id" />
                
                <label for="userid"><b>Department Name</b></label>
                <form:input placeholder="Enter Department Name" name="userid" path="dept_name"/>

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" value="signup">Submit</button>
                </div>
            </div>
        </form:form>
    </body>
</html>