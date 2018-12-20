<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1> ���� ���� �󼼺���</h1>
		<p id="time">2018-12-10</p>
	</div>
	<div id="content">
		<p>����� ���� ���� ������ </p>
			<fieldset>
				<p>
					<label>���� ��ȣ:</label>
					<input type="text" id="c_num" name="c_num1" readonly="readonly" value="${cvo.c_num }"> 
				</p>
				<p>
					<label>���� ��:</label>
					<input type="text" id="c_title" name="c_title1" readonly="readonly" value="${cvo.c_title }"> 
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_name" readonly="readonly" value="${cvo.c_name }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date1" readonly="readonly" value="${cvo.c_date1 }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date2" readonly="readonly" value="${cvo.c_date2 }">
				</p>
				<p>
					<label>���� �ο� �� :</label>
					<input type="text" name="c_pnum" readonly="readonly" value="${cvo.c_pnum }"> 
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc1" readonly="readonly" value="${cvo.c_loc1 }">
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc2" readonly="readonly" value="${cvo.c_loc2 }">
				</p>
				<p>
					<label>���� �̹��� :</label>
					<input type="text" name="c_img" readonly="readonly" value="${cvo.c_img }">
				</p>
				<p>
					<label>���� ���� :</label>
					<input type="text" name="c_comment" readonly="readonly" value="${cvo.c_comment }">
				</p>
				<p>
					<label>���� �о� :</label>
					<input type="text" name="c_category" readonly="readonly" value="${cvo.c_category }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" id="c_price" name="c_price" readonly="readonly" value="${cvo.c_price }">
				</p>
				<p>
					<label>���� �� Ƚ�� :</label>
					<input type="text" name="c_count" readonly="readonly" value="${cvo.c_count }">
				</p>
				<p>
					<input type="button" id="cancleBtn" value="�������">
					<input type="button" id="rewriteBtn" value="�����ϱ�">		
					<input type="button" id="deleteBtn" value="�����ϱ�">	
					<input type="button" id="classBuyBtn" value="������û">
					<input type="button" id="classBagBtn" value="��ٱ���">		
				</p>
			</fieldset>
		<form action="createc1_review" method="post">
		<fieldset>
			<p>
				<label>��� �ۼ��� �г���: </label>
				<input type="text" name="c1_writer">
				<label>��� ����: </label>
				<input type="text" name="c1_reply">
				<label>���� ����: </label>
				<input type="text" name="c1_stars">
				<input type="submit" value="��� �ۼ�">
				<input type="hidden" name="c_num" value="${cvo.c_num }">
			</p>
		</fieldset>
		</form>
		<fieldset>	
		<c:forEach var="listv" items="${c1list}">
			<p>
				<label>��� �ۼ��� �г���: </label>
				<input type="text" name="c1_writer1" readonly="readonly" value="${listv.c1_writer }">
				<label>�ۼ� ��¥: </label>
				<input type="text" name="c1_date" readonly="readonly" value="${listv.c1_date }"> 
				<label>����: </label>
				<input type="text" name="c1_stars1" value="${listv.c1_stars }">
				<label>��� ����: </label>
				<input type="text" name="c1_reply1" value="${listv.c1_reply }">
				<input type="button" class="reviewreBtn" id="reviewreBtn" value="����">
				<input type="button" class="reviewdelBtn" id="reviewdelBtn" value="����">
				<input type="hidden" class="c1_num" value="${listv.c1_num }" >
			</p>
		</c:forEach>
		</fieldset>
	</div>
</div>
<script>
// ��� �������� �ε��� �� �Ŀ� ȣ��Ǵ� �޼���
$(function(){
	$('#cancleBtn').click(function(){
		location.href = 'showclasslist?page=1';
	});
	$('#rewriteBtn').click(function(){
		console.log($('#c_num').val());
		var num = $('#c_num').val();
		location.href = 'updateview?num='+num;
	});	
	$('#deleteBtn').click(function(){
		if(confirm("�����Ͻðڽ��ϱ�?")){
			var num = $('#c_num').val();
			location.href = 'deleteclass?num='+num+'&page='+1;
		}		
	});
	// ������û
	$('#classBuyBtn').click(function(){
		if(confirm("������û �Ͻðڽ��ϱ�?")){
			var title = $('#c_title').val();
			title = encodeURI(title,'EUC-KR');
			var price = $('#c_price').val();
			location.href = 'insertClassList?title='+title+'&buynum='+2+'&price='+price;
		}		
	});
	// ���� ��ٱ���
	$('#classBagBtn').click(function(){
		if(confirm("�ش� ���¸� ��ٱ��Ͽ� �����ðڽ��ϱ�?")){
			var title = $('#c_title').val();
			title = encodeURI(title,'EUC-KR');
			location = 'insertClassList?title='+title+'&buynum='+1;
		}		
	});
	$('.reviewdelBtn').each(function(index, item){
	    $(this).click(function() {
	       var result = confirm('����?'); 
	       if(result) { //yes 
	          var c1_num = $(this).next().val();
	       	  var c_num = $('#c_num').val();
	          location.href='deletec1_review?c1_num='+c1_num+'&c_num='+c_num;
	       }
	    }); 
	 });
	$('.reviewreBtn').each(function(index, item){
	    $(this).click(function() {
	    	
	          var c1_num = $(this).next().next().val();
	       	  var c_num = $('#c_num').val();
	       	  var c1_reply = $(this).prev().val();
	       	  var c1_stars = $(this).prev().prev().prev().val();
	       	  /* console.log('��� �ε��� Ȯ��: '+c1_num);
	       	  console.log('�� �ε��� Ȯ��: '+c_num);
	       	  console.log('��� ���� Ȯ��: '+c1_reply);
	       	  console.log('��� ���� Ȯ��: '+c1_stars);  */
	          location.href='updatec1_review?c1_num='+c1_num+'&c_num='+c_num+'&c1_reply='+c1_reply+'&c1_stars='+c1_stars;  
	    }); 
	 });
});
</script>