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
		alert("�˼��մϴ�. ��õ ������ ī�䰡 �����ϴ�.")
		var check = confirm("�� ���� ���� �Ͻðڽ��ϱ�?")
		
		if(check==true){
			location.href="Result.jsp#result"
			
		}else{
			location.href="RecommendCourse.jsp#course"
		}

	</script>
</body>
</html>