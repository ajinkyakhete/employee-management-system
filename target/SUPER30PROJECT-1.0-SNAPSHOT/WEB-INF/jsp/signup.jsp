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
        <title>Sign-up Form</title>
        <link rel="stylesheet" href="css/signuppage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    </head>
    <body style="background-image: url(img/Professional.jpg);
          background-size: cover;">
        <form:form style="border:0px solid #ccc" action="processformsignup" method="post" commandName="userForm">
            <div class="container" style="color: white">
                <div class="subcontainer" style="color: white">
                    <h1>Employee Database And Payroll Management System</h1>
                    <h2>Sign Up</h2>
                </div>
                <p style="color: white">Please fill in this form to create an account.</p>
                <hr>
                
                <label style="color: white" for="userid"><b>User ID</b></label>
                <form:input placeholder="Enter User ID" name="userid" path="user_id" />

                <label style="color: white" for="name"><b>Name</b></label>
                <form:input placeholder="Enter your first and last name" name="name" path="username" />

                <label style="color: white" for="email"><b>Email</b></label>
                <form:input placeholder="Enter Email" name="email" path="email_id" />

                <label style="color: white" for="psw"><b>Password</b></label>
                <form:password placeholder="Enter Password" name="psw" path="password" />
                
                <label style="color: white" for="usertype"><b>User-type</b></label>
                <form:input placeholder="Enter User-type" name="usertype" path="usertype" />
                
                <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                <div class="clearfix">
                    <button style="background-color: orangered; color: black" type="button" class="cancelbtn">Cancel</button>
                    <button style="background-color: gray; color: black" type="submit" class="signupbtn" value="signup">Sign Up</button>
                </div>
            </div>
        </form:form>
    </body>
</html>