<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="nav_box">
	<nav>
		<a id="user_id" href="UserInfo" title="개인정보를 확인 할 수 있습니다.">${userId}</a>
		<a id="login" href="login.jsp">로그인</a>
		<a id="signUp" href="signUp.jsp">회원가입</a>
		<a id="res" href="reservation.jsp">예약</a>
		<a href="about.jsp">전시회</a>
		<a href="guide.jsp">관람 가이드</a>
		<a href="onlineExhibition.jsp">온라인 전시관</a>
		<a id="checkRes"href="checkMyRes.jsp">예약 조회</a>
		<a id="logout" href="Logout">로그 아웃</a>
	</nav>
</div>
<script>
	const logout = document.querySelector('#logout');
	logout.addEventListener('click',function(){
		alert("로그아웃 되었습니다.");
	})
</script>
