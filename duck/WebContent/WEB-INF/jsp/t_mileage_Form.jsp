<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
   <div id="header2">
      <h1> 마일리지 포인트 </h1>
      <p id="time">2018-11-20</p>
   </div>
   <!-- 
   <div>입력하기
      <form action="mt_creatS_mileage" method="post">
      ID : <input type="text" name="mt_id" id="mt_id">
      Point : <input type="text" name="tm_point" id="tm_point">
      <input type="submit" name="" id="" value="마일리지 입력" >
      </form>
   </div>
    -->
   <div>조회하기
      <form action="tm_point_s" method="post">
      ID : <input type="text" name="mt_id" id="mt_id">
      <input type="submit" name="" id="" value="아이디로 조회하기" >
      </form>
   </div>
   <div>수정하기 
      <form action="t_mileageupdate" method="post">
      ID : <input type="text" name="mt_id" id="mt_id">
      math_point : <input type="text" name="math_point" id="math_point">
      tmNumber : <input type="text" name="tmNumber" value="">
      <input type="submit" name="" id="" value="포인트 update" >
      </form>
   </div>
</div>


<script>
   $(function(){
      
   });
</script>