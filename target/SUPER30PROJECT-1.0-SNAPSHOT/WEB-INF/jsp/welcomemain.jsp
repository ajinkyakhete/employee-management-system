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
    <title>Welcomemain Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
        *{
    margin: 0;
    padding: 0;
    font-family: 'poppins',sans-serif;
    box-sizing: border-box;
}
.hero{
    background: #1d2026;
    min-height: 100vh;
    width: 100%;
    color: #fff;
    position: relative;
}
nav{
    display: flex;
    align-items: center;
    padding: 20px 8%;
}
nav .menu-img{
    width: 25px;
    margin-right: 20px;
    cursor: pointer;
}
nav .logo{
    width: 160px;
    cursor: pointer;
}
nav ul{
    flex: 1;
    text-align: right;
}
nav ul li{
    display: inline-block;
    list-style: none;
    margin: 0 20px;
}
nav ul li a{
    text-decoration: none;
    color: #fff;
}
button{
    background: #efefef;
    height: 30px;
    width: 60px;
    border-radius: 60px;
    border: 0;
    outline: 0;
    cursor: pointer;
    transition: background 0.5s;
}
button span{
    display: block;
    background: #999;
    height: 26px;
    width: 26px;
    border-radius: 50%;
    margin-left: 2px;
    transition: background 0.5s, margin-left 0.5s;
}
.lamp-container{
    position: absolute;
    top: -20px;
    left: 22%;
    width: 200px;
}
.lamp{
    width: 100%;
}
.light{
    position: absolute;
    top: 97%;
    left: 50%;
    transform: translateX(-50%);
    width: 350px;
    margin-left: -10px;
    margin-top: 30px;
    opacity: 0;
    transition: opacity 0.5s;
}
.text-container{
    max-width: 600px;
    margin-top: 7%;
    margin-left: 50%;
}
.text-container h1{
    font-size: 80px;
    font-weight: 400;
}
.text-container button{
    background: #00986f;
    padding: 30px 50px;
    color: #fff;
    font-size: 18px;
    margin-top: 10px;
    border-radius: 30px;
    align-items: center;
}
.text-container button span{
    background: #00986f;
    margin-top: -15px;
    margin-left: -25px;
    

}
.control{
    display: flex;
    align-items: center;
    justify-content: flex-end;
    margin-top: 150px;
}
.control .line{
    width: 250px;
    height: 4px;
    background: #fff;
    margin: 0 20px;
    border-radius: 2px;
}
.control .line span{
    width: 50%;
    height: 8px;
    margin-top: -2px;
    border-radius: 4px;
    background: #00986f;
    display: block;
}
.active{
    background: green;
}
.active span{
    background: #fff;
    margin-left: 31px;
}
.on{
    opacity: 1;
}


form{
    display: inline-block;
    padding-right: 10px;
}   
        
        
        </style>
</head>

<body>
    <div class="hero">
        <nav>
            <img src="img/menu.png" class="menu-img">
            <img src="img/logo.png" class="logo">
            <ul>
                <li><a href="">Latest</a></li>
                <li><a href="">Modern</a></li>
                <li><a href="">Contemporary</a></li>
                <li><a href="">Affordable</a></li>
            </ul>
            <button type="button" onclick="toggleBtn()" id="btn"><span></span></button>
        </nav>


        <div class="lamp-container">
            <img src="img/curved-arrow-with-broken-line.png" class="lamp">
            <img src="img/skill.png" class="light" id="light">
        </div>



        <div class="text-container">
            <h1>Employee<br>Management System</h1>
           
                <form:form action="login" method="post">
                    <button type="submit"><span>Login</span></button>
                </form:form>
                <form:form action="signup" method="post">
                    <button type="submit"><span>SignUp</span></button>
                </form:form>
    

            <div class="control">
                <p>04</p>
                <div class="line"><span></span></div>
                <p>05</p>
            </div>
        </div>


    </div>
    <script>
        var btn = document.getElementById("btn");
        var light = document.getElementById("light");
        function toggleBtn(){
            btn.classList.toggle("active");
            light.classList.toggle("on");
        }
    </script>
</body>
</html>
