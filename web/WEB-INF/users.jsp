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
    <link href="1.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Lab 7</title>

</head>

<body>


    <div class="row">
        <div class="col p-3" >
<h1>Add User</h1>

        <form method="POST" action="add">
            

            <input type="text" id="email" name="email" placeholder="Email">
            <br>
            <label class="container">Active
                <input type="checkbox" name="active">
                <span class="checkmark"></span>
              </label>
            
            <input type="text" id="firstName" name="firstName" placeholder="First Name">
            <br>
            <input type="text" id="lastName" name="lastName" placeholder="Last Name">
            <br>
            <input type="text" id="password" name="password" placeholder="Password">
            <br>
            <select name="role" id="role" aria-placeholder="System Admin">

                <option value="System Admin">System Admin</option>
                <option value="Regular User">Regular User</option>
                <option value="Company Admin">Company Admin</option>
            </select>
            <br>
            <input type="submit" value="Save">
        </form>
    </div>
  

    <div class="col p-3" >

   <h1>Manage users</h1>
        <form method="POST" action="manageUsers" float="left">
         
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
                <tr>
                 <td>${email}</td>
                  <td>${active}</td>
                  <td>${firstName}</td>
                  <td>${lastName}</td>
                  <td>${role}</td>
                  <td>${edit}</td>
                  <td>${delete}</td>
                </tr>
                
              </table> 

        </form>

    </div>

    <div class="col p-3" >

<h1>Edit user</h1>
        <form float="left" method="POST" action="editUsers">
            
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

                <option value="System Admin">System Admin</option>
                <option value="Regular User">Regular User</option>
                <option value="Company Admin">Company Admin</option>
            </select>
            <br>
            <input type="submit" value="Save">
            <input type="reset"" value="Cancel">
        </form>

    </div>
    </div>



</body>
</html>
