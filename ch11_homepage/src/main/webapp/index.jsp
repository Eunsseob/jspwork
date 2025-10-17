<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDao" class="member.MemberDao" />
<%
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/homepage.js"></script>
    <title>HOMEPAGE</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <style>
      *{
        margin: 0;
      }
      .logo{
        height: 100px;
        padding-right : 350px;
      }
      div{
        text-align: left;
      }
      h2{
        text-align: center;
      }
      .icon{
        height: 50px;
      }
      .imgbtn{
        border: 20px;
      }
      .nav-tabs{
        height: 200px;
        right: auto;
        color: black;
      }
      .nav {
          --bs-nav-link-padding-x: 1rem;
          --bs-nav-link-padding-y: 0.5rem;
          --bs-nav-link-font-weight: ;
          --bs-nav-link-color: var(--bs-link-color);
          --bs-nav-link-hover-color: var(--bs-link-hover-color);
          --bs-nav-link-disabled-color: var(--bs-secondary-color);
          display: flex
      ;
          flex-wrap: nowrap;
          padding-left: 0;
          margin-bottom: 0;
          list-style: none;
          flex-direction: row;
      }

      /* 헤더 */
      header{height: 100px;}
      header>div{float:left;}
      header>div>img{width: 80px; margin-top: 25px;}
    
      header>nav {float:right; margin-top: 25px;}
      .nav>li{float:left; width: 200px; text-align: center;}
      .nav>li:hover{background-color: rgb(4, 4, 122); color: white;}
      .nav-tabs{
        text-decoration: none;
        color: black;
        font-size: 18px;
        font-weight: bold;
        height: 100px;
        margin: 0 auto;
      }

      .icon{
        text-align: center;
        display: flex;
        gap: 200px;
        justify-content: center;
      }

      .imgbtn{
        font-size: 25px;
        color: white;
        text-align: center;
        justify-content: center;
      }

      a{
        color: inherit;
      }
      a:hover{
        color:white;
      }
      
      /* 헤더 */
      header>nav{ float: right; margin-top: 20px; padding: 10px;}


      /* 이미지 */
	#imgslide {clear: both; width: 1000px; height: 362px; position: relative; margin-bottom: 15px; overflow: hidden;}
	#imgslide>img { position: absolute;}
	
    </style>
    
</head>
<body>
    <header>
      <ul class="nav nav-tabs">
        <li class="logo">
        <!-- // 로고 -->
          <img src="resources/img/logo.png" alt="로고">
        </li>
        
        <!-- // 여행가이드쪽 배치 -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <!-- // 여행가이드 소개 -->
            <% if(id==null) { %>
            <a href="member/login.jsp">로그인</a>
			<% } else { %>
			<a href="member/logout.jsp">로그아웃하기</a>
			<% } %>
		<div id="Login">
			<% if(id != null) { %>
			<p>[ <%=id %>님 로그인 상태]</p>
			<% } %>
		</div>
            <!-- // 국내 여행지 -->
       
       	<a href="vote/voteList.jsp">&emsp; 투표 프로그램</a>
       	
       	<a href="board/list.jsp">&emsp; 게시판</a>
       
            </nav>
        </ul>
    
    </header>

    <br><br><br>
      <article id="content">
        <section id="imgslide">
                <img src="resources/img/slide1.jpg" alt="여행사진1">
                <img src="resources/img/slide2.jpg" alt="여행사진2">
                <img src="resources/img/slide3.jpg" alt="여행사진3">
        </section>
<br><br><br>
          <ul class="nav nav-tabs2">
  
          <table class="table table-striped table-hover">
            <tr>
              <th colspan="2"><h2>공지사항</h2></th>
            </tr>
            <tr>
              <th>제목</th>
              <th>날짜</th>
            </tr>
            <tr>
              <td><a href="#">다도해 풍광을 한눈에...해남 땅끝 해안누리길 여행하기</a></td>
              <td>2025-10-20</td>
            </tr>
            <tr>
              <td><a href="#">설악산 단풍 절정, 기차 여행 상품이 출시되었..</a></td>
              <td>2025-09-15</td>
            </tr>
            <tr>
              <td><a href="#">국토순례 기차여행에 참가하는 학교, 청소년단체 등...</a></td>
              <td>2025-08-10</td>
            </tr>
            <tr>
              <td><a href="#">신나는 바다 서핑, 추천하는 국내 여행지 & 관광열차</a></td>
              <td>2025-07-20</td>
            </tr>
            <tr>
              <td><a href="#">봄 꽃 만발 꽃축제, 고니골 빛축제와 꽃축제로..</a></td>
              <td>2025-03-25</td>
            </tr>
          </table>
        </section>
      
        <section class="child">
          <h2>정보나눔</h2>
          <div class="partner_info">
            <img src="resources/img/info.png" alt="여행정보">
          </div>
          </ul>
        </section>
        </div>
    <br><br><br>
        <ul class="set1">
        <section class="icon">
          <div class="imgbtn">
            <img src="resources/img/새소식.png" alt="no"><br>
            <button>새 소 식</button>
          </div>
          <div class="imgbtn">
            <img src="resources/img/여행음악.png" alt="no"><br>
            <button>여행음악</button>
          </div>
          <div class="imgbtn">
            <img src="resources/img/여행매뉴얼.png" alt="no"><br>
            <button>여행매뉴얼</button>
          </div>
        </section>
        </ul>
        
      </article>


      <footer>
        <br><br><br><br><br><br><br><br><br>
        <span>더조은 여행사</span><br>
        <span>대표자 : 김대현|주소 : 서울 강남구 강남대로 78길 8 한국빌딩 4층,8층</span><br>
        <span>사업자등록번호 864-85-00997|통신판매업신고번호 2018-서울서초-2615 | 마케팅제휴 : partner@tjoeun.co.kr</span><br>
        <p>ⓒ THEJOEUN ACADEMY Corp.</p>
    </footer>
</body>
</html>