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
    <script src="../lib/echarts.js"></script>
    <link href="../css/bootstrap.min.css.map">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Github Visualization</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
        data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon">IT IS A SPAN</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item ">
              <a class="nav-link" href="../index.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="time.jsp">Time</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="geometry.jsp">district</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="rank.jsp">Language Rank</a>
            <li class="nav-item">
              <a class="nav-link" href="trend.jsp">Language Trend</a>
            </li>
            </li>
          </ul>
        </div>
      </nav>
<div class="container" style="margin-top: 50px">
    <div class="row">
        <div class="col-sm-10">

            <table class="table table-striped">
                <caption>世界语言发展趋势</caption>
                <thead>
                <tr>
                    <th scope="col">语言</th>
                    <th scope="col">世界排名</th>
                    <th scope="col">发展趋势</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Java</th>
                    <td>Mark</td>
                    <td>Otto</td>
                </tr>
                <tr>
                    <th scope="row">C/C++</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                </tr>
                <tr>
                    <th scope="row">Python</th>
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
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">Default checkbox</label>
                </div>
            </form>
        </div>
    </div>
</div>

<div id="pie" style="height: 500px; width:500px"></div>

<script>
    var div=document.getElementById("pie");
    var pieChart=echarts.init(div);
    var option={
        series:[
            {
                name:"语言占比图",
                type:"pie",
                radius:"55%",
                data:[
                        {value:10,name:"Java"},
                        {value:10,name:"C/C++"},
                        {value:10,name:"Javascript"},
                        {value:10,name:"Python"},
                        {value:10,name:"Objective-C"}
                    
                ]
            }
        ]
    }
    pieChart.setOption(option);
</script>


</body>
</html>
