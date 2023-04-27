<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <style>
  .home__box{
  background-color: rgb(244, 241, 237);
  padding: 20px 20px;
  padding-top:60px;
  }
	.home__title, .best__title{
  font-size: 25px;
  color: rgb(171, 134, 134);
  border-top: 1px solid rgb(226, 204, 204);
  padding: 80px 0px 60px 0px;
  font-weight: bolder;
  text-align: center;  
	}
	.home__box{
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 10px;
	margin-top: 10px;
	}
	.home__img{
	background-image: url(../image/home1.png);
	height:180px;
	background-size: 100% 100%;
	}
	.home__img :hover{
	opacity : 50%
	}
	.home__info1 {
  margin: 5px 0;
  padding-top: 20px;
  font-size: 13px;
  color:gray;
	}
	.home__info2 {
  padding:0
  font-size: 13px;
  color: rgb(89, 85, 82);
	}
	.best__box{
   display: grid;
   grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
   border: 0px solid rgb(210,210,210);
   height:400px;
   grid-gap: 5px;
   margin-bottom: 20px;
   }
	.best__img{
	grid-column-gap: 10px;
	border-radius: 10px;
	}
	.best__img :hover{
	transform: scale(1.2, 1.2);
  transition-duration: 0.5s;
	}
  </style>
  
 <p><br/></p>
 <section>
  <div class="home__title">Weekly New Item!</div>
   <div class="home__box">
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box1.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">부클 에어팟 파우치</div>
     	<div class="home__info2">16,000원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box2.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">베어 실리콘 케이스 iPhone12</div>
      <div class="home__info2">19,800원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box3.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">실리콘 케이스 iPhone13</div>
     	<div class="home__info2">14,900원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box4.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">13형 와이드 노트북 파우치</div>
     	<div class="home__info2">38,000원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box5.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">버니&퍼피 노트북 파우치</div>
     	<div class="home__info2">35,000원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box6.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">클리어 케이스 갤럭시 Z플립3</div>
     	<div class="home__info2">22,000원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box7.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">11형 오픈 아이패드 파우치</div>
     	<div class="home__info2">28,000원</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/box8.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">버니&퍼피 노트북 파우치</div>
     	<div class="home__info2">35,000원</div>
		</div>       
    </div>   
   </div>
 </section>
 
  <section>
   <div class="best__title">Best Item!</div>
   <div class="best__box">
       <div class="best__img"><img src="<%=request.getContextPath()%>/images/best1.jpg" width="150px" height="300px" /></div>
       <div class="best__img"><img src="<%=request.getContextPath()%>/images/best2.jpg" width="150px" height="300px" /></div>
       <div class="best__img"><img src="<%=request.getContextPath()%>/images/best3.jpg" width="150px" height="300px" /></div>
       <div class="best__img"><img src="<%=request.getContextPath()%>/images/best4.jpg" width="150px" height="300px" /></div>
       <div class="best__img"><img src="<%=request.getContextPath()%>/images/best5.jpg" width="150px" height="300px" /></div>
       </div>
 </section>
