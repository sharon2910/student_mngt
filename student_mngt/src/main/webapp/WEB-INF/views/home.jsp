<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Student Management</title>
  </head>
  <body>

    <!-- NavBar Starts -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-info">
      <a class="navbar-brand" href="#">Student Management</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="studentDetails">Student Details <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="studentRegister">Register Student</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Login Student</a>
          </li>
        </ul>
      </div>
    </nav>

    <!-- NavBar Ends -->

    <!-- Table Starts -->

    <div class = "container">
        <table class="table table-striped">
          <thead class = "table-dark">
            <tr>
                <th scope="col">Student Id</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Action Buttons</th>
            </tr>
          </thead>
          <tbody>

            <c:forEach items="${studentDetails}" var="student">

                <tr>
                     <th scope="row">${student.id}</th>
                     <td>${student.firstName}</td>
                     <td>${student.lastName}</td>
                     <td>${student.email}</td>
                     <td>${student.phoneNumber}</td>
                     <td>
                          <!-- path variable-->
                         <a class="btn btn-info" href="/updateStudent?id=${student.id}">Update</a>
                         <!-- Query string -->
                         <a class="btn btn-danger" href="/deleteStudent/${student.id}">Delete</a>
                     </td>
                </tr>

            </c:forEach>
          </tbody>
        </table>
       </div>

    <!-- Table Ends -->



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>