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
        <title>GradeDetails Form</title>
        <link rel="stylesheet" href="css/gradedetailspage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    </head>
    <body>
        <form:form style="border:1px solid #ccc" action="processformgradedetails" method="post" commandName="gradeForm">
            <div class="container">
                <div class="subcontainer">
                    <h1>Welcome Admin</h1>
                    <h2>Grade Details</h2>
                </div>
                <hr>
                
                <label for="userid"><b>Grade ID</b></label>
                <form:input placeholder="Enter Grade ID" name="userid" path="grade_id" />
                
                <label for="name"><b>Grade Name</b></label>
                <form:input placeholder="Enter Grade Name" name="name" path="grade_name" />

                <label for="email"><b>Grade Short Name</b></label>
                <form:input placeholder="Enter Grade Short Name" name="email" path="grade_short_name" />

                <label for="psw"><b>Basic</b></label>
                <form:input placeholder="Enter Basic" name="psw" path="grade_basic" />
                
                <label for="usertype"><b>Travel Allowance</b></label>
                <form:input placeholder="Enter Travel Allowance" name="usertype" path="grade_ta" />
                
                <label for="name"><b>Dearness Allowance</b></label>
                <form:input placeholder="Enter Dearness Allowance" name="name" path="grade_da" />

                <label for="psw"><b>HRA</b></label>
                <form:input placeholder="Enter House Rent Allowance" name="psw" path="grade_hra" />
                
                <label for="usertype"><b>Medical Allowance</b></label>
                <form:input placeholder="Enter Medical Allowance" name="usertype" path="grade_ma" />
                
                <label for="name"><b>Bonus</b></label>
                <form:input placeholder="Enter Bonus" name="name" path="grade_bonus" />

                <label for="email"><b>Provident Fund</b></label>
                <form:input placeholder="Enter Provident Fund" name="email" path="grade_pf" />
                
                <label for="email"><b>Professional Tax</b></label>
                <form:input placeholder="Enter Professional Tax" name="email" path="grade_pt" />

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" value="signup">Submit</button>
                </div>
            </div>
        </form:form>
    </body>
</html>