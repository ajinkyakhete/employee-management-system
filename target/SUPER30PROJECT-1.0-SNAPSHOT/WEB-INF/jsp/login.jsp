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
        <title>Login Form</title>
        <link rel="stylesheet" href="css/loginpage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style>
  .password-container {
    position: relative;
  }
  
  .show-password {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
  }
  
  .show-password .fa-eye {
    font-size: 16px;
  }
  #login-btn {
  transition: all 0.3s ease-in-out;
}

#login-btn:active {
  transform: scale(0.95);
}
/*.username {
  transition: all 0.3s ease-in-out;
}*/

/*.username:focus {

  width: 1500px;
}*/
  .label1 {
  transition: all 0.3s ease-in-out;
}

.label1:hover{
  font-size: 20px;
}
.error {
  display: none;
  color: red;
  font-size: 14px;
  margin-top: 5px;
}
.error.active {
  display: block;
}
</style>
<script type="text/javascript">
  function showPassword() {
    var password = document.getElementById("password");
    var eye = document.querySelector(".fa-eye");
    if (password.type === "password") {
      password.type = "text";
      eye.classList.remove("fa-eye");
      eye.classList.add("fa-eye-slash");
    } else {
      password.type = "password";
      eye.classList.remove("fa-eye-slash");
      eye.classList.add("fa-eye");
    }
  }

</script>
    </head>
    <body style="background-image: url(img/Professional.jpg); border: 0px solid black; background-size: cover;">
        <form:form name="form" action="processformlogin" onsubmit="return validateForm()" method="post" commandName="userForm" style="border: 0px solid black" >
            <div style="color: white" class="imgcontainer">
                <h2>Employee Database And Payroll Management System</h2>
                <h2>Login In</h2>
            </div>
            <div class="container" style="color: white;">
                
                <label class="label1" for="uname"><b>Username</b></label>
                <form:input class="username" placeholder="Enter Username" name="uname" path="username" />
                <div id="nameError" class="error"></div>

                <label class="label1" for="psw"><b>Password</b></label>
                <form:password class="password" placeholder="Enter Password" name="psw" path="password" />
                <span class="show-password" onclick="showPassword()">
                    <i class="fa fa-eye"></i>
                </span>
                <div id="passwordError" class="error"></div>

                <button id="login-btn" style="background-color: gray; color: black" type="submit" value="login">Login</button>
            </div>
            <div class="container"">
                <button style="background-color: orangered; color: black" type="button" class="cancelbtn">Cancel</button>
                <span style="color: white" class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form:form>
    </body>
</html>