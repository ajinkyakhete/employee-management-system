<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <style>
        /* Add CSS styles here */
              body {
                /* Replace with your own image */
                background-size: cover;
            }
        b {
            font-size: 1.2em;
            font-weight: bold;
        }
                table {
            border-collapse: collapse;
            width: 60%;
            margin: 50px auto;
            font-family: Arial, sans-serif;
            color: #444;
            border: 1px solid #f2f5f7;
        }

        td, th {
            border: 1px solid #f2f5f7;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f5f7;
            color: #444;
        }

        b {
            font-size: 1.2em;
            font-weight: bold;
        }
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
    </head>

    <body>
        <%
            String id = (String) request.getAttribute("id");
            String title = (String) request.getAttribute("title");
            String name = (String) request.getAttribute("name");
            String dob = (String) request.getAttribute("dob");
            String doj = (String) request.getAttribute("doj");
            String address = (String) request.getAttribute("address");
            String city = (String) request.getAttribute("city");
            String state = (String) request.getAttribute("state");
            String pincode = (String) request.getAttribute("pincode");
            String mobile_no = (String) request.getAttribute("mobile_no");
            String mail_id = (String) request.getAttribute("mail_id");
            String pan_no = (String) request.getAttribute("pan_no");
        %>
        <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Employee Report</h2></td>
            </tr>
            <tr>
                <td><b>ID : </b></td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td><b>Title : </b></td>
                <td><%=title%></td>
            </tr>
            <tr>
                <td><b>Name : </b></td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td><b>DOB : </b></td>
                <td><%=dob%></td>
            </tr>
            <tr>
                <td><b>DOJ : </b></td>
                <td><%=doj%></td>
            </tr>
            <tr>
                <td><b>Address : </b></td>
                <td><%=address%></td>
            </tr>
            <tr>
                <td><b>City : </b></td>
                <td><%=city%></td>
            </tr>
            <tr>
                <td><b>State : </b></td>
                <td><%=state%></td>
            </tr>
            <tr>
                <td><b>Pincode : </b></td>
                <td><%=pincode%></td>
            </tr>
            <tr>
                <td><b>Mobile No. : </b></td>
                <td><%=mobile_no%></td>
            </tr>
            <tr>
                <td><b>Mail ID : </b></td>
                <td><%=mail_id%></td>
            </tr>
            <tr>
                <td><b>Pan No. : </b></td>
                <td><%=pan_no%></td>
            </tr>
        </table>
            <div align="center">
    <button onclick="printDiv('printable')">Print</button>

                </div>
    </div>
    </body>
</html>