<%-- 
    Document   : users
    Created on : Oct 20, 2021, 1:56:42 PM
    Author     : 856622
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="/assets/styles/style.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
        <title>Lab 7</title>
        <style>
            * h1{
                text-align: center;
                font-family: 'Times New Roman', Times, serif ;
                font-size: 33px;
                font-weight: bold;
            }
            * {
                box-sizing: border-box;
            }


            .col  {
                float: left;

                padding: 10px;
                border-radius: 0cm;
                background-color: #666363;
                padding: 20px;

            }


            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            input[type=text], select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 2px solid rgb(19, 18, 18);
                border-radius: 0%;
                box-sizing: border-box;
            }

            input[type=submit] {
                width: 100%;
                background-color: #430397;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                /*  border: none;*/
                border-radius: 4px;
                cursor: pointer;
            }
            input[type=reset] {
                width: 100%;
                background-color: #430397;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                /*  border: none;*/
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #0fad0f;
            }
            input[type=reset]:hover {
                background-color: #a04545;
            }
            /* div {
               display: flexbox;
                 float: left;
               width: 33%;
               border-radius: 8px;
               background-color: #666363;
               padding: 20px;
             }
            */
            /*
          
          
          checkbox
          
          
          
            */

            .container {
                display: block;
                position: relative;
                padding-left: 35px;
                margin-bottom: 12px;
                cursor: pointer;
                font-size: 22px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            .container input {
                position: absolute;
                opacity: 0;
                cursor: pointer;
                height: 0;
                width: 0;
            }


            .checkmark {
                position: absolute;
                top: 0;
                left: 0;
                height: 25px;
                width: 25px;
                background-color: #eee;
            }


            .container:hover input ~ .checkmark {
                background-color: #ccc;
            }


            .container input:checked ~ .checkmark {
                background-color: #a04545;
            }


            .checkmark:after {
                content: "";
                position: absolute;
                display: none;
            }

            .container input:checked ~ .checkmark:after {
                display: block;
            }


            .container .checkmark:after {
                left: 9px;
                top: 5px;
                width: 5px;
                height: 10px;
                border: solid white;
                border-width: 0 3px 3px 0;
                -webkit-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                transform: rotate(45deg);
            } 

            /*
          
          
          
          
            TABLE
            */



            #table {

                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                table-layout: auto;
                width: 120px;

            }

            #table td, #table th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #table tr:nth-child(even){background-color: #da3e3e;}

            #table tr:hover {background-color: #a04545;}

            #table
            th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #848886;
                color: white;
            }

        </style>
    </head>

    <body>


        <div class="row">
            <div class="col p-3" >
                <h1>Add User</h1>

                <form method="POST" action="user">


                    <input type="text" id="email" name="email" placeholder="Email">
                    <br>
                    <label class="container">Active
                        <input type="checkbox" name="active" id="active">
                        <span class="checkmark"></span>
                    </label>

                    <input type="text" id="firstName" name="firstName" placeholder="First Name">
                    <br>
                    <input type="text" id="lastName" name="lastName" placeholder="Last Name">
                    <br>
                    <input type="text" id="password" name="password" placeholder="Password">
                    <br>
                    <select name="role" id="role" aria-placeholder="System Admin">

                        <option value="1" name="userRole">System Admin</option>
                        <option value="2" name="userRole">Regular User</option>
                        <option value="2" name="userRole">Company Admin</option>
                    </select>
                    <br>
                    <input type="submit" value="Save">
                </form>
            </div>


            <div class="col p-3" >

                <h1>Manage users</h1>
                <form method="POST" action="user" float="left">

                    <table id="table">
                        <tr>
                            <th>Email</th>
                            <th>Active</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Role</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>

                        <c:forEach items="${list}" var="item">
                            <tr>

                                <td> <input type="hidden" name="email" value="${email}"></td>
                                <td><input type="hidden" name="email" value="${active}"></td>
                                <td><input type="hidden" name="email" value="${firstName}"></td>
                                <td><input type="hidden" name="email" value="${lastName}"></td>
                                <td><input type="hidden" name="email" value="${role}"></td>
                                <td><input type="hidden" name="email" value="${edit}"> 
                                           <a href="user?action=edit">Edit</a></td>
                                <td><input type="hidden" name="email" value="${delete}">
                                 <a href="user?action=delete">Delete</a></td>
                            </tr>
                        </c:forEach>

                    </table> 

                </form>

            </div>

            <div class="col p-3" >

                <h1>Edit user</h1>
                <form float="left" method="POST" action="user" hidden>

                    <input type="text" id="email" name="email">
                    <br>
                    <label class="container">Active
                        <input type="checkbox" name="active">
                        <span class="checkmark"></span>
                    </label>

                    <input type="text" id="firstName" name="firstName" >
                    <br>
                    <input type="text" id="lastName" name="lastName" >
                    <br>
                    <select name="role" id="role" >
                        <option  value="1" name="userRole" >System Admin</option>
                        <option value="2" name="userRole" >Regular User</option>
                        <option value="2" name="userRole">Company Admin</option>
                    </select>
                    <br>
                    <input type="submit" value="Save">
                    <input type="reset" value="Cancel">
                </form>

            </div>
        </div>



    </body>
</html>
