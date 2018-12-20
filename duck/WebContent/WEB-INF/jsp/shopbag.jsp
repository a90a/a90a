<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="article">
	<div id="header2">
		<h1>장바구니 - 이다혜</h1>
	</div>
	<div id="content">
	<fieldset>
		<legend>스터디 장바구니 목록</legend>
		<table>
			<thead>
				<tr>
					<th colspan="14"> 스터디 장바구니 목록</th>
				</tr>
				<tr>
					<td><input type="checkbox" id="checkall"></td>
					<td></td>
					<td>스터디명</td>
					<td>작성자</td>
					<td>분류</td>
					<td>주소</td>
					<td>시작일</td>
					<td>종료일</td>
					<td>횟수</td>
					<td>인원</td>
					<td>금액</td>
				</tr>
			</thead>
			<tbody>
			<%-- <c:set var="amt" value="${bagnum}"/> --%>
				<c:forEach var="e" items="${slvolist}">
					<tr>
						<td><input type="checkbox" id="chk" name="chk"></td>
						<td><a href=""> 
						<img src="resources/images/${e.s_img }">
						</a></td>
						<td><a href="selectOneStudy?num=${e.s_num }">${e.s_title}</a></td>
						<td>${e.ms_name}</td>
						<td>${e.s_category}</td>
						<td>${e.s_loc1}</td>
						<td>${e.s_date1}</td>
						<td>${e.s_date2}</td>
						<td>${e.s_count}</td>
						<td>${e.s_pnum}</td>
						<td>${e.s_price}</td>
						<td><a href="deleteStudy_list?num=${e.sl_num}">삭제</a></td>
						<td><a href="updateStudy_list?num=${e.sl_num}&&buynum=2&&price=${e.s_price}">구매</a></td>
					</tr>
				</c:forEach>
<!-- 				<tr>
             		<td colspan="5" width="100%">총 상품가격 <strong id="tot_price"></strong>원 </td>
            	</tr>
            	
          		<tr>
             		<td colspan="5">총 주문 상품수 <strong id="tot_amount"></strong>권(개)</td>
          		</tr> -->
			</tbody>
		</table>
		</fieldset>
	</div>
	<div>
	<fieldset>
		<legend>강의 장바구니 목록</legend>
		<table>
			<thead>
				<tr>
					<th colspan="15">강의 장바구니 목록 </th>
				</tr>
				<tr>
						<td><input type="checkbox" id="checkall2"></td>
						<td></td>
						<td>강의명</td>
						<td>강사명</td>
						<td>분야</td>
						<td>위치</td>
						<td>시작일</td>
						<td>종료일</td>
						<td>횟수</td>
						<td>인원</td>
						<td>비용</td>
						
					</tr>
				</thead>
				<tbody>
				<c:set var="amt" value="${bagnum}"/>
					<c:forEach var="listv" items="${scvolist }">
						<tr>
							<td><input type="checkbox" id="chk" name="chk2"></td>
							<td><a href=""> 
							<img src="resources/images/${listv.c_img}">
							</a></td>
							<td>
								<a href="selectoneclass?num=${listv.c_num }"
								style="color: gray;">${listv.c_title }</a>
							</td>
							<td>${listv.c_name }</td>
							<td>${listv.c_category}</td>
							<td>${listv.c_loc1 }</td>
							<td>${listv.c_date1 }</td>
							<td>${listv.c_date2 }</td>
							<td>${listv.c_count}</td>
							<td>${listv.c_pnum }</td>
							<td>${listv.c_price }</td>
														
							<td><a href="deleteClass_list?num=${listv.sc_num}">삭제</a></td>
							<td><a href="updateClass_list?num=${listv.sc_num}&&buynum=2&&price=${listv.c_price }">구매</a></td>
						</tr>
					</c:forEach>
				</tbody>
		</table>
		</fieldset>
	</div>
</div>

<script>
// 모든 컨텐츠가 로딩이 된 후에 호출되는 메서드
$(function(){
	    //스터디 최상단 체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	     //강의 최상단 체크박스 클릭
	    $("#checkall2").click(function(){
	        //클릭되었으면
	        if($("#checkall2").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk2]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk2]").prop("checked",false);
	        }
	    })
	     //강의 구매버튼 클릭
	    $("#classbuybut").click(function(){
	    	var pram;
	        //클릭되었으면
	    	$('.chk').each(function() {
	    		if($(this).is(":checked")){
	    			if(i===0){
	    				
	    			}
	    		}
				
			})
	    })
});
</script>
<!-- 
//선택된 갯수
$('input:checkbox[name="chk2"]:checked').length 
 -->