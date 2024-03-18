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
        <title>EmployeeDetails Form</title>
        <link rel="stylesheet" href="css/employeedetailspage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style>
            input[type=text], input[type=password] , input[type=date],select{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
    font-family: 'Poppins',sans-serif;
}

input[type=text]:focus, input[type=password], input[type=date]:focus,select {
    background-color: #ddd;
    outline: none;
}
</style>
    </head>
    <body>
        <form:form style="border:1px solid #ccc" action="processformemployeedetails" method="post" commandName="employeeForm">
            <div class="container">
                <div class="subcontainer">
                    <h1>Welcome Admin</h1>
                    <h2>Employee Details</h2>
                </div>
                <hr>
                
                <label for="userid"><b>Employee ID</b></label>
                <form:input placeholder="Enter Employee ID" name="userid" path="emp_id" />
                
                <label for="userid"><b>Employee Title</b></label>
                <form:select placeholder="Enter Employee Title" name="userid" path="emp_title" items="${list1}" />

                <label for="name"><b>Employee Name</b></label>
                <form:input placeholder="Enter Employee Name" name="name" path="emp_name" />

                <label for="email"><b>Date of Birth</b></label>
                <form:input type="date" placeholder="Enter Date of Birth" name="email" path="emp_dob" />

                <label for="psw"><b>Date of Joining</b></label>
                <form:input type="date" placeholder="Enter Date of Joining" name="psw" path="emp_doj" />
                
                <label for="usertype"><b>Address</b></label>
                <form:input placeholder="Enter Address" name="usertype" path="emp_address" />
                
                <label for="name"><b>City</b></label>
                <form:input placeholder="Enter City" name="name" path="emp_city" />

                <label for="email"><b>State</b></label>
                <form:select placeholder="Enter State" name="email" path="emp_state" items="${list2}" />

                <label for="psw"><b>Pincode</b></label>
                <form:input placeholder="Enter Pincode" name="psw" path="emp_pincode" />
                
                <label for="usertype"><b>Mobile No.</b></label>
                <form:input placeholder="Enter Mobile No." name="usertype" path="emp_mobile_no" />
                
                <label for="name"><b>Email ID</b></label>
                <form:input placeholder="Enter Email ID" name="name" path="emp_mail_id" />

                <label for="email"><b>Pan Card No.</b></label>
                <form:input placeholder="Enter Pan Card No." name="email" path="emp_pan_no" />

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" value="signup">Submit</button>
                </div>
            </div>
        </form:form>
    </body>
</html>