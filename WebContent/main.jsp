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
	
	
	<%//�α��� ���� ���� �ڹ�
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
					right : 0;
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
					<header id="header">
						<%if(vo!=null){ %>
							<%if(vo.getType().equals("0")){ %>
							<div class="logo" style="padding-top: 1.1rem">
								<img src="images/pinfinal.png" style="width:50%; height:70%" onclick="type_survey()">
								<!-- ������ class="icon fa-gem" -->
							</div>
							<%}else{ %>
							<div class="logo" style="padding-top: 1.1rem">
								<a href=#recommend_tema><img src="images/pinfinal.png" style="width:50%; height:70%"></a>
								<!-- ������ class="icon fa-gem" -->
							</div>
							<%} %>
						<%} %>
						
						<div class="content">
							<div class="inner" >
								<h1>����������� �˷��ּ���</h1>
								<p>��ģ ���� ������ �޽���
								<br>����̺긦 ����̺� ���  ����� ������ �����ϼ���...
								</p>
							</div>
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
                        <article id="join" style="padding-top : 1.3rem">
                        <img src="images/arrow.png" style="width: 4%; height: 4%; margin-bottom: 1rem;" onclick="location.href='main.jsp#login_main'" >
                        <h2 class="major" style="margin-left: 42%; margin-right: auto; margin-botton:10%;">JOIN</h2>
                           <form action="JoinCon" method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px;">
                                       <input type="text" name="id" required="required" placeholder="����� ID�� �Է����ּ���"><br>
                                       <input type="password" name="pwd" required="required" pattern="/^[A-Za-Z0-9]{4,12}$/" placeholder="�����  PW�� �Է����ּ���"><br>
                                       <input type="text" name="born" required="required" placeholder="�ֹε�Ϲ�ȣ �� 6�ڸ�"maxlength="6" pattern="[0-9]{6}"><br>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="sex" value="Men" >��
                                         <input style="-webkit-appearance: radio; margin-left: 5rem; margin-top: 1px;" type="radio" name="sex" value="Women" checked="checked">��<br>
                                       <input type="email" required="required" name="email"  placeholder="�̸����� �Է��϶���"><br>
                                       <input type="submit" value="ȸ������" class="primary" style= "width: 100%;" >
                                 </div>
                              </div>
                           </form>
                        </article>
                       <!--  <script>
                        	var type_name = new Array("one","two","three","four","five","six","seven","eight","nine","ten","eleven","tweleve");
                        	var type_value = new Array();
  							var type_sum = 0;
  							/* var type_sumB = 0; */
	                        function type_check1() {
								//�̵�
								location.href="#npa2";
	                        }
	                        
	                        
							function type_check2(){
								for(var j = 0; j<6; j++ ){
									for(var i = 0; i < document.getElementsByName(type_name[j]).length; i++){
								        if(document.getElementsByName(type_name[j])[i].checked == true){
									        type_value[j] = document.getElementsByName(type_name[j])[i].value;
									    }
									}
								}
							
								for(var j = 6; j<13; j++ ){
									for(var i = 0; i < document.getElementsByName(type_name[j]).length; i++){
								        if(document.getElementsByName(type_name[j])[i].checked == true){
								        	type_value[j] = document.getElementsByName(type_name[j])[i].value;
									    }
									}
								}
								/* var value_int1;
								var value_int2;
								*/
								/* ��� �Ϸ��� �̰� �ٲ���� */
								for(var i =0; i<type_value.length; i++){
									value_int = parseInt(type_value[i],10);
									type_sum = type_sum + value_int;
								} 
								/* value_int1 = parseInt(type_value[0],10);
								value_int2 = parseInt(type_value[1],10);
								type_sum = value_int1 + value_int2; */
								
								alert(type_sum);
								
								location.href="TypeUpdateCon?type="+type_sum;
	                        }
                        </script> -->
                        
                        <script>
	                        var type_name = new Array("one","two","three","four","five");
	                    	var type_value = new Array();
						
							var type_sumA = 0;
							var type_sumB = 0;
							
	                        function type_check() {
								//�̵�
								
								for(var j = 0; j<type_name.length; j++ ){
									for(var i = 0; i < document.getElementsByName(type_name[j]).length; i++){
								        if(document.getElementsByName(type_name[j])[i].checked == true){
									        type_value[j] = document.getElementsByName(type_name[j])[i].value;
									    }
									}
								}
								
								type_sumA = parseInt(type_value[0],10) + parseInt(type_value[2],10);							
								
								type_sumB = parseInt(type_value[1],10) + parseInt(type_value[3],10) + parseInt(type_value[4],10);
								
								location.href="TypeUpdateCon?type_sumA="+ type_sumA + "&type_sumB=" + type_sumB;
	                        }
                        
                        </script>
                        
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
                   
                        <!-- ���� part1 -->
                        <article id="npa1" style="padding-top: 1.3rem;">
                        <img src="images/arrow.png" style="width: 4%; height: 4%; margin-bottom: 1rem;" onclick="location.href='main.jsp'" >
                        <h2 class="major" style="margin-left: 11%; margin-right: auto; margin-botton:10%;">Gathering Information</h2>
                           <form method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px; width:100%">
                                       <h3>1. �𸣴� ������� ���� ���� �Ǵ�.</h3>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="one" value="1">���� �ƴϴ� &nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="one" value="2">���� �ƴϴ�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="one" value="3" checked="checked">�߰��̴�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="one" value="4">�ణ �׷���&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="one" value="5">�ſ� �׷���<br><br>
                                      
                                       <h3>2. �׸�, ��, ������ â���Ѵ�.</h3>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="two" value="1">���� �ƴϴ� &nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="two" value="2">���� �ƴϴ�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="two" value="3" checked="checked">�߰��̴�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="two" value="4">�ణ �׷���&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="two" value="5">�ſ� �׷���<br><br>
                                     
                                       <h3>3. ȸ��, ��Ƽ, �米������ ��ȹ�Ѵ�.</h3>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="three" value="1">���� �ƴϴ� &nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="three" value="2">���� �ƴϴ�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="three" value="3" checked="checked">�߰��̴�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="three" value="4">�ణ �׷���&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="three" value="5">�ſ� �׷���<br><br>
                                       
                                        <h3>4. ö�����̰ų� ������ �������� �����Ѵ�.</h3>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="four" value="1">���� �ƴϴ� &nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="four" value="2">���� �ƴϴ�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="four" value="3" checked="checked">�߰��̴�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="four" value="4">�ణ �׷���&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="four" value="5">�ſ� �׷���<br><br>
                                      
                                      
                                       <h3>5. ����� �ܾ ����Ѵ�.</h3>
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="five" value="1">���� �ƴϴ� &nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="five" value="2">���� �ƴϴ�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="five" value="3" checked="checked">�߰��̴�&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="five" value="4">�ణ �׷���&nbsp;&nbsp;
                                       <input style="-webkit-appearance: radio; margin-top: 1px;" type="radio" name="five" value="5">�ſ� �׷���<br><br>
                                       
                                       <input type="button" value="���� �Ϸ�" class="primary" style= "width: 100%; height: 2.75rem" onclick="type_check()">
                                 </div>
                              </div>
                           </form>
                        </article>
                        
                        <!-- ���� part2 -->
                        <article id="npa2" style="padding-top : 1.3rem;">
                        <img src="images/arrow.png" style="width: 4%; height: 4%; margin-bottom: 1rem;" onclick="location.href='main.jsp#npa1'" >
                        <h2 class="major" style="margin-left: 11%; margin-right: auto; margin-botton:10%;">Gathering Information</h2>
                           <form action="JoinCon" method="post">
                              <div class="fields">
                                 <div class="field half" style="margin: 0 auto; padding-right:22px; width:100%">    
                                       <input type="button" value="Join Us" class="primary" style= "width: 100%; height: 2.75rem" onclick="type_check2()">
                                 </div>
                              </div>
                           </form>
                        </article>
                        
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
                        
                        
						 <!-- recmommend ��õ -->
						<script type="text/javascript">
						
							var tema;
							var fellow;
							var spot;
							/* �ϳ��� ��ǿ� �� �־�� ��¥�� �ϳ��� ���� ������ �̴ϱ� ....*/
							function lo() {

								location.href="#recommend_fellow";//�̵�
								 for(var i = 0; i < document.getElementsByName("tema").length; i++){
								        if(document.getElementsByName("tema")[i].checked == true){
									        tema = document.getElementsByName("tema")[i].value;
									        /* alert(tema); */
									    }
								    }

							}
							function lo2(){
								location.href="#recommend_spot";//�̵�
								 for(var i = 0; i < document.getElementsByName("fellow").length; i++){
								        if(document.getElementsByName("fellow")[i].checked == true){
								     
								           fellow = document.getElementsByName("fellow")[i].value;
								           /* alert(fellow); */
								        }
								    }
							}
							function lo3(){
								for(var i = 0; i < document.getElementsByName("spot").length; i++){
							        if(document.getElementsByName("spot")[i].checked == true){
							           
							           spot = document.getElementsByName("spot")[i].value;
							           /* alert(spot); */
							        }
							    }
							}
							
							function wh() {
								location.href="RecommendCourse?tema="+tema+"&fellow="+fellow+"&spot="+spot;
							}
						</script>
					        <article id="recommend_tema">
					            <h2 class="major" style="margin-left: 5%; margin-botton: 10%;">
					             	  ������ ��� ������ ����ּ���</h2>
					            <div class="column_center">
					              <div class="column_top" style="background-image: url('images/nightview.jpg'); background-position: center; background-size:20rem;
									/* background-size: corver; */
									background-repeat: no-repeat;
									padding: 1rem;">	
						               <input onclick="lo()" checked="checked" style="-webkit-appearance: radio; margin-top: 1px; width: 1rem; height: 1rem;" type="radio" name="tema" value="night">
						              <!--  <img alt="�߰�" src="images/nightview.jpg">	 -->				               </div>
					               <div class="column_top" style="background-image: url('images/sea.jpg'); background-position: center; background-size:20rem;
									/* background-size: corver; */ 
									background-repeat: no-repeat;
									padding: 1rem;">
										<input onclick="lo()" style="-webkit-appearance: radio; margin-top: 1px; width: 1rem; height: 1rem;" type="radio" name="tema" value="sea">
						               <!--  <a href="#recommend_fellow"><img alt="�ٴ�" src="images/sea.jpg"></a> -->
					               </div>
					              <div class="column_bot" style="background-image: url('images/star.jpg'); background-position: center; background-size:20rem;
									/* background-size: corver; */
									background-repeat: no-repeat;
									padding: 1rem;">
						               <input onclick="lo()" style="-webkit-appearance: radio; margin-top: 1px; width: 1rem; height: 1rem;" type="radio" name="tema" value="star">
						               <!-- <a href="#recommend_fellow"><img alt="��" src="images/star.jpg"></a> -->
					               </div>
					               <div class="column_bot" style="background-image: url('images/nature.jpg'); background-position: center; background-size: 20rem;
									/* background-size: corver; */
									background-repeat: no-repeat;
									padding: 1rem;">
						               	<input onclick="lo()" style="-webkit-appearance: radio; margin-top: 1px; width: 1rem; height: 1rem;" type="radio" name="tema" value="nature">
						               <!--  <a href="#recommend_fellow"><img alt="�ڿ�" src="images/nature.jpg"></a> -->
					               </div>
					            </div>
					        </article>
					      
					        <article id="recommend_fellow" style="padding-top: 1.2rem; ">
					        	
					        	<img src="images/arrow.png" style="width: 4%; height: 4%; margin-bottom: 1rem;" onclick="location.href='main.jsp#recommend_tema'" >
					            <h2 class="major" style="margin-left: 5%; margin-botton: 10%;">
					           			  ������ �Բ��ϳ���?</h2>
					            <div class="column_center">
					               <div class="column_top" style="clear: both;" >
					               	<input type="radio" name="fellow" value="couple" checked="checked" onclick="lo2()" style="-webkit-appearance: radio; width: 1rem; height: 1rem;">����
					                
					               </div>
					               <div class="column_top" style="clear: both;">
					               <input type="radio" name="fellow" value="family" onclick="lo2()" style="-webkit-appearance: radio; width: 1rem; height: 1rem;">����
					                  
					               </div>
					               <div class="column_bot" style="clear: both;">
					               <input type="radio" name="fellow" value="friend" onclick="lo2()" style="-webkit-appearance: radio; width: 1rem; height: 1rem;">ģ��
					             
					               </div> 
					            </div>
					         </article>
					        <style>
					        	#recommend_spot > div > input{
					        		height: 15rem;
					        	}
					        	
					        	@media screen and (max-width: 480px){
					        		#recommend_spot > div > input{
					        		height: 3rem;
					        	}
					        	}
									
					        	
					        </style>
					        
					         <article id="recommend_spot" style="padding-top: 1.2rem">
					         	<img src="images/arrow.png" style="width: 4%; height: 4%; margin-bottom: 1rem;" onclick="location.href='main.jsp#recommend_fellow'" >
					            <h2 class="major" style="margin-left: 5%; margin-botton: 10%;">
					         		    �������� ���ϳ���?</h2>
					            <div class="column_center" style="text-align: center;">
					               <div class="column_top" style="text-align: left; margin-left: 1rem;">
					                 <input type="radio"  checked="checked" name="spot" value="1" onclick="lo3()" style="-webkit-appearance: radio; width: 1rem; height: 1rem;">��
					               </div>
					               <div class="column_top" style="text-align: left; margin-left: 1rem;">
					                  <input type="radio" name="spot" value="0" onclick="lo3()" style="-webkit-appearance: radio; width: 1rem; height: 1rem;">�ƴϿ�
					               </div>
					              <input type="button" value="�ڽ� ã��" onclick="wh()">
					            </div>
					         </article>
					         
					        
					         
					        <!-- result ��� --> 
					     
					         
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
