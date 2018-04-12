<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/12
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        Github Visualization - Rank
    </title>
    <script src="../lib/jquery/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css.map">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="../index.jsp">Github Visualization</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="../index.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="time.jsp">Time</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="geometry.jsp">Geometry</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#">Rank</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container" style="margin-top: 50px">
    <div class="row">
        <div class="col-sm-10">

            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Descrption</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-sm-2">
            <form>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>
