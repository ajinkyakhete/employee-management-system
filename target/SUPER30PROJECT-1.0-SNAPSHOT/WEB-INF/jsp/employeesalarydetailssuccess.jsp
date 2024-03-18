<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Salary Details Success</title>
</head>
<body>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Employee Salary Details Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Transaction ID:</td>
                <td>${employeeSalaryForm.transaction_id}</td>
            </tr>
            <tr>
                <td>Employee ID:</td>
                <td>${employeeSalaryForm.emp_id}</td>
            </tr>
            <tr>
                <td>Employee Salary Month:</td>
                <td>${employeeSalaryForm.emp_salary_month}</td>
            </tr>
            <tr>
                <td>Employee Salary Year:</td>
                <td>${employeeSalaryForm.emp_salary_year}</td>
            </tr>
            <tr>
                <td>Employee Salary eimbursment date:</td>
                <td>${employeeSalaryForm.emp_salary_eimbursment_date}</td>
            </tr>
            <tr>
                <td>Employee Dept ID:</td>
                <td>${employeeSalaryForm.emp_dept_id}</td>
            </tr>
            <tr>
                <td>Employee Grade ID:</td>
                <td>${employeeSalaryForm.emp_grade_id}</td>
            </tr>
            <tr>
                <td>Basic:</td>
                <td>${employeeSalaryForm.emp_basic}</td>
            </tr>
            <tr>
                <td>Dearness Allowance:</td>
                <td>${employeeSalaryForm.emp_da}</td>
            </tr>
            <tr>
                <td>Travel Allowance:</td>
                <td>${employeeSalaryForm.emp_ta}</td>
            </tr>
            <tr>
                <td>House Rent Allowance:</td>
                <td>${employeeSalaryForm.emp_hra}</td>
            </tr>
            <tr>
                <td>Medical Allowance:</td>
                <td>${employeeSalaryForm.emp_ma}</td>
            </tr>
            <tr>
                <td>Bonus:</td>
                <td>${employeeSalaryForm.emp_bonus}</td>
            </tr>
            <tr>
                <td>Provident Fund:</td>
                <td>${employeeSalaryForm.emp_pf}</td>
            </tr>
            <tr>
                <td>Professional Tax:</td>
                <td>${employeeSalaryForm.emp_pt}</td>
            </tr>
            <tr>
                <td>Gross:</td>
                <td>${employeeSalaryForm.emp_gross}</td>
            </tr>
            <tr>
                <td>Total Salary:</td>
                <td>${employeeSalaryForm.emp_total_salary}</td>
            </tr>
        </table>
    </div>
</body>
</html>