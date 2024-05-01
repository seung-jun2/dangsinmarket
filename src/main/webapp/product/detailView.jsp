<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>


<html>
   <head>
      <title>당신마켓</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/list.css"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
      
      <style type="text/css">
	.badge{
	background-color: #FF0000;
	
	}
	
	pre{
	font-size: 1.5em;
	font-family: 'Do Hyeon', sans-serif;
	
	}
	
	.dropdown-item{
	width: 260px;
	overflow: auto;
	} 


  #message::-webkit-scrollbar {
                width: 7px; /*스크롤바의 너비*/
            }
 
            #message::-webkit-scrollbar-thumb {
                background-color: #4cbfaf; /*스크롤바의 색상*/
            }
 
            #message::-webkit-scrollbar-track {
                background-color: white; /*스크롤바 트랙 색상*/
            }
	.start-100 {
    left: 80%!important;
}
	
	.none{
	border:none !important;
	}
	
	button{
	border: none !important;
	}
	</style>
      
   </head>
   <body class="is-preload">

	<!-- Header -->
        <header id="header">
            <a class="logo" href="${pageContext.request.contextPath}">당신마켓 <span>by koreait.project.teamD</span></a>
            <nav>
           <c:if test="${user==null }">
               <a href="${pageContext.request.contextPath}/login/login.jsp">로그인</a>
               <a href="${pageContext.request.contextPath}/login/join.jsp">회원가입</a>
               <a href="#menu">메뉴</a>
           </c:if>
            <c:if test="${user!=null }">
               <a href="${pageContext.request.contextPath}/login/logout.jsp">로그아웃</a>
               <a href="${pageContext.request.contextPath}/login/mypage.jsp">마이페이지
               <span class="badge text-bg-secondary"><c:out value="${requestcount}"/></span>
               </a>
               <button class="button primary dropdown-toggle" type="button"  data-bs-toggle="dropdown" aria-expanded="false" style="padding: 0 10px 0 10px;" >
  				쪽지 <i class="bi bi-envelope"></i>
  				</button>
 			 <div class="dropdown-menu" style="overflow-y: scroll; height: 300px;" id="message">
  				<c:forEach var="talkvo" items="${messagelist }">
  					<c:if test="${talkvo.status ==0 }">
  				  		<li class="dropdown-item" onclick="openmessage('${talkvo.m_idx}')"><c:out value="${talkvo.sendid }님의 메세지 입니다." />
  				    		<span class="position-absolute translate-middle p-2 bg-danger border border-light rounded-circle start-100 " style="margin-top: 23px; margin-left: 38px;"></span>
    						<span class="visually-hidden">New alerts</span>
  				  	    </li>
  				 	</c:if>
  				 	<c:if test="${talkvo.status==1 }">
  				 		<li class="dropdown-item" onclick="openmessage('${talkvo.m_idx}')"><c:out value="${talkvo.sendid }님의 메세지 입니다." />
  				 			<span class="visually-hidden">New alerts</span>
  				 	</c:if>
  				</c:forEach>
  			</div>
    <script type="text/javascript">
  		function openmessage(m_idx){
  	      window.open("${pageContext.request.contextPath}/message/getmessage.jsp?m_idx="+m_idx,"쪽지 읽기","width=450, height=530, left=500, top=250")
  	   }           
  		</script>	
 
               <a href="#menu">메뉴</a>
            </c:if> 
            </nav>
         </header>

      <!-- Nav -->
         <nav id="menu">
            <ul class="links">
               <li><a href="${pageContext.request.contextPath}">홈</a></li>
               <li><a href="${pageContext.request.contextPath}/product/buy.jsp">판매상품</a></li>
               <li><a href="javascript:sell()">판매등록</a></li>
               <li><a href="${pageContext.request.contextPath}/community/community.jsp">커뮤니티</a></li>
               <li><a href="${pageContext.request.contextPath}/service/service.jsp">고객센터</a></li>
            </ul>
         </nav>
