<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/12
  Time: 14:47
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
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

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
                <a class="nav-link active" href="#">Geometry</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="rank.jsp">Rank</a>
            </li>
        </ul>
    </div>
</nav>

<div id="container" style="height: 500px; margin-top: 50px"></div>

<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;

    function randomData() {
        return Math.round(Math.random() * 1000);
    }

    option = {
        title: {
            text: 'iphone销量',
            subtext: '纯属虚构',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['iphone3', 'iphone4', 'iphone5']
        },
        visualMap: {
            min: 0,
            max: 2500,
            left: 'left',
            top: 'bottom',
            text: ['高', '低'],           // 文本，默认为数值文本
            calculable: true
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            left: 'right',
            top: 'center',
            feature: {
                dataView: {readOnly: false},
                restore: {},
                saveAsImage: {}
            }
        },
        series: [
            {
                name: 'iphone3',
                type: 'map',
                mapType: 'china',
                roam: false,
                label: {
                    normal: {
                        show: true
                    },
                    emphasis: {
                        show: true
                    }
                },
                data: [
                    {name: '北京', value: randomData()},
                    {name: '天津', value: randomData()},
                    {name: '上海', value: randomData()},
                    {name: '重庆', value: randomData()},
                    {name: '河北', value: randomData()},
                    {name: '河南', value: randomData()},
                    {name: '云南', value: randomData()},
                    {name: '辽宁', value: randomData()},
                    {name: '黑龙江', value: randomData()},
                    {name: '湖南', value: randomData()},
                    {name: '安徽', value: randomData()},
                    {name: '山东', value: randomData()},
                    {name: '新疆', value: randomData()},
                    {name: '江苏', value: randomData()},
                    {name: '浙江', value: randomData()},
                    {name: '江西', value: randomData()},
                    {name: '湖北', value: randomData()},
                    {name: '广西', value: randomData()},
                    {name: '甘肃', value: randomData()},
                    {name: '山西', value: randomData()},
                    {name: '内蒙古', value: randomData()},
                    {name: '陕西', value: randomData()},
                    {name: '吉林', value: randomData()},
                    {name: '福建', value: randomData()},
                    {name: '贵州', value: randomData()},
                    {name: '广东', value: randomData()},
                    {name: '青海', value: randomData()},
                    {name: '西藏', value: randomData()},
                    {name: '四川', value: randomData()},
                    {name: '宁夏', value: randomData()},
                    {name: '海南', value: randomData()},
                    {name: '台湾', value: randomData()},
                    {name: '香港', value: randomData()},
                    {name: '澳门', value: randomData()}
                ]
            },
            {
                name: 'iphone4',
                type: 'map',
                mapType: 'china',
                label: {
                    normal: {
                        show: true
                    },
                    emphasis: {
                        show: true
                    }
                },
                data: [
                    {name: '北京', value: randomData()},
                    {name: '天津', value: randomData()},
                    {name: '上海', value: randomData()},
                    {name: '重庆', value: randomData()},
                    {name: '河北', value: randomData()},
                    {name: '安徽', value: randomData()},
                    {name: '新疆', value: randomData()},
                    {name: '浙江', value: randomData()},
                    {name: '江西', value: randomData()},
                    {name: '山西', value: randomData()},
                    {name: '内蒙古', value: randomData()},
                    {name: '吉林', value: randomData()},
                    {name: '福建', value: randomData()},
                    {name: '广东', value: randomData()},
                    {name: '西藏', value: randomData()},
                    {name: '四川', value: randomData()},
                    {name: '宁夏', value: randomData()},
                    {name: '香港', value: randomData()},
                    {name: '澳门', value: randomData()}
                ]
            },
            {
                name: 'iphone5',
                type: 'map',
                mapType: 'china',
                label: {
                    normal: {
                        show: true
                    },
                    emphasis: {
                        show: true
                    }
                },
                data: [
                    {name: '北京', value: randomData()},
                    {name: '天津', value: randomData()},
                    {name: '上海', value: randomData()},
                    {name: '广东', value: randomData()},
                    {name: '台湾', value: randomData()},
                    {name: '香港', value: randomData()},
                    {name: '澳门', value: randomData()}
                ]
            }
        ]
    };


    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>

</body>
</html>
