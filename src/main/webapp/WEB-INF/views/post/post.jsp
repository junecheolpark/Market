<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>메인페이지</title>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/header_pooter/pepoel.png">
    <!-- css -->
    <link href="/resources/css/header_footer.css" rel="stylesheet">
    
</head>
<style>
    
 
    .carousel-inner{
        border-radius: 12px;
    }
    .slideBox>button {
        border: 0;
        background-color: rgba(255, 255, 255, 0);
    }
    /* 캐러셀 중앙 3칸 */
   

    
    #imgSlider2{
            border-radius: 12px;
    }

    .carousel-item>img {
        margin: auto;
        height: 500px;
        border-radius: 12px;
    }
   
   /* 이미지관련 */
   a{
       text-decoration: none;
   }

   .middle_title{
    color: black;
   }
   

    .imgDiv {
        position: relative;
        background-color: #efefef;
        width: 100%;
        height: 150px;
        border-radius: 12px;
        border: 2px solid rgba(128, 128, 128, 0.233);
        overflow: hidden;
        transition: all 0.2s linear;
    }
    .hicary{
        position:absolute;
        z-index: 2;
        top: -50%;
        right: 0px;
        width: 450px;
        height: 350px;
        
        transition: all 0.09s linear;
       
    }
    .hicary:hover{
        position:absolute;
        z-index: 2;
        top: -50%;
        right: -200%;
        width: 450px;
        height: 350px;
    }
    .hicary2{
    	position:absolute;
        z-index: 2;
        top: 0;
        right: 0;
        width: 100%;
        height: 100%;
        text-align : center;
  		line-height : 146px;
        color: rgb(244, 244, 244);
      	background-color:rgba(128, 128, 128, 0.538);
      	transition: all 0.09s linear;
    }
    .hicary2:hover{
    	opacity: 0;
    }
    .imgDiv:hover {
        transform: scale(1.1);
        border-radius: 16px;
        box-shadow: 5px 5px 6px 0 rgba(58, 47, 38, 0.102);
    }
    

    .imgDiv>.postImg {
        width: 100%;
        height: 100%;
        border-radius: 12px;
    }

    /* 상세 글 관련 */
    .postInformation {

        width: 100%;
        height: 120px;
        overflow: hidden;
    }
   
    .middle_lgText {
        color: black;
        font-weight: 600;
        font-size: large;
    }
    .middle_lgText:hover {
        color: orange;
        font-weight: 600;
        font-size: large;
    }
    

    .middle_smText {
        font-size: small;
        color: gray;
    }
    
    @media (max-width: 992px) {
        #contentsBox {
            width: 677px;
        }
        #imgSlider2{
            width: 677px;
    }
    
     /* 이미지관련 */
   .middle_postBox{
        width: 677px;
   }
   .postBox {
        position: relative;
        text-align: left;
        display: inline-block;
        border-radius: 12px;
        width: calc(33.3% - 5px);
        padding: 20px;
        overflow: hidden;
    }
    }
    /* 전 */
    @media (min-width: 992px) {
        #contentsBox {
            width: 800px;
        }
        #imgSlider2{
            width: 800px;
    }
    
     /* 이미지관련 */
   .middle_postBox{
        width: 800px;
   }
   .postBox {
        position: relative;
        text-align: left;
        display: inline-block;
        border-radius: 12px;
        width: calc(25% - 5px);
        padding: 20px;
        overflow: hidden;
    }
    }
    
     /* 페이징 디자인 */
    .pagination {
        padding: 30px 0;
    }

    .pagination ul {
        margin: 0;
        padding: 0;
        list-style-type: none;
    }

    .pagination a {
        display: inline-block;
        padding: 10px 18px;
        color: #222;
    }

    /* ONE */

    .p1 a {
        width: 40px;
        height: 40px;
        line-height: 40px;
        padding: 0;
        text-align: center;
        transition: all 0.3s linear;
    }
    .p1 .pBtn:hover{
        background-color: #ffad0a2d;
        border-radius: 50%;
        transform: translateY( -6px )
    }

    .p1 a.is-active {
        background-color: rgb(241, 143, 14);
        border-radius: 100%;
        color: #fff;
    }
    
    .middleLine {
        border-bottom: 1px solid rgba(128, 128, 128, 0.233);
        padding-bottom: 10px;
    }
   
</style>

