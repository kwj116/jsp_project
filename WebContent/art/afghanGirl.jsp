<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
        height: 100vh;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        font-family: 'Orbit', sans-serif;
        background-color: #f7f7f8;
        animation : appear 1s linear;
    }
    
    @keyframes appear {
        0% {
           	opacity:0;
        }
        100% {
        	opacity:1;
        }
    }
    
    
    body::before {
	  content: "";
	  background: url("https://cdn.pixabay.com/photo/2020/05/06/18/22/peace-5138679_1280.png");
	  background-repeat: no-repeat;
	  background-size:contain;
	  background-position: center;
	  position:fixed;
	  width: 100%;
	  height: 100%;
	  z-index: -1;
      /*animation: rotate 80s infinite linear forwards;*/
	  transition: all 1s;
	 
	}
	
	table{
		color:white;
		box-shadow: 10px 10px 10px black;
	}
	
	.text{
	  
      color:black;
      transition: opacity 1s linear;
	}
	
    @keyframes rotate{
    	0%{
    		transform : rotate(0deg);
    		
    	}
    	100%{
    		transform : rotate(180deg);
    		
    	}
    }
  


  
    img {
    	height:500px;
        border:2px solid #7c1210;
    }
    
    
    .grid_box{
    	width : 100%;
    	height:100%;
    	display: grid;
    	grid-template-columns: 15% 70% 15%;
    }
    
    .box2{
    	display: flex;
    	justify-content: center;
    	align-items:center;
    	height: 100%;
    }
   
    img:hover .text {
      display: block;
    }
    
    .box1,.box3{
    	background-image: url("https://cdn.pixabay.com/photo/2019/05/27/23/55/vintage-4234038_1280.png");
    	background-size: contain;
    	background-color: #c20100;
    }
	table{
		background-color: rgba(255, 255, 255, 0.8);
		border:4px solid #7c1210;
		border-radius: 5px;
	}
</style>

<body>
	<div class="grid_box">
		<div class="box1"></div>
		<div class="box2">
			<table>
				<tr align="center">
					<th class="text">아프간 소녀(Iconic portrait of Afghan girl)</th>
				</tr>
				<tr>
					<th>
					<img class="art" src="https://vsemart.com/wp-content/uploads/2015/09/Afghan-girl.jpg">
					<div class="text">
					아프간 소녀라는 표현은 일반적으로 1980년대 후반부터 <br>1990년대 초반의 아프가니스탄 전쟁 시기에 찍힌 사진을 통해 유명해진 여성을 가리킵니다.<br> 
					이 사진은 1984년에 촬영된 스티브 맥커리의 작품으로,<br> 아프가니스탄 전쟁 도중에 싸우는 아프가니스탄 소녀의 모습을 담았습니다.
					</div>
					</th>
				</tr>
				<tr>
					
				</tr>
			</table>
		</div><!-- box2 -->
		<div class="box3"></div>
	</div>
</body>
</html>