<script type="text/javascript">
	function sell() {
		let yn
		if('${user.id}'==''){
			yn=confirm('판매등록은 로그인이 필요합니다. 로그인 하시겠습니까?')
			if(yn) location.href='${pageContext.request.contextPath}/login/login.jsp?back=s'  // 로그인 후 글쓰기 url로 redirect 하기 위한 파라미터
		}else{
			location.href='${pageContext.request.contextPath}/product/sell.jsp?page=${paging.currentPage }'
		}
	}
</script>



	<!-- section -->
	 <section id="two" class="wrapper style1">
            <div class="inner">
               <header class="heading major">
                  <h2>상세 보기</h2>
               </header>
               <div class="row" >
                        <form action="pay.jsp" method="post" enctype="multipart/form-data">
                       	<input type="hidden" name="page" value="${page }">
                       	<input type="hidden" id="pname" value="${vo.pname }">
                       	<input type="hidden" id="pcode" value="${vo.pcode }">
                       	<input type="hidden" id="id" value="${vo.id }">
                        <div class="container" id="container" style="margin:auto;"></div>
                        
                        	<div class="col-4">
                        	<div id="carouselExample" class="carousel slide">
  							<div class="carousel-inner" style="width: 500px; height: 500px; margin-left: 350px;">
                        <c:set var="pictures" value="${fn:split(vo.picture, ',')}" />
   						<c:forEach items="${pictures}" var="picture" varStatus="loop">
               				 <div class="carousel-item<c:if test="${loop.index == 0}"> active</c:if>">
               			     <img src="/projectupload/${picture}" class="image fit" alt="">
               				 </div>
           				 </c:forEach>
           				 
             			 <c:choose>
    				<c:when test="${fn:length(pictures) > 1}">
        		<a class="carousel-control-prev none" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" style="height: 75px; margin: auto;">
            		<i class="bi bi-caret-left-fill" style="color: black; font-size: 25px;"></i>
            		<span class="visually-hidden">Previous</span>
       			 </a>
        		<a class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next" style="height: 75px; margin: auto;">
          		  <i class="bi bi-caret-right-fill" style="color: black; font-size: 25px;"></i>
          		  <span class="visually-hidden">Next</span>
     			</a>
   			 </c:when>
			</c:choose>
        					</div>
    					</div>
						   <pre style="height: 350px; width: 800px; margin-left: 225px; white-space: pre-wrap;"><c:out value="${vo.content }"/></pre>
					</div>
						  
						   <div style="margin-left: auto;">
						   		<p>상품명 : <c:out value="${vo.pname  }"></c:out></p>
								<p>브랜드 : <c:out value="${vo.brand }"></c:out></p>
								<p>등록자 ID : <c:out value="${vo.id }"></c:out></p>
								<p>가격 : <c:out value="${vo.price }"></c:out></p>
								<p>사이즈 : <c:out value="${vo.psize }"></c:out></p>
						  
						 <a href="javascript:paylogin()" class="button primary" >구매하기</a>
						 <a href="buy.jsp?page=${page }" class="button primary">목록보기</a>
                        </div>
						<!-- <button>전송</button> -->
						</form>
                  </div>

               </div>
         </section>

	<!-- Footer -->
	<section id="footer">
		<div class="inner">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon solid fa-map-marker-alt"><span class="label">Location</span></a></li>
				<li><a href="#" class="icon solid fa-phone"><span class="label">Phone</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</section>



	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
	<script src="../assets/js/page.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
const scrollSpy = new bootstrap.ScrollSpy(document.body, {
  target: '#navbar-example'
})
</script>
	
	
	
	
	<script type="text/javascript">
	function paylogin() {
		let yn
		if('${user.id}'==''){
			yn=confirm('구매는 로그인이 필요합니다. 로그인 하시겠습니까?')
			if(yn) location.href='${pageContext.request.contextPath}/login/login.jsp?back=p'  // 로그인 후 url로 redirect 하기 위한 파라미터
		}
		else{
			var pcode = '${vo.pcode}';
			var pname = '${vo.pname}';
			var id = '${vo.id}';
			
			
			let pay = window.open("pay.jsp?pcode="+pcode + "&pname=" + pname + "&id="+id ,"구매요청","width=650, height=700, resizable=no")

		
		
	}
	}
	


	
	
	
	
	</script>

</body>
</html>