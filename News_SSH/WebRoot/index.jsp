<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>新闻管理系统——新闻列表页</title>
<script>var base="<%=basePath%>";</script>
<script type="text/javascript" src="./include/js/jquery.min.js"></script>



<link rel="stylesheet" type="text/css" href="include/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="include/css/demo.css">
<link rel="stylesheet" href="include/css/index_style.css">

<!-- 站点图标 -->
<link rel="shortcut icon" href="include/img/favico.png"/> 

<script src="./include/js/list_index.js"></script>


</head>
<body>

	<div class="htmleaf-container">
		<svg id="svg-source" height="0" version="1.1"
			xmlns="http://www.w3.org/2000/svg"
			style="position:absolute; margin-left: -100%"
			xmlns:xlink="http://www.w3.org/1999/xlink">
		<g id="close-icon">
			<path
				d="M0.014,1.778L1.79,0.001l30.196,30.221l-1.778,1.777L0.014,1.778z" />
			<path
				d="M1.79,31.999l-1.776-1.777L30.208,0.001l1.778,1.777L1.79,31.999z" />
		</g>
	</svg>

		<div class="launch-button">
			<a href="login.jsp">打开登录页面</a>
			<div class="launch-button__glare"></div>
		</div>
		<div id="login_form-overlay" class="modal-overlay"></div>
		<div id="login_form-holder" class="modal-holder">
			<div id="js-hint1" class="hint hint--1">
				在这里你可以看到所有的新闻哦~~
			</div>
			<div id="js-hint2" class="hint hint--2">
				<br>想要登录后台？<br>单击 × 跳转到登录
			</div>
			<div id="js-effect" style="outline1: 1px solid red" class="effect">
				<div class="effect__burst">
					<svg viewBox="0 0 300 300" width="300" height="300" id="js-burst">
            <g id="Group" sketch:type="MSLayerGroup"
							transform="translate(2.000000, 2.000000)">
              <path d="M119.843557,132.665423 L142.438936,241.234321"
							stroke="#FC46AD" stroke-width="2"
							transform="translate(131.141247, 186.949872) rotate(9.000000) translate(-131.141247, -186.949872) "></path>
              <path d="M120.923275,136.327807 L194.055085,223.544529"
							stroke="#D0D202" stroke-width="2"
							transform="translate(157.489180, 179.936168) rotate(9.000000) translate(-157.489180, -179.936168) "></path>
              <path d="M110.892215,7.63766131 L143.724586,126.274355"
							stroke="#FFE217" stroke-width="2"
							transform="translate(127.308401, 66.956008) rotate(-165.000000) translate(-127.308401, -66.956008) "></path>
              <path d="M198.35904,105.458064 L161.773069,223.598866"
							stroke="#B8E986" stroke-width="3"
							transform="translate(180.066054, 164.528465) rotate(-74.000000) translate(-180.066054, -164.528465) ">          </path>
              <path d="M146.454121,53.5458334 L227.175148,153.69563"
							stroke="#D0D202" stroke-width="2"
							transform="translate(186.814634, 103.620732) rotate(-74.000000) translate(-186.814634, -103.620732) ">          </path>
              <path d="M94.4127006,27.0036828 L46.0682754,156.269505"
							stroke="#51CAD7" stroke-width="3"
							transform="translate(70.240488, 91.636594) rotate(-257.000000) translate(-70.240488, -91.636594) ">          </path>
              <path d="M29.3969741,113.63349 L113.205038,207.338224"
							stroke="#FC3F6B" stroke-width="2"
							transform="translate(71.301006, 160.485857) rotate(-257.000000) translate(-71.301006, -160.485857) ">          </path>
              <path d="M125.792,38.3112087 L198.92381,125.527931"
							stroke="#D0D202" stroke-width="2"
							transform="translate(162.357905, 81.919570) rotate(-104.000000) translate(-162.357905, -81.919570) ">          </path>
              <path d="M43.4006609,130.173225 L130.540432,224.973356"
							stroke="#FC46AD" stroke-width="2"
							transform="translate(86.970546, 177.573291) rotate(-278.000000) translate(-86.970546, -177.573291) ">          </path>
              <path d="M157.646537,8.08731537 L121.060566,126.228117"
							stroke="#B8E986" stroke-width="3"
							transform="translate(139.353552, 67.157716) rotate(-187.000000) translate(-139.353552, -67.157716) ">          </path>
              <path d="M139.340711,132.100895 L90.9962855,261.366717"
							stroke="#51CAD7" stroke-width="3"
							transform="translate(115.168498, 196.733806) rotate(-10.000000) translate(-115.168498, -196.733806) ">          </path>
              <path d="M136.22617,122.003677 L220.034234,215.708411"
							stroke="#FC3F6B" stroke-width="2"
							transform="translate(178.130202, 168.856044) rotate(-10.000000) translate(-178.130202, -168.856044) "></path>
            </g>
          </svg>
				</div>
				<div class="effect__circle">
					<svg viewBox="0 0 100 100" width="100" height="100">
            <circle cx="50" cy="50" fill="none" id="js-circle"></circle>
          </svg>
				</div>
				<div class="effect__line effect__line--1">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <defs>
              <g id="proto-line" class="js-line">
                <line x1="2" x2="2" y1="0" y2="900" stroke="red"
							stroke-dasharray="900 1800" stroke-dashoffset="900"></line>
                <line x1="2" x2="2" y1="0" y2="900" stroke="red"
							stroke-dasharray="900 1800" stroke-dashoffset="900"></line>
                <line x1="2" x2="2" y1="0" y2="900" stroke="red"
							stroke-dasharray="900 1800" stroke-dashoffset="900"></line>
              </g>
            </defs>
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--2">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--3">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--4">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
			</div>


			<!-- 表单 -->
			<div id="login_form" class="modal">
			<td><h3>通知新闻</h3></td>
				<div id="js-close-button" class="modal__close">
					<div id="" title="" class="icon ">
						<svg viewBox="0 0 32 32"><use xlink:href="#close-icon"></use></svg>
					</div>
				</div>
				<div id="inews" class="l-wrap" style="width:80%; margin-left:auto;margin-right:auto;" >
			<div>
				<div>
					<div class="l-news"	>
						<div class="nheader">
							<table cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										
									</tr>
								</tbody>
							</table>
						</div>
						<div class="nlist">
							<table id="newstable" width="100%">
								<tbody>
									<tr id="trpp">
										<td colspan="3" align="center"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id="pp" style="background:#efefef;"></div>
					</div>
				</div>
			</div>
		</div>
		
			</div>

			<svg style="display:none">
        <image width="480" height="450" xlink:href="" id="proto-image"
					class="js-proto-image"></image>
      </svg>
			<div id="js-break-parts" class="break-parts">
				<div id="js-svg-overlay" class="svg-overlay">
					<svg viewBox="0 0 480 450" id="js-svg1">
            <clipPath id="clip1">
              <path
							d="M0,450.575574 L0,0 L424.903452,0 L452.375,28.5599486 L20.5087638,460.426185 L0,450.575574 Z"></path>
            </clipPath>
            <use xlink:href="#proto-image" clip-path="url(#clip1)"
							id="js-image1"></use>
          </svg>
				</div>
				<div class="svg-overlay svg-overlay--2">
					<svg viewBox="0 0 480 450" id="js-svg2">
            <clipPath id="clip2">
              <path
							d="M452.214614,28.6494713 L424.309513,0 L482.040672,0 L452.214614,28.6494713 Z"></path>
            </clipPath>
            <use xlink:href="#proto-image" clip-path="url(#clip2)"
							id="js-image2"></use>
          </svg>
				</div>
				<div class="svg-overlay svg-overlay--3">
					<svg viewBox="0 0 480 450" id="js-svg3">
            <clipPath id="clip3">
              <path
							d="M452.320312,28.526424 L482,58 L482,0.066291362 L452.320312,28.526424 Z"></path>
            </clipPath>
            <use xlink:href="#proto-image" clip-path="url(#clip3)"
							id="js-image3"></use>
          </svg>
				</div>
				<div class="svg-overlay">
					<svg viewBox="0 0 480 450" id="js-svg4">
            <clipPath id="clip4">
              <path
							d="M452.270844,28.4954427 L482,57.8942871 L482,451 L29.2740886,450.99999 L452.270844,28.4954427 Z"></path>
            </clipPath>
            <use xlink:href="#proto-image" clip-path="url(#clip4)"
							id="js-image4"></use>
          </svg>
				</div>
			</div>
		</div>

	</div>
	
	<script type="text/javascript" src="./include/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src='include/js/howler.min.js'></script>
	<script type="text/javascript" src='include/js/tween.min_1.js'></script>
	<script type="text/javascript" src='include/js/html2canvas.js'></script>
	<script type="text/javascript" src="include/js/index.js"></script>
	
</body>
</html>