<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script>


var clockTarget = document.getElementById("clock");




</script>

<script>
	function btn_call() {
		alert("����");
	}
	function tag_text(){
		var p = document.getElementById("p1");
		alert(p.innerHTML);
		//�Ϲ� ��� �±� innerHTML
		var input = document.getElementById("in1");
		alert(input.value)
		//�Ϲ� �з� �±�value
	}
</script>
<style>
		#bg {
		-moz-transform: scale(1.0);
		-webkit-transform: scale(1.0);
		-ms-transform: scale(1.0);
		transform: scale(1.0);
		-webkit-backface-visibility: hidden;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100vh;
		z-index: 1;
		}

		#bg:before, #bg:after {
			content: '';
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
		}

	#bg{
		background-image: linear-gradient(to top, rgba(19, 21, 25, 0.5), rgba(19, 21, 25, 0.5)), url("../../images/overlay.png");
	}
		#bg:before {
			-moz-transition: background-color 2.5s ease-in-out;
			-webkit-transition: background-color 2.5s ease-in-out;
			-ms-transition: background-color 2.5s ease-in-out;
			transition: background-color 2.5s ease-in-out;
			-moz-transition-delay: 0.75s;
			-webkit-transition-delay: 0.75s;
			-ms-transition-delay: 0.75s;
			transition-delay: 0.75s;
			
			background-size: auto,
			 256px 256px;
			background-position: center,
			 center;
			background-repeat: no-repeat,
			 repeat;
			z-index: 2;
		}

		#bg:after {
			-moz-transform: scale(1.125);
			-webkit-transform: scale(1.125);
			-ms-transform: scale(1.125);
			transform: scale(1.125);
			-moz-transition: -moz-transform 0.325s ease-in-out, -moz-filter 0.325s ease-in-out;
			-webkit-transition: -webkit-transform 0.325s ease-in-out, -webkit-filter 0.325s ease-in-out;
			-ms-transition: -ms-transform 0.325s ease-in-out, -ms-filter 0.325s ease-in-out;
			transition: transform 0.325s ease-in-out, filter 0.325s ease-in-out;
			background-position: center;
			background-size: cover;
			background-repeat: no-repeat;
			z-index: 1;
		}

		body.is-article-visible #bg:after {
			-moz-transform: scale(1.0825);
			-webkit-transform: scale(1.0825);
			-ms-transform: scale(1.0825);
			transform: scale(1.0825);
			-moz-filter: blur(0.2rem);
			-webkit-filter: blur(0.2rem);
			-ms-filter: blur(0.2rem);
			filter: blur(0.2rem);
		}

		body.is-preload #bg:before {
			background-color: #000000;
		}
</style>

</head>
<body>
	<h1 id="clock" style="color:gray;">00:00</h1>
	<div id=bg></div>
	
	<script>
	var div_bg_tag = document.getElementById("bg")
	
	div_bg_tag.style.backgroundImage = "url('images/main1.jpg')";
	div_bg_tag.style.backgroundRepeat = "no-repeat";
	div_bg_tag.style.backgroundSize = "cover"
	
	
	var count = 0;
	
	function clock() {
	    var date = new Date();
	    var seconds = date.getSeconds();
	    
	    var div_bg_tag = document.getElementById("bg")
		
	    if(count == 0){
	    	div_bg_tag.style.backgroundImage = "url('images/main1.jpg')";
			div_bg_tag.style.backgroundRepeat = "no-repeat";
			div_bg_tag.style.backgroundSize = "cover"
			count++
	    }else if(count==1){
	    	div_bg_tag.style.backgroundImage = "url('images/main2.jpg')";
			div_bg_tag.style.backgroundRepeat = "no-repeat";
			div_bg_tag.style.backgroundSize = "cover"
			count++
	    }else if(count==2){
	    	div_bg_tag.style.backgroundImage = "url('images/main3.jpg')";
			div_bg_tag.style.backgroundRepeat = "no-repeat";
			div_bg_tag.style.backgroundSize = "cover"
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
</body>
</html>