<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
        .btn {
          
            border: 0; 
            border-radius: 0; /*���� 0*/
            padding: 5px 10px; 
            margin: 20px 0px;
        }
	</style>
	<script>
	function change(a){
		//console.log(a);
		//console.log(a.value);
		location.href="list.board?pageNum=1&amount=" + a.value;
	}
</script>
</head>
<body>
<div class="container">
		<h3>My Web�Խ���</h3>

		<div>
			<select onchange="change(this)">
				<option value="10" ${pageVO.amount eq 10 ? 'selected' : '' }>10���� ����</option>
				<option value="20" ${pageVO.amount eq 20 ? 'selected' : '' }>20���� ����</option>
				<option value="50" ${pageVO.amount eq 50 ? 'selected' : '' }>50���� ����</option>
				<option value="100" ${pageVO.amount eq 100 ? 'selected' : '' }>100���� ����</option>
			</select>
		</div>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>����</th>
					<th>����</th>
					<th>��ȣ</th>
					<th>����</th>
					<th>1��</th>
					<th>2��</th>
					<th>3��</th>
					<th>4��</th>
					<th>�̹���</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="vo" items="${list }">
					<tr>
						<td>${vo.subject }</td>
						<td>${vo.qsubject }</td>
						<td>${vo.qcode }</td>
						<td>${vo.question }</td>
						<td>${vo.ans1 }</td>
						<td>${vo.ans2 }</td>
						<td>${vo.ans3 }</td>
						<td>${vo.ans4 }</td>
					</tr>
				</c:forEach>
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="5" align="center">
	               			<ul class="pagination pagination-sm">
	               			
	               				<!-- 2. ������ư Ȱ��ȭ ���� -->
	               				<c:if test="${pageVO.prev }">
                        			<li><a href="CbtServlet?command=test&pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount}">����</a></li>
								</c:if>
								                        		
                        		<!-- 1. ��������ȣ ó�� -->
                        		<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
	                        		<li  class="${pageVO.pageNum eq num ? 'active' : '' }">
	                        		<a href="CbtServlet?command=test&pageNum=${num }&amount=${pageVO.amount}">${num }</a></li>
                        		</c:forEach>
                        		
                        		<!-- 3. ������ư Ȱ��ȭ ���� -->
                        		<c:if test="${pageVO.next }">
                        			<li><a href="CbtServlet?command=test&pageNum=${pageVO.endPage + 1 }&amount=${pageVO.amount}">����</a></li>
                        		</c:if>
                    			</ul>
					<input type="button" value="�� �ۼ�" class="btn btn-default pull-right" onclick="location.href='write.board'">
					
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>
</body>
</html>
