<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<link href="css/about.css" rel="stylesheet" type="text/css">
<link href="css/fixedContents.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>정크아트 소개</title>
</head>
<body class="about_body">
<%@ include file="header.jsp"%>
<div class="table_box">
<button>light mode</button>
	<table class="table">
		<tr>
			<td class="face_box" align="center"><img class="face" src="http://www.eknews.net/xe/files/attach/images/30343/930/515/cd0a4ea15bf0a067f08ff11c5024ba8a.jpg"></td>
			<td align="center">
				<ul class="intro_comment">
					<li><i><b>"쓰레기를 활용한 예술"</b></i></li><br>
					<li><i>쿠르트 슈비터스(Kurt Schwitters)는 1910년대부터 자신의 쓰레기통에서</i></li>
					<li><i>작품의 재료를 발견하기 시작합니다.</i></li>
					<li><i>물질적인 문명이 발전할수록 쓰레기가 늘어나는 문제를 알리기 위함과 동시에,</i></li>
					<li><i>쓰레기통에 버려진 잡동사니가 시대를 반영한다고 생각했기 때문입니다.</i></li>
				</ul>
			</td>
		</tr>
	</table>
</div>	
<div class="section sec1">
	<ul class="sec1_commnet">
		<li><i>일상생활에서 나온 부산물인 폐품 등 잡동사니를 소재로 제작한 미술 작품으로,</i></li>
		<li><i>일반적으로 '정크(junk)'는 폐품·쓰레기·잡동사니를 의미합니다.</i></li>
		<li><i>1950년 이후 산업폐기물이나 공업 제품 등 폐품에서 작품의 소재를 찾으려는 작가들이 미국과 유럽에서 등장하기 시작,</i></li>
		<li><i>미국의 팝아트 화가 '로버트 라우센버그'에 의해 널리 알려지게 되었습니다.</i></li>
		<li style="font-size:20px;"><i>* 정크 아트 프로펠러 커피 테이블</i></li>
	</ul>
</div>

<div class="section sec2">
	<i class="manner"><u>Manner at exhibition</u></i>
</div>
<div class="section sec3">
	<i class="manner"><u>Manner at exhibition</u></i>
</div>
<div class="section sec4">
	<i class="manner"><u>Manner at exhibition</u></i>
</div>
<div class="section sec5">
	<i class="manner"><u>Manner at exhibition</u></i>
</div>
<%@ include file="footer.jsp"%>
</body>
<script>
	const chBtn = document.querySelector('button');
	const body = document.querySelector('.about_body');
	chBtn.addEventListener('click',function(){
		document.body.classList.toggle('light_mode');
		if (chBtn.innerText === 'light mode') {
		    chBtn.innerText = 'dark mode';
		} 
		else {
		    chBtn.innerText = 'light mode';
		}
	})
	
	
</script>
</html>