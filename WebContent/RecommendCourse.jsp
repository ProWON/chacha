<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.courseVO"%>
<%@page import="com.VO.positionVO"%>

<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>CHA CHA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css?ver5" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<style>
	#title h1{
		display: inline;
		position: static;
	}
	#title {
		width: 100%;
		text-align: center;
	}
	#title {
		font-weight: 900;
	}
	#title nav {
		display: inline;
	}
	nav ul {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			margin-bottom: 0;
			list-style: none;
			padding-left: 0;
			border: solid 1px #ffffff;
			border-radius: 4px;
		}

			nav ul li {
				padding-left: 0;
				border-left: solid 1px #ffffff;
			}

				nav ul li:first-child {
					border-left: 0;
				}

				nav ul li a {
					display: block;
					min-width: 7.5rem;
					height: 2.75rem;
					line-height: 2.75rem;
					padding: 0 1.25rem 0 1.45rem;
					text-transform: uppercase;
					letter-spacing: 0.2rem;
					font-size: 0.8rem;
					border-bottom: 0;
				}

					nav ul li a:hover {
						background-color: rgba(255, 255, 255, 0.075);
					}

					nav ul li a:active {
						background-color: rgba(255, 255, 255, 0.175);
					}

		nav.use-middle:after {
			content: '';
			display: block;
			position: absolute;
			top: 0;
			left: calc(50% - 1px);
			width: 1px;
			height: 100%;
			background: #ffffff;
		}

		nav.use-middle ul li.is-middle {
			border-left: 0;
		}
		 
		
		
		
		
	.column_center {
	   width: 100%;
	   height: 500px;
	   float: left;
	   padding-bottom: 30px;
	}
	.column_center div{
	   padding-bottom: 5px;
	   height: 125px;
	}
	.column_center img{
	   width: 100%;
	   height: 100%;
	}
	.column_top{
	   width: 49%;
	   float: left;
	   padding-left: 10px;
	}
	.column_bot{
	   width: 49%;
	   float: left;
	   padding-left: 10px;
	}
	
	@media screen and (max-width: 480px){
	   .column_top, .column_bot{
	      float: none;
	      width: 100%;
	   }
	   
	   
	}
	@media screen and (max-width: 465px){
	   h2{
	      font-size: 1em;
	   }
	}
	@media screen and (max-width: 400px){
	   h2{
	      font-size: 0.7em;
	   }
	}
	@media screen and (min-width: 480px){
	   .column_center{
	      height: 300px;
	   }
	}
	
	@media screen and (min-width: 1024px){
	   .column_center div{
	   padding-bottom: 5px;
	   height: 200px;
	   }
	   .column_center {
	   width: 100%;
	   height: 450px;
	   float: left;
	   padding-bottom: 30px;
	   }
	}	
	
	#course{
	width: 80rem;
	}

	#map{
		height: 500px;
	}

	#map div{
		color: black;
	}
	
	</style>
	
	
	<%//로그인 성공 실패 자바 스크립트
		String result = request.getParameter("result");
		if(result!=null){
			if(result.equals("fail")){
				out.print("<script>alert('로그인실패')</script>");
			}/* else{
				out.print("<script>alert('로그인실패')</script>");
			} */
		}
	%>
	<%
		String joinResult = request.getParameter("joinResult");
		if(joinResult!=null){
			if(joinResult.equals("sucess")){
				out.print("<script>alert('회원가입 성공')</script>");
			}else{
				out.print("<script>alert('회원가입 실패')</script>");
			}
		}
	%>
	<%
	String logoutResult = request.getParameter("logout");
		if(logoutResult!=null){
			if(logoutResult.equals("yes")){
				out.print("<script>alert('logout 성공')</script>");
			}
		}
	%>
	
	<script>
		function login(para){
			alert(para);
			if(para=="sucess"){
				alert("로그인성공");
			}else{
				
				alert("로그인실패");
			}
			
		}
	</script>
	
	

	<script>
		function clock() {
			var seconds = date.getSeconds();
			
		}
	
	</script>
	
	<body class="is-preload">
		
		
	<% memberVO vo = (memberVO)session.getAttribute("vo");
	   String id = (String)session.getAttribute("id");
       String pw = (String)session.getAttribute("pw");
	%>
	
      <!-- Wrapper -->
      <style>
      	@media screen and (min-width: 1681px){
      			#title{
      				display:grid;
					grid-template-columns : 80% 1fr;
      			}
	  			#CHA {
					/* display:inline; */
					margin-left: 25%;
					}
				#Loginout{
					margin-top:1rem;
					/* display:inline; */
					
					
					} */
		}
      	
      	@media screen and (max-width: 1680px){
				#title{
      				display:grid;
					grid-template-columns : 80% 1fr;
      			}
      			
				#CHA {
				display:block;
				margin-left: 30%;
				}
				#Loginout{
					
					margin-top:1rem;
				}
				
		}
      	
      
      	@media screen and (max-width: 480px){
      			#title{
      				display:grid;
					grid-template-columns : 80% 1fr;
      			}
      			
				#CHA {
				display:block;
				margin-left: 30%;
				}
				#Loginout{
					right : 0;
					margin-top:1rem;
				}
			     		
		}
      
      </style>
      
      
         <div id="wrapper">
            <div id="title">
	           
	            <div id="CHA" ><a href="main.jsp" style="text-decoration:none" ><h1>CHA CHA</h1></a></div>
	            <div id="Loginout">
	            	<%if(vo==null){ %>
		            <a href="#login_main" id="login" >Login</a>
		            <%} else{ %>
		            <a href="#information_main" id="information">내 정보</a>&nbsp&nbsp
		            <a href="LogoutCon" id="logout" style="margin-bottom: 1rem;">Logout</a>
		            <%} %>
	            </div>
			</div>
	           <!--  <a href="#recommend">test</a> -->
				<!-- Header -->
					
				<header id="header">
				
						<div class="logo" style="padding-top: 1.1rem">
							<a href=#course><img src="images/pinfinal.png" style="width:50%; height:70%"></a>
							<!-- 아이콘 class="icon fa-gem" -->
						</div>
						
						
					</header>

				<!-- Main -->
				
					<div id="main">
					<!-- Contact -->	
				
                        <!--  개인정보 -->
                        <article id="information_main">
                        <h2 class="major" style="margin-left: 39%; magin-right: auto; magin-botton:10%;">개인정보</h2>
                           <form action method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                      <% if(vo!=null){ %>
                                       <table   style="border:0;" align = "center">
                                                <tr style="text-align:center;">
                                                      <td style = "font-size:7;">PW</td>
                                                      <td><%= vo.getPwd() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td style = "font-size:7;">생년월일</td>
                                                      <td><%= vo.getBorn() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td style = "font-size:7;">성별</td>
                                                      <td><%= vo.getSex() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td style = "font-size:7;">EMAIL</td>
                                                      <td><%= vo.getEmail() %></td>
                                                </tr>
                                                <tr style="text-align:center; border-bottom:0;border-top:0;background-color:rgba(255, 255, 255, 0);">
                                                <td><input type="button" value="수정하기" class="primary" style= "width: 100%;" onclick="location.href='main.jsp#update'"></td>
                                                <td><input type="button" value="탈퇴하기" class="button fit" style= "width: 100%;"onclick="location.href='DeleteCon?id=<%=vo.getId() %>'"></td>     
                                                 </tr>
                                                 </table>

                                             <%}  %>               
                                 </div>
                                 
                              </div>
                           </form>
                        </article>
                        
                        <!-- 개인정보수정 -->
                        <article id="update">
                        <h2 class="major" style="margin-left: 32.8%; magin-right: auto; magin-botton:10%;">개인정보수정</h2>
                           <form action="UpdateCon" method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                       <input type="password" name="pwd" required="required" pattern="/^[A-Za-Z0-9]{4,12}$/" placeholder="변경할  PW를 입력해주세요"><br>
                                       <input type="text" name="email" placeholder="변경할 이메일을 입력해주세요"><br>
                                       <input type="submit" value="Profile Update" class="primary" style= "width: 100%;">
                                 </div>
                              </div>
                           </form>
                        </article>
                        
                          <!-- idsearch -->
                        <article id="idsearch">
                        <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">ID 찾기</h2>
                           <form action="IdSearchCon" method="post" style="margin-top:11%;">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding:0;">
                                       <table   style="border:0; width:100%;" align = "center"  id="search_table">
                                          <tr style="text-align:center;">
                                             <td style = "text-align:center; font-size:7; width:25%;">이메일</td>
                                             <td style = "width:60%;"><input type="text" name="email" size="7"></td>
                                       </tr>
                                       <tr style="border-bottom-width: 0px;">
                                          <td colspan="2" align="middle" ><input  type ="button" value ="PW 찾기" class="primary" onclick="location.href='main.jsp#pwsearch'">
                                                                                                <input type = "submit" value="찾기"></td>                                                                                               
                                        </tr>
                                       </table>
                                 </div>
                              </div>
                           </form>
                        </article>
                        
                        <!-- idsearch_suc -->
                              <article id="idsearch_suc">
                              <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">ID 찾기</h2>
                                 <form action method="post" style="margin-top:11%;">
                                    <div class="fields">
                                       <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table   style="border:0; width:100%;" align = "center"  id="search_table">
                                                <tr style="text-align:center;">
                                                   <td style="border-right:1px solid rgba(255, 255, 255, 0.075);text-align:center;width:30%;"><b>ID</b></td>
                                                   <td style="text-align:left; width:60%;"><%=id %></td>
                                             </tr>
                                             <tr style="border-bottom-width: 0px;">
                                                <td colspan = "2" align ="middle"><input type ="button" value ="홈으로" class="primary" onclick="location.href='main.jsp'">                                                                       
                                                </tr>
                                             </table>
                                       </div>
                                    </div>
                                 </form>
                              </article>
                  
                        <!-- pwsearch -->
                              <article id="pwsearch">
                              <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">PW 찾기</h2>
                                 <form action="PwSearchCon" method="post" style="margin-top:11%;">
                                    <div class="fields">
                                      <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table   style="border:0; width:100%;" align = "center"  id="search_table">
                                                <tr style="text-align:center;">
                                                     <td style = "text-align:center; font-size:7; width:25%;">ID</td>
                                                     <td style = "width:60%;"><input type="text" name="id" size="7"></td>
                                                  </tr>
                                                  <tr>
                                                   <td style = "text-align:center; font-size:7; width:25%;">이메일</td>
                                                   <td style = "width:60%;"><input type="text" name="email" size="7"></td>
                                              </tr>
                                              <tr style="border-bottom-width: 0px;">
                                                <td colspan = "2" align ="middle"><input type ="button" value ="홈으로" class="primary" onclick="location.href='main.jsp'">
                                                                                                      <input type = "submit" value="찾기"></td>                                                                                               
                                                </tr>
                                             </table>
                                       </div>
                                    </div>
                                 </form>
                              </article>
                              
                              <!-- pwsearch_suc -->
                                    <article id="pwsearch_suc">
                                    <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">PW 찾기</h2>
                                       <form action method="post" style="margin-top:11%;">
                                          <div class="fields">
                                            <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table  style="border:0; width:100%;" align = "center"  id="search_table">
                                                      <tr style="text-align:center;">
                                                         <td style="border-right:1px solid rgba(255, 255, 255, 0.075);text-align:center;width:30%;"><b>PW</b></td>
                                                         <td style="text-align:left; width:60%;"><%=pw %></td>
                                                   </tr>
                                                   <tr style="border-bottom-width: 0px;">
                                                      <td colspan = "2" align ="middle"><input type ="button" value ="홈으로" class="primary" onclick="location.href='main.jsp'">                                                                       
                                                      </tr>
                                                   </table>
                                             </div>
                                          </div>
                                       </form>
                                    </article>
                        
                       
                        
						 <!-- recmommend 추천 -->
		 					
		 					<% /* positionVO pvo = (positionVO)session.getAttribute("pvo"); */
								/* courseVO cvo =(courseVO)session.getAttribute("cvo"); */
								
								ArrayList<positionVO> pvoArr = (ArrayList<positionVO>)session.getAttribute("pvoArr");
								ArrayList<courseVO> cvoArr = (ArrayList<courseVO>)session.getAttribute("cvoArr");
						     
							%>
		 					
					        <!-- result 결과 --> 
							<script type="text/javascript">
								function move(i) {
									/* var index = i */
									location.href="RecommendCafe?course_id="+i;
								 }
							</script>
							
							
							<style>
								#cafeserch{
									background-color: gray;
									
								} 
								#courseImage{
									width:90%; 
									height:50%; 
									 
									margin-left:0.5rdem;
									
								}
							</style>
							
					         <article id="course" style="padding-top: 1.3rem;">
					         	<input type="button" value="다시하기" style="margin-bottom: 1rem;" onclick="location.href='main.jsp'">
					         	<div id="map">
					         	</div>
					         		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ffbe598679fc5cf10dae944f1e6359a"></script>
					         		<script>
					         
					         		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = { 
								        center: new kakao.maps.LatLng(<%= pvoArr.get(0).getLatitude()%>,<%= pvoArr.get(0).getLongitude()%> ), // 지도의 중심좌표
								        level: 12 // 지도의 확대 레벨
								    };
					
									var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
									
									// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
									var positions = [
										<%for(int i=0; i<pvoArr.size();i++){%>
										 {	
										     content: "<div style='width:300px; height:300px; display:block; text-align:center;'><%= cvoArr.get(i).getTitle() %><img id='courseImage' src='images/course_pic/<%= cvoArr.get(i).getTitle() %>.PNG'><span style='margin=0; display:block;'><%= cvoArr.get(i).getComent() %></span><div style='text-align:center;'><input id='cafeserch' type='button' value='카페 추천!' onclick='move(<%= i %>)'></div></div>", 
										     latlng: new kakao.maps.LatLng(<%= pvoArr.get(i).getLatitude()%>, <%= pvoArr.get(i).getLongitude()%>)  
										   },
										<% }%>
										
									    <%-- {	
									        content: "<div style='width:300px; height:300px; display:block; text-align:center;'><%= cvoArr.get(1).getTitle() %><a href='<%= cvo.getLink() %>'><img src='<%= cvo.getImage() %>' style='width:90%; height:50%;'></a><p><%= cvo.getComent() %></p></div>", 
									        latlng: new kakao.maps.LatLng(<%= pvo.getLatitude()%>, <%= pvo.getLongitude()%>)  
									    },
									    {
									        content: '<div>묫자리</div>', 
									        latlng: new kakao.maps.LatLng(35.355184, 126.3452072)
									    }, --%>
									   
									];
						
			
									for (var i = 0; i < positions.length; i ++) {
									    // 마커를 생성합니다
									    var marker = new kakao.maps.Marker({
									        map: map, // 마커를 표시할 지도
									        position: positions[i].latlng // 마커의 위치
									    });

									    // 마커에 표시할 인포윈도우를 생성합니다 
									    var infowindow = new kakao.maps.InfoWindow({
									        content: positions[i].content, // 인포윈도우에 표시할 내용
									        removable : true
									    });

										 // 마커에 클릭이벤트를 등록합니다
										 kakao.maps.event.addListener(marker, 'click', makeClick(map, marker, infowindow));
									  
									}

									// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
									 function makeClick(map, marker, infowindow) {
									     return function() {
									         infowindow.open(map, marker);
									     };
									 }
					         		</script>
					         </article>
					         
					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; Smart Media<a href="###"></a>.</p>
					</footer>

			</div>

		<!-- BG -->
		<script>
			/* var div_bg_tag = document.getElementById("bg")
			
			div_bg_tag.style.backgroundImage = "url('images/main1.jpg')"; */
			/* div_bg_tag.style.backgroundRepeat = "no-repeat";
			div_bg_tag.style.backgroundSize = "cover" */
			
			
			var count = 0;
			
			function clock() {
			   /*  var date = new Date();
			    var seconds = date.getSeconds(); */
			    
			    var div_bg_tag = document.getElementById("bg")
				var div_bg2_tag = document.getElementById("bg2")
				var div_bg3_tag = document.getElementById("bg3")
				var div_bg4_tag = document.getElementById("bg4")
			    if(count == 0){
			    	div_bg_tag.style.opacity="1";
			    	div_bg2_tag.style.opacity="0";
			    	div_bg3_tag.style.opacity="0";
			    	div_bg4_tag.style.opacity="0";
			    	
			    	/* div_bg_tag.style.backgroundImage = "url('../../images/main1.jpg')"; */
					/* div_bg_tag.style.backgroundRepeat = "no-repeat";
					div_bg_tag.style.backgroundSize = "cover" */
					count++
			    }else if(count==1){
			    	div_bg_tag.style.opacity="0";
			    	div_bg2_tag.style.opacity="1";
			    	div_bg3_tag.style.opacity="0";
			    	div_bg4_tag.style.opacity="0";
			    	/* div_bg_tag.style.backgroundImage = "url('../../images/main2.jpg')"; */
					/* div_bg_tag.style.backgroundRepeat = "no-repeat";
					div_bg_tag.style.backgroundSize = "cover" */
					count++
			    }else if(count==2){
			    	div_bg_tag.style.opacity="0";
			    	div_bg2_tag.style.opacity="0";
			    	div_bg3_tag.style.opacity="1";
			    	div_bg4_tag.style.opacity="0";
			    	/* div_bg_tag.style.backgroundImage = "url('../../images/main3.jpg')"; */
					/* div_bg_tag.style.backgroundRepeat = "no-repeat";
					div_bg_tag.style.backgroundSize = "cover" */
					count++
			    }else if(count==3){
			    	div_bg_tag.style.opacity="0";
			    	div_bg2_tag.style.opacity="0";
			    	div_bg3_tag.style.opacity="0";
			    	div_bg4_tag.style.opacity="1";
			    	/* div_bg_tag.style.backgroundImage = "url('../../images/main4.jpg')"; */
					/* div_bg_tag.style.backgroundRepeat = "no-repeat";
					div_bg_tag.style.backgroundSize = "cover" */
					count=0
			    }
			    // 월은 0부터 1월이기때문에 +1일을 해주고 
			    // 시간 분 초는 한자리수이면 시계가 어색해보일까봐 10보다 작으면 앞에0을 붙혀주는 작업을 3항연산으로 했습니다. 
			}
		
			function init() {
				//clock();
				// 최초에 함수를 한번 실행시켜주고 
				setInterval(clock, 3000);
				// setInterval이라는 함수로 매초마다 실행을 해줍니다.
				// setInterval은 첫번째 파라메터는 함수이고 두번째는 시간인데 밀리초단위로 받습니다. 1000 = 1초 
		
			}
			init();
	</script>
			<!-- bg -->
			<div id="bg2"></div>
			<div id="bg3"></div>
			<div id="bg4"></div>
			<div id="bg"></div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
	</body>
</html>
