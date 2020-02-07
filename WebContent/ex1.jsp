<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css?ver1" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
<style>
   body{
   }
   #wrap{
      background-image: url("images/recommend_bg.jpg");
      background-repeat: no-repeat;
      width: 100%;
      height: 800px;
      border: 1px solid black;
   }
   p{
      display: inline;
      color: white;
      text-align: center
   }
   
   #hhh{
      text-align: center;
      height: 100px;
   }
   .bbb{
      width: 90%;
      float: left;
   }
   .iii{
      width: 10%;
      float: right;
   }
   
   #content{
      
   }
   .column_left{
      width: 10%;
      border: 1px solid red;
      height: 500px;
      float: left;
   }
   .column_center{
      width: 79%;
      border: 1px solid green;
      height: 500px;
      float: left;
      
      padding-bottom: 30px;
   }
   .column_right{
      width: 10%;
      border: 1px solid blue;
      height: 500px;
      float: left;
   }
   .column_top{
      height: 80px;
   }
   .column_middle{
      height: 210px;
   }
   .column_bot{
      height: 210px;
   }
   .left_img{
      line-height: 200px;
      float: left;
      width: 50%;
      text-align: center;
   }
   .right_img{
      line-height: 200px;
      float: left;
      width: 49%;
      text-align: center;
   }
   .left_img img{
      width: 90%;
      height: 180px;
      vertical-align: middle;
   }
   .right_img img{
      width: 90%;
      height: 180px;
      vertical-align: middle;
   }
</style>
<meta charset="EUC-KR">
<title>CHA CHA RECOMMEND</title>
</head>
<body>
<div id="wrap">
   <div id="hhh">
      <div class="bbb">CHA CHA</div>
      <div class="iii"><a href="#"><img width="50px" height="50px" alt="개인정보수정" src="images/personal_information.png"></a></div>
   </div>
   <div id="content">
      <div class="column_left">
         
      </div>
      <div class="column_center">
         <div class="column_top">
            가장 마음에 드는 사진을 골라주세요
         </div>
         <div class="column_middle">
            <div class="left_img">
               <a href="#"><img alt="야경" src="images/nightview.jpg"></a>
            </div>
            <div class="right_img">
               <img alt="바다" src="images/sea.jpg">
            </div>
         </div>
         <div class="column_bot">
            <div class="left_img">
               <img alt="별" src="images/star.jpg">
            </div>
            <div class="right_img">
               <img alt="자연" src="images/nature.jpg">
            </div>
         </div>
      </div>
      <div class="column_right">
      </div>
   </div>
</div>
</body>
</html>