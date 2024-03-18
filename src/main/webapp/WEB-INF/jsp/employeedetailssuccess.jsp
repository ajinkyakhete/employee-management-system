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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Details Success</title>
</head>
<style>


button {
    background-color: #04AA6D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}
    </style>
<script>
  function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
    window.print();
    document.body.innerHTML = originalContents;
  }
</script>
<body>
    <div align="center" id="printable">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Employee Added Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Employee ID:</td>
                <td>${employeeForm.emp_id}</td>
            </tr>
            <tr>
                <td>Employee Title:</td>
                <td>${employeeForm.emp_title}</td>
            </tr>
            <tr>
                <td>Employee Name:</td>
                <td>${employeeForm.emp_name}</td>
            </tr>
            <tr>
                <td>Date of Birth:</td>
                <td>${employeeForm.emp_dob}</td>
            </tr>
            <tr>
                <td>Date of Joining:</td>
                <td>${employeeForm.emp_doj}</td>
            </tr>
            <tr>
                <td>Address:</td>
                <td>${employeeForm.emp_address}</td>
            </tr>
            <tr>
                <td>City:</td>
                <td>${employeeForm.emp_city}</td>
            </tr>
            <tr>
                <td>State:</td>
                <td>${employeeForm.emp_state}</td>
            </tr>
            <tr>
                <td>Pincode:</td>
                <td>${employeeForm.emp_pincode}</td>
            </tr>
            <tr>
                <td>Mobile No.:</td>
                <td>${employeeForm.emp_mobile_no}</td>
            </tr>
            <tr>
                <td>Email ID:</td>
                <td>${employeeForm.emp_mail_id}</td>
            </tr>
            <tr>
                <td>Pan Card No.:</td>
                <td>${employeeForm.emp_pan_no}</td>
            </tr>
        </table>
    </div>
            <hr/>
            <div align="center">
    <button  onclick="printDiv('printable')">Print</button>

            <form action="welcome" method="post">
                <button class="login-btn" style="background-color: #ddd; color: black" type="submit">Cancel</button>
            <form>
                </div>
</body>
</html>