<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grade Details Success</title>
</head>
<body>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Grade Added Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Grade ID:</td>
                <td>${gradeForm.grade_id}</td>
            </tr>
            <tr>
                <td>Grade Name:</td>
                <td>${gradeForm.grade_name}</td>
            </tr>
            <tr>
                <td>Grade Short Name:</td>
                <td>${gradeForm.grade_short_name}</td>
            </tr>
            <tr>
                <td>Basic:</td>
                <td>${gradeForm.grade_basic}</td>
            </tr>
            <tr>
                <td>Travel Allowance:</td>
                <td>${gradeForm.grade_ta}</td>
            </tr>
            <tr>
                <td>Dearness Allowance:</td>
                <td>${gradeForm.grade_da}</td>
            </tr>
            <tr>
                <td>House Rent Allowance:</td>
                <td>${gradeForm.grade_hra}</td>
            </tr>
            <tr>
                <td>Medical Allowance:</td>
                <td>${gradeForm.grade_ma}</td>
            </tr>
            <tr>
                <td>Bonus:</td>
                <td>${gradeForm.grade_bonus}</td>
            </tr>
            <tr>
                <td>Provident Fund:</td>
                <td>${gradeForm.grade_pf}</td>
            </tr>
            <tr>
                <td>Professional Tax:</td>
                <td>${gradeForm.grade_pt}</td>
            </tr>
        </table>
    </div>
</body>
</html>