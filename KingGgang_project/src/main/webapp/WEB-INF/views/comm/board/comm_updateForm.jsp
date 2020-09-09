<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	이	   름 : B4_updateForm.jsp
	개  발   자 : 최 인 아
	설	   명 : 메인 페이지
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="/WEB-INF/views/top.jsp"%>
<footer class="footer-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12 white_fonts">
					<div class="row">
						<div class="col-sm-6 col-md-6 col-lg-3">
							<div class="full">
								<h3>게시물 수정</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</footer>
<div class="section layout_padding" align="center">
	<form name="f" action="comm_updatePro.do?boardNum=${getBoard.boardNum}" method="post" onsubmit="return check()" enctype="multipart/form-data">
	<input type="hidden" name="boardNum" value="${getBoard.boardNum}">
	<table width="600">
		<tr align="center">
			 <td align="center" colspan="3">
			 	<input type="file" name="file_name">
			 	<img src="http://localhost:8080/img/${getBoard.file_name}" width="200" height="200">
				<%-- <input type="hidden" name="file_size" value="${getBoard.file_size}"> --%>
			 </td>
		</tr>
		
		<tr height="80">
			<td colspan="2"><textarea name="content" cols="100" rows="5">${getBoard.content}</textarea></td>
		</tr>
	
		<tr>
			<th>태그하기</th>
			<td><input type="text" name="tag" value="${getBoard.tag}"></td>
		</tr>
		
		<tr>
			<td align="center" colspan="3">
				<input type="submit" value="글수정" onclick="window.location='comm_updatePro.do?boardNum=${getBoard.boardNum}'">
				<input type="button" value="글목록" onclick="window.location='comm_myPage.do'">
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="/WEB-INF/views/bottom.jsp"%>