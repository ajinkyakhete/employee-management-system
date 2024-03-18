<%@page import="com.pack.Records"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <title>Employee List</title>
    </head>
    <style>
        form {
            border: 0px solid #f1f1f1;
            font-family: 'Poppins',sans-serif;
        }

        input[type=text] {
            width: 20%;
            padding: 15px 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: lightsalmon;
            color: black;
            padding: 15px 10px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }

        /* Add a hover effect for buttons */
        button:hover {
            opacity: 0.8;
        }

        .container {
            padding: 16px;
            font-family: 'Poppins',sans-serif;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }
        td{
            background-color: lightgrey;
        }
    </style>
    <body>
        <div align="center">
            <h1>Displaying Employee List</h1>
            <form action="searchemployeebyname" method="post" align="center">
                <input type="text" name="searchName" placeholder="Enter employee name">
                <button type="submit" class="signupbtn" value="Search">Search</button>
            </form>
            <table border ="1" width="1450" align="center" cellspacing="0" cellpadding="10">
                <tr bgcolor="00FF7F">
                    <th><b>ID</b></th>
                    <th><b>Name</b></th>
                    <th><b>Title</b></th>
                    <th><b>DOB</b></th>
                    <th><b>DOJ</b></th>
                    <th><b>Address</b></th>
                    <th><b>City</b></th>
                    <th><b>State</b></th>
                    <th><b>Pincode</b></th>
                    <th><b>Mobile No.</b></th>
                    <th><b>Mail ID</b></th>
                    <th><b>Pan No.</b></th>
                </tr>
                <%ArrayList<Records> std
                        = (ArrayList<Records>) request.getAttribute("list");
                for (Records s : std) {%>
                <tr>
                    <td><%=s.getId()%></td>
                    <td><%=s.getName()%></td>
                    <td><%=s.getTitle()%></td>
                    <td><%=s.getDob()%></td>
                    <td><%=s.getDoj()%></td>
                    <td><%=s.getAddress()%></td>
                    <td><%=s.getCity()%></td>
                    <td><%=s.getState()%></td>
                    <td><%=s.getPincode()%></td>
                    <td><%=s.getMobile_no()%></td>
                    <td><%=s.getMail_id()%></td>
                    <td><%=s.getPan_no()%></td>


                </tr>
                <%}%>
            </table>
            <hr/>
        </div>
    </body>
</html>