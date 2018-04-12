<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/12
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>
    Github Visualization
  </title>
<script src="lib/jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

  <link href="css/bootstrap.min.css.map">
  <link rel="stylesheet" href="css/bootstrap.min.css">

  <link rel="stylesheet" href="css/main.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Github Visualization</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="partials/time.jsp">Time</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="partials/geometry.jsp">Geometry</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="partials/rank.jsp">Rank</a>
      </li>
    </ul>
  </div>
</nav>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Github Visualization</h1>
    <p class="lead">
      This is a visualization for github with the purpose of better demonstration.
    </p>
  </div>
</div>

<div class="container" style="padding: 50px">
  <%--<h1>View Github Through a New Lens</h1>--%>
  <p class="head">View Github Through a New Lens. Visualize and interact with the data.</p>
  <p class="head">Discover dev and orgs behind projects. Filtered by date, city, country, and programming language.</p>
  <p class="head">Here's the available function:</p>

  <div class="container" style="margin-top: 50px">
    <div class="row head">
      <div class="col-sm">
        <a href="partials/time.jsp">Filtered by date</a>
      </div>
      <div class="col-sm">
        <a href="partials/geometry.jsp">Filtered by region</a>
      </div>
      <div class="col-sm">
        <a href="partials/rank.jsp">Rank</a>
      </div>
    </div>
  </div>

  <div class="container" align="center" style="padding: 50px">
    <button type="button" class="btn btn-primary btn-lg" href="#">Repository Visualization</button>
  </div>
  <%--  <p class="head" style="margin-top: 50px">
      <a class="options" href="partials/time.jsp">Filtered by date</a>
      <a class="options" href="partials/geometry.jsp">Filtered by region</a>
    </p>--%>
</div>

<footer class="footer navbar-fixed-bottom ">
  <p>&copy;Developed by BoldArialBlack.</p>
</footer>

</body>

</html>