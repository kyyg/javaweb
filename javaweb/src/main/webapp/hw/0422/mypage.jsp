<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <style>
  .home__box{
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

  </style>
   <section>
  <div class="home__title">로그인해야 나오는 회원 개인 페이지</div>
   <div class="home__box">
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/1.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     		<div class="home__info1">주문 목록</div>
			</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/1.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">배송 목록</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/1.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">개인정보수정</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/1.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">쿠폰 목록</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/2.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">내가 쓴 게시글</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/2.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">반품/취소 상황</div>

		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/2.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">메뉴</div>
		</div>       
    </div>   
    <div class="home">
     <div class="home__img"><img src="<%=request.getContextPath()%>/images/2.jpg" width="200px" height="200px" /></div>
     <div class="home info">
     	<div class="home__info1">메뉴</div>
		</div>       
    </div>   
   </div>
 </section>
