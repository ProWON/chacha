<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("죄송합니다. 추천 가능한 카페가 없습니다.")
		var check = confirm("이 길을 선택 하시겠습니까?")
		
		if(check==true){
			location.href="Result.jsp#result"
			
		}else{
			location.href="RecommendCourse.jsp#course"
		}

	</script>
</body>
</html>