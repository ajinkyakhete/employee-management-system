
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update employee</title>
        <link rel="stylesheet" href="css/gradedetailspage.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style>
    input,select{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
    font-family: 'Poppins',sans-serif;
}

input:focus,select {
    background-color: #ddd;
    outline: none;
}
</style>
    </head>
    <body>
        <form style="border:1px solid #ccc" action="processupdatetitle" method="post">
            <div class="container">
                <div class="subcontainer">
                    <h1>Welcome Admin</h1>
                    <h2>Update Title</h2>
                </div>
                <hr>
                                
                <label for="emp_id"><b>Enter Employee ID</b></label>
                <input type="text "placeholder="Enter Employee ID" name="emp_id"/>
                
                <label for="selecttitle"><b>Select title you want to update ?</b></label>
                <select placeholder="Select Title" name="selecttitle">
                    <option>- Select -</option>
                    <option>Full Stack Developer</option>
                    <option>Designer</option>
                    <option>IT Manager</option>
                    <option>System Administrator</option>
                    <option>Project Manager</option>
                    <option>Software Engineer</option>
                    <option>Frontend Developer</option>
                    <option>Backend Developer</option>
                </select>

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" value="signup">Submit</button>
                </div>
            </div>
        </form>
    </body>
</html>