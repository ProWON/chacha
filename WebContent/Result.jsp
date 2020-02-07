<%@page import="com.VO.cafeVO"%>
<%@page import="com.VO.courseVO"%>
<%@page import="com.VO.positionVO"%>
<%@page import="java.util.ArrayList"%>
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
	
	
	<%//�α��� ���� ���� �ڹ� ��ũ��Ʈ
		String result = request.getParameter("result");
		if(result!=null){
			if(result.equals("fail")){
				out.print("<script>alert('�α��ν���')</script>");
			}/* else{
				out.print("<script>alert('�α��ν���')</script>");
			} */
		}
	%>
	<%
		String joinResult = request.getParameter("joinResult");
		if(joinResult!=null){
			if(joinResult.equals("sucess")){
				out.print("<script>alert('ȸ������ ����')</script>");
			}else{
				out.print("<script>alert('ȸ������ ����')</script>");
			}
		}
	%>
	<%-- <%
	String logoutResult = request.getParameter("logout");
		if(logoutResult!=null){
			if(logoutResult.equals("yes")){
				out.print("<script>alert('logout ����')</script>");
			}
		}
	%> --%>
	      <%
      String updateResult = request.getParameter("updateResult");
      if(updateResult!=null){
         if(updateResult.equals("sucess")){
            out.print("<script>alert('�������� ������ �Ϸ�Ǿ����ϴ�.')</script>");
         }/* else{
            out.print("<script>alert('����')</script>");
         } */
      }
   %>
   <%
      String deleteResult = request.getParameter("deleteResult");
      if(deleteResult!=null){
         if(deleteResult.equals("sucess")){
            out.print("<script>alert('Ż��Ǽ̽��ϴ�.')</script>");
         }/* else{
            out.print("<script>alert('����')</script>");
         } */
      }
   %>
	
	<script>
		function login(para){
			alert(para);
			if(para=="sucess"){
				alert("�α��μ���");
			}else{
				
				alert("�α��ν���");
			}
			
		}
	</script>
	
	

	<script>
		function clock() {
			var seconds = date.getSeconds();
			
		}
	
	</script>
	
	<body class="is-preload">
		
		
	
	
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
				
					margin-top:1rem;
				}
			     		
		}
      
      </style>
      <% memberVO vo = (memberVO)session.getAttribute("vo");
	   String id = (String)session.getAttribute("id");
       String pw = (String)session.getAttribute("pw");
		%>
         <div id="wrapper">
            <div id="title">
	           
	            <div id="CHA" ><a href="main.jsp" style="text-decoration:none" ><h1>CHA CHA</h1></a></div>
	            <div id="Loginout">
	            	<%if(vo==null){ %>
		            <a href="#login_main" id="login" >Login</a>
		            <%} else{ %>
		            <a href="#information_main" id="information">�� ����</a>&nbsp&nbsp
		            <a href="LogoutCon" id="logout" style="margin-bottom: 1rem;">Logout</a>
		            <%} %>
	            </div>
	           <!--  <a href="#recommend">test</a> -->
			</div>
			<script>
			function type_survey() {

				alert("���񽺸� �̿��ϱ� ���ؼ��� ���� ������ ���� �ؾ��մϴ�")
				var survey = confirm("������ ���Ͻðڽ��ϱ�?")
				/* alert(survey) */
				
				if(survey==true){
					location.href="#npa1"	;
				}else{
					alert("������ �������� ������ ���񽺸� �̿� �ϽǼ� �����ϴ�.")
				}
				}
				
				/* location.href="#recommend_fellow";//�̵�
				 for(var i = 0; i < document.getElementsByName("tema").length; i++){
				        if(document.getElementsByName("tema")[i].checked == true){
					        tema = document.getElementsByName("tema")[i].value;
					        /* alert(tema); */
			</script>
			
				<!-- Header -->
				<style>
					#header .logo{
						border: 0;
					}
				
				</style>
					<header id="header">

							<div class="logo" style="padding-top: 1.1rem">
								<a href=#result><img src="images/pinfinal.png" style="width:50%; height:70%"></a>
								<!-- ������ class="icon fa-gem" -->
							</div>
					</header>

				<!-- Main -->
				
					<div id="main">
					<!-- Contact -->	
					 <article id="login_main">
                        <h2 class="major" style="margin-left: 42%;margin-right: auto; margin-botton:10%;">LOGIN</h2>
                           <form action="LoginCon" method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                       <input type="text" name="id" placeholder="ID"><br>
                                       <input type="password" name="pwd" placeholder="PW"><br>
                                       <input type="submit" value="LOGIN" class="button fit"">
                            
										<%-- <%if(result.equals("sucess")){%>
										<script>alert("�α��� ����");</script>
										<%}else{} %> --%>
										<!-- <script>alert("�α��� ����");</script> -->
                                 </div>
                              </div>
                              <table style="box-sizing: border-box; border: 0; text-align: center; border-collapse:collapse;">
                              <tr>
                          		 <div class="fields">
	                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
	                                    <ul class="actions" style="text-align: center;">
	                                    <td style="margin-left:auto; margin-right:auto;"><a href="#join" style="border-bottom-width: 0px;"><input type="button" value="Join Us" class="primary"></a></td>
	                                    <td style="margin-left:auto; margin-right:auto;"><a href="#idsearch" style="border-bottom-width: 0px;"><input type="button" value="ID/PW ã��"></a></td>
	                                    </ul>
	                                 </div>
                             	 </div>
                              </tr>
                              </table>
                           </form>
                           
                        </article>
                     	
                        <!-- ȸ������ -->

                        <style>
                        	#npa1 input{
                        		width: 0.8rem;
                        		height: 0.8rem;
                        	}
                        	#npa2 input{
                        		width: 0.8rem;
                        		height: 0.8rem;
                        	}
                        </style>
                   
                       
                     
                        
                        <!--  �������� -->
                        <article id="information_main">
                        <h2 class="major" style="margin-left: 39%; magin-right: auto; magin-botton:10%;">��������</h2>
                           <form action method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                      <% if(vo!=null){ %>
                                       <table   style="border:0;" align = "center">
                                                <tr style="text-align:center;">
                                                      <td font-size="7">PW</td>
                                                      <td><%= vo.getPwd() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td font-size="7">�������</td>
                                                      <td><%= vo.getBorn() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td font-size="7">����</td>
                                                      <td><%= vo.getSex() %></td>
                                                </tr>
                                                <tr style="text-align:center;">
                                                      <td font-size="7">EMAIL</td>
                                                      <td><%= vo.getEmail() %></td>
                                                </tr>
                                                <tr style="text-align:center; border-bottom:0;border-top:0;background-color:rgba(255, 255, 255, 0);">
                                                <td><input type="button" value="�����ϱ�" class="primary" style= "width: 100%;" onclick="location.href='main.jsp#update'"></td>
                                                <td><input type="button" value="Ż���ϱ�" class="button fit" style= "width: 100%;"onclick="location.href='DeleteCon?id=<%=vo.getId() %>'"></td>     
                                                 </tr>
                                                 </table>
                                             <%}  %>               
                                 </div>
                                 
                              </div>
                           </form>
                        </article>
                        
                        <!-- ������������ -->
                        <article id="update">
                        <h2 class="major" style="margin-left: 32.8%; magin-right: auto; magin-botton:10%;">������������</h2>
                           <form action="UpdateCon" method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                       <input type="password" name="pwd" required="required" pattern="/^[A-Za-Z0-9]{4,12}$/" placeholder="������  PW�� �Է����ּ���"><br>
                                       <input type="text" name="email" required="required" placeholder="������ �̸����� �Է����ּ���"><br>
                                       <input type="submit" value="Profile Update" class="primary" style= "width: 100%;">
                                 </div>
                              </div>
                           </form>
                        </article>
                        
                          <!-- idsearch -->
                        <article id="idsearch">
                        <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">ID ã��</h2>
                           <form action="IdSearchCon" method="post" style="margin-top:11%;">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding:0;">
                                       <table   style="border:0;" align = "center"  id="search_table" width = 100%;>
                                          <tr style="text-align:center;">
                                             <td text-align=center; font-size="7" width=25%;>�̸���</td>
                                             <td width=60%;><input type="email"  required="required" name="email" size="7"></td>
                                       </tr>
                                       <tr style="border-bottom-width: 0px;">
                                          <td colspan="2" align="middle" ><input  type ="button" value ="PW ã��" class="primary" onclick="location.href='main.jsp#pwsearch'">
                                                                                                <input type = "submit" value="ã��"></td>                                                                                               
                                        </tr>
                                       </table>
                                 </div>
                              </div>
                           </form>
                        </article>
                        
                        <!-- idsearch_suc -->
                              <article id="idsearch_suc">
                              <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">ID ã��</h2>
                                 <form action method="post" style="margin-top:11%;">
                                    <div class="fields">
                                       <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table   style="border:0;" align = "center"  id="search_table" width = 100%;>
                                                <tr style="text-align:center;">
                                                   <td style="border-right:1px solid rgba(255, 255, 255, 0.075);text-align:center;width:30%;"><b>ID</b></td>
                                                   <td width=60%; style="text-align:left;"><%=id %></td>
                                             </tr>
                                             <tr style="border-bottom-width: 0px;">
                                                <td colspan = "2" align ="middle"><input type ="button" value ="Ȩ����" class="primary" onclick="location.href='main.jsp'">                                                                       
                                                </tr>
                                             </table>
                                       </div>
                                    </div>
                                 </form>
                              </article>
                  
                        <!-- pwsearch -->
                              <article id="pwsearch">
                              <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">PW ã��</h2>
                                 <form action="PwSearchCon" method="post" style="margin-top:11%;">
                                    <div class="fields">
                                      <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table   style="border:0;" align = "center"  id="search_table" width = 100%;>
                                                <tr style="text-align:center;">
                                                     <td text-align=center; font-size="7" width=25%;>ID</td>
                                                     <td width=60%;><input type="text" name="id" size="7"></td>
                                                  </tr>
                                                  <tr>
                                                   <td text-align=center; font-size="7" width=25%;>�̸���</td>
                                                   <td width=60%;><input type="text" name="email" size="7"></td>
                                              </tr>
                                              <tr style="border-bottom-width: 0px;">
                                                <td colspan = "2" align ="middle"><input type ="button" value ="Ȩ����" class="primary" onclick="location.href='main.jsp'">
                                                                                                      <input type = "submit" value="ã��"></td>                                                                                               
                                                </tr>
                                             </table>
                                       </div>
                                    </div>
                                 </form>
                              </article>
                              
                              <!-- pwsearch_suc -->
                                    <article id="pwsearch_suc">
                                    <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">PW ã��</h2>
                                       <form action method="post" style="margin-top:11%;">
                                          <div class="fields">
                                            <div class="field half" style="margin: 0 auto; padding:0;">
                                             <table   style="border:0;" align = "center"  id="search_table" width = 100%;>
                                                      <tr style="text-align:center;">
                                                         <td style="border-right:1px solid rgba(255, 255, 255, 0.075);text-align:center;width:30%;"><b>PW</b></td>
                                                         <td width=60%; style="text-align:left;"><%=pw %></td>
                                                   </tr>
                                                   <tr style="border-bottom-width: 0px;">
                                                      <td colspan = "2" align ="middle"><input type ="button" value ="Ȩ����" class="primary" onclick="location.href='main.jsp'">                                                                       
                                                      </tr>
                                                   </table>
                                             </div>
                                          </div>
                                       </form>
                                    </article>
                        <% 
                       		 ArrayList<cafeVO> cafe_voArr=null;
	                    	int cafe_id=0;
	                    	int cafe_idInt = 0;
	                        
                        	String selected_course = (String)session.getAttribute("selected_course");
                        	String selected_cafe = (String)session.getAttribute("selected_cafe");
                        	if(selected_cafe==null){
                        		selected_cafe="ī�䰡 �����ϴ�";
                        	}else{
                        		cafe_voArr = (ArrayList<cafeVO>)session.getAttribute("cafe_voArr");
								System.out.println(session.getAttribute("cafe_Id"));
								cafe_id = (int)session.getAttribute("cafe_Id");
								
								/* cafe_idInt = Integer.parseInt(cafe_id); */
                        		
                        	}
                        %>
                        <%
                        	ArrayList<positionVO> pvoArr = (ArrayList<positionVO>)session.getAttribute("pvoArr");
							ArrayList<courseVO> cvoArr = (ArrayList<courseVO>)session.getAttribute("cvoArr");
                        %>
        				
					 
					        <!-- result ��� --> 
					     <article id="result" style="padding-top: 1.3rem">
					     <input type="button" value="ī�� ����" style="margin-bottom: 1rem;" onclick="location.href='RecommendCafe.jsp#cafe'">
                        <h2 class="major" style="margin-left: 32.8%; magin-right: auto; magin-botton:3%;">���� ��õ �ڽ�</h2>
                          
                             
                                 <div  style="margin: 0 auto;">
                                      <div style="width: 100%; height: 100%; ">
                                      		<div style="display:grid; grid-template-columns : 30% 1fr;">
                                      			<div><img src="images/course/<%= selected_course %>.PNG" style="width: 100%; height: 100%"></div>
                                      			 <div style="padding-top: 11%; padding-left: 5%;">
                                     				<span >�����Ͻ� ����̺� �ڽ� �Դϴ�.!!</span>
                                      			</div>
                                      		</div>
                                      </div>
                                     
                                      <div style="margin: 0 auto;">
                                 		<div style="display:grid; grid-template-columns : 30% 1fr;">
                                 			<div><%if(selected_cafe.equals("ī�䰡 �����ϴ�")){}else{ %><img src="images/cafe_pic/<%= selected_cafe %>.JPG" style="width: 100%; height: 100%"><% }%></div>
                                 			<div style="padding-top: 2%; padding-left: 5%; font-size: 80%;">
                                 				<%
		                                 			if(selected_cafe.equals("ī�䰡 �����ϴ�")){%>
		                                        		ī�䰡 �����ϴ�
		                                        	<% }else{%>
                                 						�ּ� : <%=cafe_voArr.get(cafe_id).getAddress() %><br>
                                 						��ð�(����): <%=cafe_voArr.get(cafe_id).getWeekday_time() %><br>
                                 						��ð�(���):<%=cafe_voArr.get(cafe_id).getSaturday_time() %><br>
                                 						��ð�(�Ͽ�):<%=cafe_voArr.get(cafe_id).getSunday_time() %><br>
                                 						�޹��� : <%=cafe_voArr.get(cafe_id).getHollyday() %><br>
                                 						���� :<%=cafe_voArr.get(cafe_id).getParking() %><br>
                                 				<%} %>
                                 			</div>
                                 		</div>
                                	 </div>      
                                 </div>
                                
                                
                                 
                        <div style="text-align: right;">
                        	<input type="button" value="ó������"  style="margin-bottom: 1rem;" onclick="location.href='main.jsp'">	
                        </div>
						
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
			    // ���� 0���� 1���̱⶧���� +1���� ���ְ� 
			    // �ð� �� �ʴ� ���ڸ����̸� �ð谡 ����غ��ϱ�� 10���� ������ �տ�0�� �����ִ� �۾��� 3�׿������� �߽��ϴ�. 
			}
		
			function init() {
				//clock();
				// ���ʿ� �Լ��� �ѹ� ��������ְ� 
				setInterval(clock, 3000);
				// setInterval�̶�� �Լ��� ���ʸ��� ������ ���ݴϴ�.
				// setInterval�� ù��° �Ķ���ʹ� �Լ��̰� �ι�°�� �ð��ε� �и��ʴ����� �޽��ϴ�. 1000 = 1�� 
		
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
