<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Grade Details Success</title>
</head>
<body>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Employee Grade Details Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Transaction ID:</td>
                <td>${employeeGradeForm.transaction_id}</td>
            </tr>
            <tr>
                <td>Employee ID:</td>
                <td>${employeeGradeForm.emp_id}</td>
            </tr>
            <tr>
                <td>Employee Department ID:</td>
                <td>${employeeGradeForm.emp_dept_id}</td>
            </tr>
            <tr>
                <td>Employee Grade ID:</td>
                <td>${employeeGradeForm.emp_grade_id}</td>
            </tr>
            <tr>
                <td>Employee from date:</td>
                <td>${employeeGradeForm.emp_from_date}</td>
            </tr>
            <tr>
                <td>Employee to date:</td>
                <td>${employeeGradeForm.emp_to_date}</td>
            </tr>
        </table>
    </div>
</body>
</html>