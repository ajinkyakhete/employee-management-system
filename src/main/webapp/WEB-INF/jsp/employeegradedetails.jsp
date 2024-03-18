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
        <title>EmployeeGradeDetails Form</title>
        <link rel="stylesheet" href="css/employeegradedetailspage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style>
            
* {
    box-sizing: border-box
}

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

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}


button {
    background-color: #04AA6D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}


.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}


.cancelbtn, .signupbtn {
    float: left;
    width: 50%;
}


.container {
    padding: 16px;
    font-family: 'Poppins',sans-serif;
}
.subcontainer {
    text-align: center;
}
.h1,.h2{
    text-align: center;
}


.clearfix::after {
    content: "";
    clear: both;
    display: table;
}


@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
        width: 100%;
    }
}
        </style>
    </head>
    <body>
        <form:form style="border:1px solid #ccc" action="processformemployeegradedetails" method="post" commandName="employeeGradeForm">
            <div class="container">
                <div class="subcontainer">
                    <h1>Welcome Admin</h1>
                    <h2>Employee Grade Details</h2>
                </div>
                <hr>
                
                <label for="userid"><b>Transaction ID</b></label>
                <form:input placeholder="Enter Transaction ID" name="userid" path="transaction_id" />
                
                <label for="name"><b>Employee ID</b></label>
                <form:input placeholder="Enter Employee ID" name="name" path="emp_id" />

                <label for="email"><b>Employee Department ID</b></label>
                <form:input placeholder="Enter Employee Dept ID" name="email" path="emp_dept_id" />

                <label for="psw"><b>Employee Grade ID</b></label>
                <form:input placeholder="Enter Employee Grade ID" name="psw" path="emp_grade_id" />
                
                <label for="usertype"><b>Employee from date</b></label>
                <form:input type="date" placeholder="Enter from date" name="usertype" path="emp_from_date" />
                
                <label for="name"><b>Employee to date</b></label>
                <form:input type="date" placeholder="Enter to date" name="name" path="emp_to_date" />

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" value="signup">Submit</button>
                </div>
            </div>
        </form:form>
    </body>
</html>