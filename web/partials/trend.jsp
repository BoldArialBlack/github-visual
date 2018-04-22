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
    <meta charset="UTF-8">
    <title>
        Github Visualization - Filtered by region
    </title>

    
    <script src="../lib/jquery/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
    <script src="../lib/echarts.js"></script>
    <link href="../css/bootstrap.min.css.map">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <style>
        #div1{
        background:-webkit-linear-gradient(top,rgb(136, 123, 209),white)
    }

    </style>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Github Visualization</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
        data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item ">
              <a class="nav-link" href="../index.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="time.jsp">Time</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="geometry.jsp">district</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="rank.jsp">Language Rank</a>
              </li>
            <li class="nav-item active">
              <a class="nav-link" href="trend.jsp">Language Trend</a>
            </li>
          </ul>
        </div>
      </nav>


      <div class="jumbotron jumbotron-fluid" id="div1">
          <div class="container" >
            <h1 class="display-4">语言趋势</h1>
            <p class="lead">
              在这里，我们为您展示了不同时期内Github上各语言的统计数据，来为您描绘各种语言的发展趋势。
            </p>
          </div>
        </div>

      <div class="container" style="height:800px;width:800px" id="lineDiv"></div>

      <script>
        
        echarts.init(document.getElementById("lineDiv")).setOption({
          title:{
            text:'各语言变化趋势'
          },
          tooltip:{
            trigger:'axis'
          },
          legend:{
            data:['Java','C/C++,','Python','JavaScript','Objective-C']
          },
          xAxis:{
            type:'category',
            boundaryGap:false,
            data:['TIME1','TIME2','TIME3','TIME4','TIME5','TIME6','TIME7']
          },
          yAxis:{
            type:'value',
            axisLabel:{
              show:true,
              interval:'auto',
              formatter:'{value}%' //百分比显示
            },
            show:true
          },
          series:[
            {
              name:'Java',
              type:'line',
              /*
              itemStyle:{
                normal:{
                  label:{
                    show:true,
                    position:'top',
                    formatter:'{b}\n{c}%'
                  }
                }
              },
              */
              
              data:[25,31,29,30,35,28,33]
            }
          ],
        
        })
        
      </script>