<body>
    <!-- Header -->
    <header>
        <div class="container-fluid p-0" id="Non-reaction">
            <nav>
                <div class="row align-items-center heder_top">
                    <div class="col ps-4 a_reaction">
                        <ul class="nav">
                            <li class="nav-item bookmark">
                                <a class="nav-link" href="#">
                                    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE2IDE1Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggc3Ryb2tlPSIjQ0NDIiBkPSJNLTE2LjUtMTYuNWg0OXY0OWgtNDl6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0U5QjQ1NyIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNOCAwbDIuNSA0LjkzNCA1LjUuNzktNCAzLjg0OC45IDUuNDI4TDggMTIuNDM0IDMuMSAxNSA0IDkuNTcyIDAgNS43MjRsNS41LS43OXoiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
                                        alt="즐겨찾기이미지"> 즐겨찾기
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col d-flex justify-content-end">
                        <ul class="nav">
                        	<c:choose>
								<c:when test="${empty loginSession}">
									<li class="nav-item">
                                		<a class="nav-link" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>로그인/회원가입</a>
                            		</li>
                            		<li class="nav-item">
		                                <a class="nav-link" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>내 상점</a>
		                            </li>
								</c:when>
								<c:otherwise>
									<!-- 로그인했을경우 띄우기 -->
		                            <li class="nav-item">
		                                <a class="nav-link" href="/member/toLogout">로그아웃</a>
		                             </li>
		                            <li class="nav-item dropdown">
		                                
		                                <a class="nav-link dropdown-toggle" href="/mypage/toMyStore?user_id=${loginSession.user_id}" data-bs-toggle="dropdown" aria-expanded="false"><b>${loginSession.user_nickname}</b> 상점</a>
		                                <ul class="dropdown-menu">
		                                    <li><a class="dropdown-item" href="/mypage/toMyStore?user_id=${loginSession.user_id}">내 상품</a></li>
		                                    <li><a class="dropdown-item" href="/mypage/toBasket?user_id=${loginSession.user_id}">찜한 상품</a></li>
		                                    <li><a class="dropdown-item" href="/mypage/toMypageModify">계정 설정</a></li>
		                                </ul>
		                            </li>
								</c:otherwise>
							</c:choose>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- 검색창 및 로고쪽 -->

            <div class="row align-items-center m-0 heder_middleBox">
                <!-- 비반응 -->
                <div>
                <div class="row p-0 heder_middle" id="Non_reaction">
                    <div class="col-3 pe-0">
                        <a href="/post/toPost?curPage=1" class="mb-2 mb-lg-0">
                            <img src="/resources/images/header_pooter/로고.png" height="40px" alt="로고이미지">
                        </a>
                    </div>
                    <div class="col position-relative p-0">

                        <form id="SearchForm" action="/post/toSearch?curPage=1" method="post">
                            <a href="#" class="nav-link p-0 d-inline" id="searchIcon"><img src="/resources/images/header_pooter/searchIcon.png"
                                    class="searchIcon" height="22px"></a>

                            <input type="text" class="searchInput ps-2" id="titleSearch" name="search"
                                placeholder="물품, 동네이름을 입력해보세요.">
                        </form>

                    </div>
                    <div class="col d-flex justify-content-end ps-0">
                        <ul class="nav menu_right">
	                        <c:choose>
									<c:when test="${empty loginSession}">
			                            <li class="nav-item">
		                                	<a class="nav-link" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
		                                    	<img src="/resources/images/header_pooter/cash.png" height="20px">
		                                    	판매하기</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
			                                    <img src="/resources/images/header_pooter/my.png" height="20px">
			                                    내상점</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
			                                    <img src="/resources/images/header_pooter/talk2.png" height="24px">
			                                    싸다톡</a>
			                            </li>
									</c:when>
									<c:otherwise>
										<!-- 로그인했을경우 띄우기 -->
					                    <li class="nav-item">
			                                <a class="nav-link" href="/post/toPostWrite">
			                                    <img src="/resources/images/header_pooter/cash.png" height="20px">
			                                    판매하기</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="/mypage/toMyStore?user_id=${loginSession.user_id}">
			                                    <img src="/resources/images/header_pooter/my.png" height="20px">
			                                    내상점</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="/chatting/toChatting">
			                                    <img src="/resources/images/header_pooter/talk2.png" height="24px">
			                                    싸다톡</a>
			                            </li>
									</c:otherwise>
								</c:choose>
                        </ul>
                    </div>
                </div>
            </div>
                <!-- 네비바 및 select 쪽 -->
                <!-- 비반응 -->
                <div class="row align-items-center heder_bottom" id="Non_reaction">
                    <div class="col p-0 dropdown">
                        <a href="#" class="naviIcon fw-bolder" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/resources/images/header_pooter/navibar.png" height="35px"> 싸다구 카테고리 >
                        </a>
                        <div class="dropdown-menu mt-4 py-4" id="checkBox">
                            <div class="container " id="">
                                <div class="row category_line">
                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=남성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/boy.png" height="26px" width="26px"> 남성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=여성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/girl.png" height="26px" width="26px"> 여성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=신발,가방" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/Shoes.png" height="26px" width="26px"> 신발,가방
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=뷰티" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/beauty.png" height="26px" width="26px"> 뷰티
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=컴퓨터,주변기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/computer.png" height="26px" width="26px"> 컴퓨터, 주변기기
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=카메라" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/camera.png" height="26px" width="26px"> 카메라
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=디지털,가전" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/machine.png" height="26px" width="26px"> 디지털,가전
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=음향기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/headset.png" height="26px" width="26px"> 음향기기
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=생활용품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/toiletries.png" height="26px" width="26px"> 생활용품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=예술/희귀/수집품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/museum.png" height="26px" width="26px"> 예술/희귀/수집품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=식품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/food.png" height="26px" width="26px"> 식품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=가구/인테리어" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/furniture.png" height="26px" width="26px"> 가구/인테리어
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=스포츠,레저" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/sport.png" height="26px" width="26px"> 스포츠,레저
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=게임" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/game.png" height="26px" width="26px"> 게임
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=도서" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/book.png" height="26px" width="26px"> 도서
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=여행,숙박" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/travel.png" height="26px" width="26px"> 여행,숙박
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row col-6 align-items-center justify-content-end AddrBox">
                        <!-- 지역구 -->
                        <div class="col-5 p-0 ">
                            <!--  동 같은경우 disabled 줘서 구 선택하면 그거에 맞게 뜨게-->
                            <select class="form-select district" id="district" aria-label="Default select example"
                                name="roadAddr">
                                <c:if test="${not empty naviMap.post_addr and naviMap.post_addr ne '지역을 선택하세요'}">
                                	<option value="지역을 선택하세요">지역을 선택하세요</option>
                                	<option selected>${naviMap.post_addr}</option>
                                </c:if>
                                <c:if test="${empty naviMap.post_addr or naviMap.post_addr eq '지역을 선택하세요'}">
                                	<option selected>지역을 선택하세요</option>
                                </c:if>
                                <option value="강남구">강남구</option>
                                <option value="강동구">강동구</option>
                                <option value="강서구">강서구</option>
                                <option value="강북구">강북구</option>
                                <option value="관악구">관악구</option>
                                <option value="광진구">광진구</option>
                                <option value="구로구">구로구</option>
                                <option value="금천구">금천구</option>
                                <option value="노원구">노원구</option>
                                <option value="동대문구">동대문구</option>
                                <option value="동작구">동작구</option>
                                <option value="마포구">마포구</option>
                                <option value="서대문구">서대문구</option>
                                <option value="송파구">송파구</option>
                                <option value="영등포구">영등포구</option>
                                <option value="용산구">용산구</option>
                                <option value="은평구">은평구</option>
                                <option value="종로구">종로구</option>
                            </select>
                        </div>


                        <!-- 동 -->
                        <div class="col-5 p-1" id="dong">

                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr"
                                disabled=>
                                <option selected>동네를 선택하세요</option>
                                <option value="1">One</option>
                            </select>

                        </div>
                        <!-- 강남 -->
                        <div class="col-5 p-1 d-none b_dong" id="gangnam">

                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="신사">신사동</option>
                                <option value="논현">논현동</option>
                                <option value="압구정">압구정동</option>
                                <option value="청담">청담동</option>
                                <option value="삼성">삼성동</option>
                                <option value="대치">대치동</option>
                                <option value="역삼">역삼동</option>
                                <option value="도곡">도곡동</option>
                                <option value="개포">개포동</option>
                                <option value="세곡">세곡동</option>
                                <option value="일원">일원동</option>
                                <option value="수서">수서동</option>
                            </select>

                        </div>
                        <!-- 강동 -->
                        <div class="col-5 p-1 d-none b_dong" id="gangdong">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="강일">강일동</option>
                                <option value="상일">상일동</option>
                                <option value="명일">명일동</option>
                                <option value="고덕">고덕동</option>
                                <option value="암사">암사동</option>
                                <option value="천호">천호동</option>
                                <option value="성내">성내동</option>
                                <option value="길">길동</option>
                                <option value="둔촌">둔촌동</option>
                            </select>
                        </div>
                        <!-- 강서 -->
                        <div class="col-5 p-1 d-none b_dong" id="gangseo">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="염창">염창동</option>
                                <option value="등촌">등촌동</option>
                                <option value="화곡">화곡동</option>
                                <option value="우장산">우장산동</option>
                                <option value="가양">가양동</option>
                                <option value="발산">발산동</option>
                                <option value="공항">공항동</option>
                                <option value="방화">방화동</option>
                            </select>
                        </div>
                        <!-- 강북 -->
                        <div class="col-5 p-1 d-none b_dong" id="gangbuk">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="삼양">삼양동</option>
                                <option value="미아">미아동</option>
                                <option value="송중">송중동</option>
                                <option value="송천">송천동</option>
                                <option value="삼각산">삼각산동</option>
                                <option value="번">번동</option>
                                <option value="수유">수유동</option>
                                <option value="우이">우이동</option>
                                <option value="인수">인수동</option>
                            </select>
                        </div>
                        <!-- 관악 -->
                        <div class="col-5 p-1 d-none b_dong" id="Gwanak">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="보라매">보라매동</option>
                                <option value="은천">은천동</option>
                                <option value="성현">성현동</option>
                                <option value="중앙">중앙동</option>
                                <option value="청림">청림동</option>
                                <option value="낙성대">낙성대동</option>
                                <option value="신림">신림동</option>
                                <option value="신사">신사동</option>
                                <option value="조원">조원동</option>
                            </select>
                        </div>
                        <!-- 광진 -->
                        <div class="col-5 p-1 d-none b_dong" id="Gwangjin">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="중곡">중곡동</option>
                                <option value="능">능동</option>
                                <option value="구의">구의동</option>
                                <option value="광장">광장동</option>
                                <option value="자양">자양동</option>
                                <option value="화양">화양동</option>
                                <option value="군자">군자동</option>
                            </select>
                        </div>
                        <!-- 구로 -->
                        <div class="col-5 p-1 d-none b_dong" id="Guro">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="신도림">신도림동</option>
                                <option value="구로">구로동</option>
                                <option value="고척">고척동</option>
                                <option value="개봉">개봉동</option>
                                <option value="오류">오류동</option>
                                <option value="가리봉">가리봉동</option>
                                <option value="수궁">수궁동</option>
                            </select>
                        </div>
                        <!-- 금천 -->
                        <div class="col-5 p-1 d-none b_dong" id="Geumcheon">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="가산">가산동</option>
                                <option value="독산">독산동</option>
                                <option value="시흥">시흥동</option>
                            </select>
                        </div>
                        <!-- 노원 -->
                        <div class="col-5 p-1 d-none b_dong" id="Nowon">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="월계">월계동</option>
                                <option value="공릉">공릉동</option>
                                <option value="하계">하계동</option>
                                <option value="중계">중계동</option>
                                <option value="상계">상계동</option>
                            </select>
                        </div>
                          <!-- 동대문구 -->
                        <div class="col-5 p-1 d-none b_dong" id="Dongdaemun">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="용신">용신동</option>
                                <option value="제기">제기동</option>
                                <option value="전농">전농동</option>
                                <option value="장안">장안동</option>
                                <option value="회기">회기동</option>
                            </select>
                        </div>
                        <!-- 동작 -->
                        <div class="col-5 p-1 d-none b_dong" id="Dongjak">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="노량진">노량진동</option>
                                <option value="상도">상도동</option>
                                <option value="흑석">흑석동</option>
                                <option value="사당">사당동</option>
                                <option value="대방">대방동</option>
                                <option value="신대방">신대방동</option>
                            </select>
                        </div>
                        <!-- 마포 -->
                        <div class="col-5 p-1 d-none b_dong" id="Mapo">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="공덕">공덕동</option>
                                <option value="아현">아현동</option>
                                <option value="용강">용강동</option>
                                <option value="대흥">대흥동</option>
                                <option value="신수">신수동</option>
                                <option value="서강">서강동</option>
                                <option value="서교">서교동</option>
                                <option value="합정">합정동</option>
                                <option value="망원">망원동</option>
                                <option value="성산">성산동</option>
                                <option value="상암">상암동</option>
                            </select>
                        </div>
                        <!-- 서대문 -->
                        <div class="col-5 p-1 d-none b_dong" id="Seodaemun">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="충현">충현동</option>
                                <option value="천연">천연동</option>
                                <option value="신촌">신촌동</option>
                                <option value="연희">연희동</option>
                                <option value="남가좌">남가좌동</option>
                                <option value="홍제">홍제동</option>
                                <option value="북가좌">북가좌동</option>
                            </select>
                        </div>
                        <!-- 송파 -->
                        <div class="col-5 p-1 d-none b_dong" id="Songpa">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="거여">거여동</option>
                                <option value="마천">마천동</option>
                                <option value="오금">오금동</option>
                                <option value="송파">송파동</option>
                                <option value="잠실">잠실동</option>
                                <option value="석촌">석촌동</option>
                                <option value="방이">방이동</option>
                            </select>
                        </div>
                        <!-- 영등포 -->
                        <div class="col-5 p-1 d-none b_dong" id="Yeongdeungpo">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="영등포">영등포동</option>
                                <option value="여의">여의동</option>
                                <option value="당산">당산동</option>
                                <option value="도림">도림동</option>
                                <option value="문래">문래동</option>
                                <option value="양평">양평동</option>
                                <option value="신길">신길동</option>
                                <option value="대림">대림동</option>
                            </select>
                        </div>
                        <!-- 용산 -->
                        <div class="col-5 p-1 d-none b_dong" id="Yongsan">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="용산">용산동</option>
                                <option value="효창">효창동</option>
                                <option value="용문">용문동</option>
                                <option value="이촌">이촌동</option>
                                <option value="이태원">이태원동</option>
                                <option value="한남">한남동</option>
                                <option value="보광">보광동</option>
                                <option value="서빙고">서빙고동</option>
                            </select>
                        </div>
                        <!-- 은평 -->
                        <div class="col-5 p-1 d-none b_dong" id="Eunpyeong">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="녹번">녹번동</option>
                                <option value="불광">불광동</option>
                                <option value="갈현">갈현동</option>
                                <option value="구산">구산동</option>
                                <option value="대조">대조동</option>
                                <option value="응앙">응앙동</option>
                                <option value="역촌">역촌동</option>
                                <option value="수색">수색동</option>
                            </select>
                        </div>
                        <!-- 종로 -->
                        <div class="col-5 p-1 d-none b_dong" id="Jongno">
                            <select class="form-select a_dong" aria-label="Default select example" name="extraAddr">
                                <option selected>동네를 선택하세요</option>
                                <option value="사직">사직동</option>
                                <option value="부암">부암동</option>
                                <option value="평창">평창동</option>
                                <option value="교남">교남동</option>
                                <option value="가회">가회동</option>
                                <option value="이화">이화동</option>
                                <option value="혜화">혜화동</option>
                                <option value="창신">창신동</option>
                            </select>
                        </div>
                        <!-- 값 보내줄 input -->
                        <form id="districeForm" class="d-none" action="/post/toSearch?curPage=1" method="post">
                            <input type="text" id="roadAddrInput" name="post_addr" >
                            <input type="text" id="extraAddrInput" name="search">
                            <input type="text" id="testSearch" value="${naviMap.post_addr}">
                        </form>

                    </div>
                </div>

                <!-- 반응 -->
                <div class="row align-items-center heder_bottom" id="reaction">
                    <div class="col p-0 dropdown">
                        <a href="#" class="naviIcon fw-bolder" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/resources/images/header_pooter/navibar.png" height="35px">
                        </a>
                        <a href="/post/toPost?curPage=1">
                            <img class="a_reaction" src="/resources/images/header_pooter/로고.png" height="40px" alt="로고이미지">
                        </a>
                        <div class="dropdown-menu mt-4 py-4" id="checkBox">
                            <div class="container" id="">
                                			
                                <div class="row category_line">
                                    
                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                        	<c:choose>
												<c:when test="${empty loginSession}">
					                                <li class="nav-item mb-2 font_a">
		                                                <a class="nav-link p-0" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
		                                                    <img src="/resources/images/header_pooter/cash.png" height="20px"> 판매하기
		                                                </a>
		                                            </li>
		                                            <li class="nav-item mb-2 font_a">
		                                                <a class="nav-link p-0" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
		                                                    <img src="/resources/images/header_pooter/talk2.png" height="24px"> 싸다톡
		                                                </a>
		                                            </li>
												</c:when>
												<c:otherwise>
													<!-- 로그인했을경우 띄우기 -->
													<li class="nav-item mb-2 font_a">
		                                                <a href="/post/toPostWrite" class="nav-link p-0">
		                                                    <img src="/resources/images/header_pooter/cash.png" height="20px"> 판매하기
		                                                </a>
		                                            </li>
		                                            <li class="nav-item mb-2 font_a">
		                                                <a href="/chatting/toChatting" class="nav-link p-0">
		                                                    <img src="/resources/images/header_pooter/talk2.png" height="24px"> 싸다톡
		                                                </a>
		                                            </li>
												</c:otherwise>
											</c:choose>
                                            <li class="nav-item mb-2">
                                                <a href="#" class="nav-link p-0">
                                                 <!-- 빈값 -->
                                                </a>
                                            </li>
                                            

                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=남성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/boy.png" height="26px" width="26px"> 남성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=여성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/girl.png" height="26px" width="26px"> 여성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=신발,가방" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/Shoes.png" height="26px" width="26px"> 신발,가방
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=뷰티" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/beauty.png" height="26px" width="26px"> 뷰티
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=컴퓨터,주변기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/computer.png" height="26px" width="26px"> 컴퓨터, 주변기기
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=카메라" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/camera.png" height="26px" width="26px"> 카메라
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=디지털,가전" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/machine.png" height="26px" width="26px"> 디지털,가전
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=음향기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/headset.png" height="26px" width="26px"> 음향기기
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                
                                    <div class="col ps-3">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2 font_a">
                                            	<c:choose>
													<c:when test="${empty loginSession}">
						                                <a class="nav-link p-0" id="linkLogin" href='javascript:void(0)' onclick='preventClick(event)'>
		                                                    <img src="/resources/images/header_pooter/my.png" height="20px"> 내상점
		                                                </a>
													</c:when>
													<c:otherwise>
														<!-- 로그인했을경우 띄우기 -->
														<a href="/mypage/toMyStore?user_id=${loginSession.user_id}" class="nav-link p-0">
		                                                    <img src="/resources/images/header_pooter/my.png" height="20px"> 내상점
		                                                </a>
													</c:otherwise>
												</c:choose>
                                                
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="#" class="nav-link p-0">
                                                 <!-- 빈값 -->
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="#" class="nav-link p-0">
                                                 <!-- 빈값 -->
                                                </a>
                                            </li>

                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=생활용품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/toiletries.png" height="26px" width="26px"> 생활용품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=예술/희귀/수집품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/museum.png" height="26px" width="26px"> 예술/희귀/수집품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=식품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/food.png" height="26px" width="26px"> 식품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=가구/인테리어" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/furniture.png" height="26px" width="26px"> 가구/인테리어
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=스포츠,레저" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/sport.png" height="26px" width="26px"> 스포츠,레저
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=게임" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/game.png" height="26px" width="26px"> 게임
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=도서" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/book.png" height="26px" width="26px"> 도서
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/toSearch?curPage=1&search=여행,숙박" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/travel.png" height="26px" width="26px"> 여행,숙박
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                    <div class="col-5 position-relative p-0" id="searchBox">
                        <form id="SearchForm2" class="m-0" action="/post/toSearch?curPage=1" method="post">
                            <a href="#" class="nav-link p-0 d-inline" id="searchIcon2"><img src="/resources/images/header_pooter/searchIcon.png" class="searchIcon"
                                    height="22px"></a>
                
                            <input type="text" class="searchInput ps-2" id="titleSearch2" name="search" placeholder="물품, 동네이름을 입력해보세요.">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Contents -->
	<!-- 캐러셀-->
    <div class="container my-3" id="contentsBox">
		
        <div id="imgSlider2" class="carousel slide my-3" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img src="/resources/images/post/캐러셀1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item active">
                    <img src="/resources/images/post/캐러셀2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="/resources/images/post/캐러셀3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#imgSlider2" data-bs-slide="prev">
                <img src="/resources/images/post/left.png" height="30px">
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#imgSlider2" data-bs-slide="next">
                <img src="/resources/images/post/right.png" height="30px">
            </button>
        </div>
        <div class="py-2 middle_postBox">
           
            <c:if test="${list.size() == 0}">
            	<div class="d-flex justify-content-center">
            		<b><span style="color: orange">${naviMap.search}${naviMap.post_addr} </span>글 정보가 없습니다.</b>
            	</div>
            </c:if>
            <c:if test="${list.size() > 0}">
            	<c:if test="${empty naviMap.search and empty naviMap.post_addr}">
	            	<div class="ms-4 fs-5 middleLine">
	            		<b><span style="color: orange">오늘</span>의 상품</b>
	            	</div>
            	</c:if>
            	<c:if test="${not empty naviMap.search}">
	            	<div class="ms-4 fs-5 middleLine">
	            		<b>
	            		<span style="color: orange">${naviMap.search}</span> 
	            		검색 결과
	            		</b>
	            	</div>
            	</c:if>
            	<c:if test="${ not empty naviMap.post_addr}">
	            	<div class="ms-4 fs-5 middleLine">
	            		<b>
	            		<span style="color: orange">${naviMap.post_addr}</span>
	            		검색 결과
	            		</b>
	            	</div>
            	</c:if>
            	
	             <c:forEach items="${list}" var="list">
	             	<c:if test="${list.post_state eq '판매중'}">
			            <article class="postBox">
			                <a href="/post/toPostDetail?post_seq=${list.post_seq}">
			                    <div class="imgDiv">
			                        <img class="hicary" src="/resources/images/post/반짝.png">
				                    	<c:choose>
					                    <c:when test="${list.post_sys_name ne null}">
					                    	<img class="postImg" src="/imgfiles/${list.post_sys_name}">
					                    </c:when>
					                     <c:otherwise>
					                    	<img class="postImg" src="/resources/images/post/NoImg.webp">
					                    </c:otherwise>
					                    </c:choose>
			                        
			                    </div>
			                    <div class="postInformation">
			                        <div class="mt-2 middle_title">${list.post_title}</div>
			                        <div class="middle_lgText mt-1">${list.price_selling}원</div>
			                        <div class="middle_smText mt-1">${list.post_addr}</div>
			                        <div class="middle_smText mt-1">관심${list.post_interest_cnt}·채팅${list.post_chatting_cnt}
			                        ·조회${list.post_inquiry_cnt}</div>
			                    </div>
			                </a>
			            </article>
		            </c:if>
		            <c:if test="${list.post_state eq '예약중'}">
			            <article class="postBox">
			                <a href="/post/toPostDetail?post_seq=${list.post_seq}">
			                    <div class="imgDiv">
			                        <div class="hicary2">
			                        <img src="/resources/images/post/star.png" height="20px">예약중<img src="/resources/images/post/star.png" height="20px">
			                        </div>
				                    	<c:choose>
					                    <c:when test="${list.post_sys_name ne null}">
					                    	<img class="postImg" src="/imgfiles/${list.post_sys_name}">
					                    </c:when>
					                     <c:otherwise>
					                    	<img class="postImg" src="/resources/images/post/NoImg.webp">
					                    </c:otherwise>
					                    </c:choose>
			                        
			                    </div>
			                    <div class="postInformation">
			                        <div class="mt-2 middle_title">${list.post_title}</div>
			                        <div class="middle_lgText mt-1">${list.price_selling}원</div>
			                        <div class="middle_smText mt-1">${list.post_addr}</div>
			                        <div class="middle_smText mt-1">관심${list.post_interest_cnt}·채팅${list.post_chatting_cnt}
			                        ·조회${list.post_inquiry_cnt}</div>
			                    </div>
			                </a>
			            </article>
		            </c:if>
		            <c:if test="${list.post_state eq '거래완료'}">
			            <article class="postBox">
			                <a href="/post/toPostDetail?post_seq=${list.post_seq}">
			                    <div class="imgDiv">
			                        <div class="hicary2" >
			                        <img src="/resources/images/post/star.png" height="20px">거래완료<img src="/resources/images/post/star.png" height="20px">
			                        </div>
				                    	<c:choose>
					                    <c:when test="${list.post_sys_name ne null}">
					                    	<img class="postImg" src="/imgfiles/${list.post_sys_name}">
					                    </c:when>
					                     <c:otherwise>
					                    	<img class="postImg" src="/resources/images/post/NoImg.webp">
					                    </c:otherwise>
					                    </c:choose>
			                        
			                    </div>
			                    <div class="postInformation">
			                        <div class="mt-2 middle_title">${list.post_title}</div>
			                        <div class="middle_lgText mt-1">${list.price_selling}원</div>
			                        <div class="middle_smText mt-1">${list.post_addr}</div>
			                        <div class="middle_smText mt-1">관심${list.post_interest_cnt}·채팅${list.post_chatting_cnt}
			                        ·조회${list.post_inquiry_cnt}</div>
			                    </div>
			                </a>
			            </article>
		            </c:if>
				 </c:forEach>
			 </c:if>
        </div>
      
		<nav class="pagination p1 justify-content-center">
			<ul >
				<c:if test="${naviMap.needPrev eq true }">
					<a href="/post/toSearch?curPage=${naviMap.startNavi-1}&post_addr=${naviMap.post_addr}&search=${naviMap.search}">
						<
					</a>
				</c:if>
				<c:forEach var="pageNum" begin="${naviMap.startNavi}" end="${naviMap.endNavi}" step="1">
					<c:if test="${naviMap.curPage eq pageNum}">
						<a class="is-active" href="/post/toSearch?curPage=${pageNum}&post_addr=${naviMap.post_addr}&search=${naviMap.search}">
							${pageNum}
						</a>
					</c:if>
					<c:if test="${naviMap.curPage ne pageNum}">
						<a class="pBtn" href="/post/toSearch?curPage=${pageNum}&post_addr=${naviMap.post_addr}&search=${naviMap.search}">
							${pageNum}
						</a>
					</c:if>	
				</c:forEach>
				<c:if test="${naviMap.needNext eq true }">
					<a href="/post/toSearch?curPage=${naviMap.endNavi+1}&post_addr=${naviMap.post_addr}&search=${naviMap.search}">
						>
					</a>
				</c:if>
			</ul>
		</nav>
  
     
    </div>

    <!-- footer --> 
       <!-- Modal -->
       <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content pt-0" id="notificationModal">
                <div class="modal-header position-sticky">
                    <div class="col-1">
                        <button type="button" id="closeBtn" data-bs-dismiss="modal" aria-label="Close">
                            <img src="/resources/images/post/left.png" height="25px">
                        </button>  
                    </div>
                    <div class="col n_title">
                        알림 창
                    </div>
                    
                </div>
                <div class="modal-body container n_content">
                	<c:if test="${notification.size() == 0 or empty notification}">
                		<div class="row p-1 d-flex justify-content-center fw-bold">
                			새로운 알림이 없습니다.
                		</div>
                	</c:if>
                	
                	
                	<c:if test="${notification.size() > 0}">
                		<c:forEach items="${notification}" var="notifi">
                			<c:if test="${notifi.notification_type eq '채팅'}">
			                    <div class="row p-1 ">
			                        <div class="col-2 text-center n_logo">
			                            <img src="/resources/images/header_pooter/채팅.png" height="40px">
			                        </div>
			                        <div class="col p-0">
			                            <p>${notifi.from_nickname}님께서 "${notifi.post_title}.."글에 채팅메세지를 보내셨습니다.</p>
			                            <p class="n_date">${notifi.notification_time}</p>
			                        </div>
			                        <div class="col-1">
			                            <button type="button" class="btn-close" id="notifi_deleteBtn" value="${notifi.notification_seq}"></button>
			                        </div>
			                    </div>
		                    </c:if>
		                
		                	<c:if test="${notifi.notification_type eq '가격'}">
			                    <div class="row p-1 ">
			                        <div class="col-2 text-center n_logo">
			                            <img src="/resources/images/header_pooter/가격.png" height="40px">
			                        </div>
			                        <div class="col p-0">
			                            <p>${notifi.from_nickname}님께서 "${notifi.post_title}.."글에 ${notifi.price_restriction}원 가격제안했습니다</p>
			                            <p class="n_date">${notifi.notification_time}</p>
			                        </div>
			                        <div class="col-1">
			                            <button type="button" class="btn-close" id="notifi_deleteBtn" value="${notifi.notification_seq}"></button>
			                        </div>
			                    </div>
		                    </c:if>
		                	<c:if test="${notifi.notification_type eq '후기'}">
			                    <div class="row p-1 ">
			                        <div class="col-2 text-center n_logo">
			                            <img src="/resources/images/header_pooter/후기.png" height="40px">
			                        </div>
			                        <div class="col p-0">
			                            <p>${notifi.from_nickname}님께서 "${notifi.post_title}.."글에 후기를 남기셨습니다</p>
			                            <p class="n_date">${notifi.notification_time}</p>
			                        </div>
			                        <div class="col-1">
			                            <button type="button" class="btn-close" id="notifi_deleteBtn" value="${notifi.notification_seq}"></button>
			                        </div>
			                    </div>
		                    </c:if>
	                    </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <!-- 로고 클릭하면 모달 -->
    <div class="logo3" data-bs-toggle="modal" data-bs-target="#staticBackdrop" >
        <a class="nav-link" href="#">
            <img src="/resources/images/header_pooter/알림.png" height="56px" width="56px">
         </a>
    </div>
     <!-- 고객게시판 -->
    <div class="logo2">
        <a class="nav-link" href="/client/toClient_post?curPage=1">
            <img src="/resources/images/header_pooter/고객게시판.png" height="56px" width="56px">
         </a>
    </div>
    <%-- 관리자 아이디와 같다면 --%>
	<c:if test="${loginSession.user_id eq 'asd123@naver.com'}">
	    <div class="logo4">
	        <a class="nav-link" href="/member/toManager?curPage=1">
	            <img src="/resources/images/header_pooter/관리자.png" height="56px" width="56px">
	         </a>
	    </div>
    </c:if>
    
    <footer class="py-4 text-light">
        <div class="container" id="footerBox">
            <div class="row pooterLine pb-3">
                <div class="col a_reaction">
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2 "><a href="/post/toPost?curPage=1" class="nav-link p-0">
                                <img src="/resources/images/header_pooter/로고white.png" height="46px" alt="로고">
                            </a></li>

                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTrust" class="nav-link p-0" target="_blank">믿을수 있는 중고거래</a></li>
                        <li class="nav-item mb-2"><a href="/client/toClient_post?curPage=1"" class="nav-link p-0" >자주 묻는 질문</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toCheapPay" class="nav-link p-0" target="_blank">싸다구페이</a></li>
                        <li class="nav-item mb-2"><a href="https://www.mangoplate.com/top_lists/2960_seoul2022" class="nav-link p-0" target="_blank">동네가게</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTeam" class="nav-link p-0" target="_blank">팀 소개</a></li>
                        <li class="nav-item mb-2"><a href="https://www.jobkorea.co.kr/Search/?stext=%EC%9B%B9%EA%B0%9C%EB%B0%9C" class="nav-link p-0" target="_blank">채용</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTerms" class="nav-link p-0" target="_blank">이용약관</a></li>
                        <li class="nav-item mb-2"><a href="/footer/toPrivacy" class="nav-link p-0" target="_blank">개인정보처리방침</a></li>
                        <li class="nav-item mb-2"><a href="/footer/toLocation" class="nav-link p-0" target="_blank">위치기반서비스 이용약관</a></li>
                        <li class="nav-item mb-2"><a href="/footer/toPlanned" class="nav-link p-0" target="_blank">이용자보호 비전과 계획</a></li>
                    </ul>
                </div>
            </div>

            <div class="row pooterText">
                <div class="mt-4">
                    고객문의 <a href="#" class="nav-link p-0 d-inline">cheap@cheap.com </a>
                    제휴문의 <a href="#" class="nav-link p-0 d-inline">cheap@cheap.com </a>
                </div>
                <div class="">
                    광고 <a href="#" class="nav-link p-0 d-inline">prr@cheap.com</a>
                    PR문의<a href="#" class="nav-link p-0 d-inline">cheap@cheap.com</a> 
                    IR문의 <a href="#" class="nav-link p-0 d-inline">cheap@cheap.com</a>
                </div>
                <div class="mt-3">
                    서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F (당산서비스)
                    사업자 등록번호 : 123-45-00000 직업정보제공사업 신고번호 : J1234567891234
                </div>
                <div class="my-3">
                    <a href="https://www.facebook.com/" class="nav-link p-0 d-inline" target="_blank"><img class="me-2"
                            src="/resources/images/header_pooter/facebook.png" width="23px"></a>
                    <a href="https://www.instagram.com/" class="nav-link p-0 d-inline" target="_blank"><img class="me-2"
                            src="/resources/images/header_pooter/instar.png" width="23px"></a>
                    <a href="https://www.youtube.com/" class="nav-link p-0 d-inline" target="_blank"> <img class="me-3"
                            src="/resources/images/header_pooter/tube.png" width="23px"></a>
                    <a href="https://ko.wikipedia.org/wiki/%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD"
                        class="nav-link p-0 d-inline" target="_blank"><img
                            src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-global-2f53678b428ec623cefd07a90dd7777f3e55fc0433918f645d7d75ace6ff1fc3.png"
                            width="24px"> 한국</a>

                </div>
                <div class="">
                    ©cheap Market Inc.
                </div>

            </div>
        </div>
    </footer>

    
    <script>

    </script>

</body>
<!-- js -->
<script src="/resources/js/header_footer.js"></script>
</html>
