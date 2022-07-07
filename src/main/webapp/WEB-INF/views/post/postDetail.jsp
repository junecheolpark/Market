<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link href="/resources/css/header_footer.css" rel="stylesheet" type="text/css">
</head>
<style>
    /* ===contetnt 영역==== */


    .middle {
    height: 100%;
    }

    .slideBox>button {
        border: 0;
        background-color: rgba(255, 255, 255, 0);
    }

    .slideBtn_prev {
        position: absolute;
        left: -10%;

    }

    .slideBtn_next {
        position: absolute;

    }

    .car_img {
        margin: auto;
        width: 677px;
        height: 500px;
        border-radius: 12px;
    }

    .carousel-indicators {
        margin: auto;
    }

    .carousel-item>img {
        margin: auto;
        width: 677px;
        height: 500px;
        border-radius: 12px;
    }

    /* 여기까지 캐러셀 */

    .alertBox {
        position: absolute;
        top: -45px;
        background-color: rgb(42, 42, 42);
        padding-top: 8px;
        padding-bottom: 8px;
        box-shadow: 0px 5px 8px gray;
        display: none;
    }

    .art_wight {
        color: white;
        font-size: small;
    }

    .art_orange>a {
        font-size: small;
        color: #f47d39;
        font-weight: 510;
        text-decoration: none;
    }

    .art_orange>a:hover {
        color: rgb(237, 231, 147);
        font-weight: 550;
        text-decoration: none;
    }

    /* 여기까지 경고창 */


    @media (max-width: 840px) {
        .car_before {
            display: none;
        }

        .car_after {
            display: block;
        }

        .alertBox {
            width: 100%;
        }

    }

    @media (min-width: 840px) {
        .car_after {
            display: none;
        }

        #contentsBox {
            width: 677px;
        }

        .alertBox {
            width: 677px;
        }
    }



    .middle_profile {
        border-bottom: 1px solid rgba(128, 128, 128, 0.233);
    }

    .post_category {
        width: 105px;
        height: 35px;
        font-size: small;
        font-weight: 600;
        z-index: -2;
    }

    .middle_lgText {
        font-weight: 600;
        font-size: large;
    }

    .middle_smText {
        font-size: small;
        color: gray;
    }

    .middle_bottom {
        border-bottom: 1px solid rgba(128, 128, 128, 0.233);
        border-top: 1px solid rgba(128, 128, 128, 0.233);

    }

    .middle_heartBtn {
        border-right: 1px solid rgba(128, 128, 128, 0.233);
    }

    .middle_heartBtn button {
        border: 0;
        background-color: #36393b00;
        transition: all 0.2s linear;
    }

    .middle_heartBtn button:hover {
        transform: scale(1.4);
        transform: scale(0.8);
    }

    .middle_orangeText>a {
        font-size: small;
        color: rgb(255, 128, 0);
        text-decoration: none;
    }


    .middle_orangeText>a:hover {
        font-weight: 600;
    }

    .middle_moreView>a:hover {
        font-weight: 600;
    }

    .middle_chattingBtn {
        background-color: rgb(255, 177, 88);
        border: 2px solid rgb(165, 133, 69);
        border-radius: 6px;
        height: 32px;
        font-size: small;
        box-shadow: -1px 2px 2px rgba(158, 136, 93, 0.712);
    }
    .middle_chattingBtn:hover{
        color: white;
    }
    .middle_chattingBtn:active{
        margin-right: 3px;
        /* margin-top: 3px; */
        box-shadow: none;
    }

    /* 이벤트 */
    particule {
        position: fixed;
        top: 0;
        left: -15%;
        border-radius: 50%;
        width: 10px;
        height: 10px;
        box-shadow: 1px 1px 4px #eb6383;
        z-index: 1;
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
                            <li class="nav-item">
                                <a class="nav-link" href="/member/toLogin">로그인/회원가입</a>
                            </li>

                            <!-- 로그인했을경우 띄우기 -->
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="/member/toLogout">로그아웃</a>
                             </li>
                            <li class="nav-item dropdown">
                                
                                <a class="nav-link dropdown-toggle" href="/mypage/toMyStore" data-bs-toggle="dropdown" aria-expanded="false">내 상점</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="/mypage/toMyStore">내 상품</a></li>
                                    <li><a class="dropdown-item" href="/mypage/toBasket">찜한 상품</a></li>
                                    <li><a class="dropdown-item" href="/mypage/toMypageModify">계정 설정</a></li>
                                </ul>
                            </li> -->

                            <li class="nav-item">
                                <a class="nav-link" href="/mypage/toMyStore">내 상점</a>
                            </li>

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
                            <a href="/post/toPost" class="mb-2 mb-lg-0">
                                <img src="/resources/images/header_pooter/로고.png" height="40px" alt="로고이미지">
                            </a>
                        </div>
                        <div class="col position-relative p-0">

                            <form id="SearchForm" action="/post/toSearch" method="post">
                                <a href="#" class="nav-link p-0 d-inline" id="searchIcon"><img
                                        src="/resources/images/header_pooter/searchIcon.png" class="searchIcon"
                                        height="22px"></a>

                                <input type="text" class="searchInput ps-2" id="titleSearch" name="post_title"
                                    placeholder="물품, 동네이름을 입력해보세요.">
                            </form>

                        </div>
                        <div class="col d-flex justify-content-end ps-0">
                            <ul class="nav menu_right">
                                <li class="nav-item">
                                    <a class="nav-link" href="/post/toPostWrite">
                                        <img src="/resources/images/header_pooter/cash.png" height="20px">
                                        판매하기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/mypage/toMyStore">
                                        <img src="/resources/images/header_pooter/my.png" height="20px">
                                        내상점</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/chatting/toChatting">
                                        <img src="/resources/images/header_pooter/talk2.png" height="24px">
                                        싸다톡</a>
                                </li>
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
                                                <a href="/post/select?curPage=1$category=남성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/boy.png" height="26px"
                                                        width="26px"> 남성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=여성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/girl.png" height="26px"
                                                        width="26px"> 여성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=신발,가방" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/Shoes.png" height="26px"
                                                        width="26px"> 신발,가방
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=뷰티" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/beauty.png" height="26px"
                                                        width="26px"> 뷰티
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=컴퓨터,주변기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/computer.png"
                                                        height="26px" width="26px"> 컴퓨터, 주변기기
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=카메라" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/camera.png" height="26px"
                                                        width="26px"> 카메라
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=디지털,가전" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/machine.png" height="26px"
                                                        width="26px"> 디지털,가전
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=음향기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/headset.png" height="26px"
                                                        width="26px"> 음향기기
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=생활용품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/toiletries.png"
                                                        height="26px" width="26px"> 생활용품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=예술/희귀/수집품"
                                                    class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/museum.png" height="26px"
                                                        width="26px"> 예술/희귀/수집품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=식품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/food.png" height="26px"
                                                        width="26px"> 식품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=가구/인테리어" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/furniture.png"
                                                        height="26px" width="26px"> 가구/인테리어
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=스포츠,레저" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/sport.png" height="26px"
                                                        width="26px"> 스포츠,레저
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=게임" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/game.png" height="26px"
                                                        width="26px"> 게임
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=도서" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/book.png" height="26px"
                                                        width="26px"> 도서
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=여행,숙박" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/travel.png" height="26px"
                                                        width="26px"> 여행,숙박
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
                                <option selected>지역을 선택하세요</option>
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
                        <form id="districeForm" class="d-none" action="/toDistrict" method="post">
                            <input type="text" id="roadAddrInput" name="roadAddr">
                            <input type="text" id="extraAddrInput" name="extraAddr">
                        </form>

                    </div>
                </div>

                <!-- 반응 -->
                <div class="row align-items-center heder_bottom" id="reaction">
                    <div class="col p-0 dropdown">
                        <a href="#" class="naviIcon fw-bolder" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/resources/images/header_pooter/navibar.png" height="35px"><img class="a_reaction"
                                src="/resources/images/header_pooter/로고.png" height="40px" alt="로고이미지">
                        </a>
                        <div class="dropdown-menu mt-4 py-4" id="checkBox">
                            <div class="container" id="">

                                <div class="row category_line">

                                    <div class="col">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2 font_a">
                                                <a href="/post/toPostWrite" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/cash.png" height="20px">
                                                    판매하기
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2 font_a">
                                                <a href="/mypage/toMyStore" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/talk2.png" height="24px">
                                                    싸다톡
                                                </a>
                                            </li>

                                            <li class="nav-item mb-2">
                                                <a href="#" class="nav-link p-0">
                                                    <!-- 빈값 -->
                                                </a>
                                            </li>


                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=남성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/boy.png" height="26px"
                                                        width="26px"> 남성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=여성의류" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/girl.png" height="26px"
                                                        width="26px"> 여성의류
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=신발,가방" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/Shoes.png" height="26px"
                                                        width="26px"> 신발,가방
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=뷰티" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/beauty.png" height="26px"
                                                        width="26px"> 뷰티
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=컴퓨터,주변기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/computer.png"
                                                        height="26px" width="26px"> 컴퓨터, 주변기기
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=카메라" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/camera.png" height="26px"
                                                        width="26px"> 카메라
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=디지털,가전" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/machine.png" height="26px"
                                                        width="26px"> 디지털,가전
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=음향기기" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/headset.png" height="26px"
                                                        width="26px"> 음향기기
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col ps-3">
                                        <ul class="nav flex-column pt-2 ps-3">
                                            <li class="nav-item mb-2 font_a">
                                                <a href="/mypage/toMyStore" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/my.png" height="20px"> 내상점
                                                </a>
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
                                                <a href="/post/select?curPage=1$category=생활용품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/toiletries.png"
                                                        height="26px" width="26px"> 생활용품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=예술/희귀/수집품"
                                                    class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/museum.png" height="26px"
                                                        width="26px"> 예술/희귀/수집품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=식품" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/food.png" height="26px"
                                                        width="26px"> 식품
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=가구/인테리어" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/furniture.png"
                                                        height="26px" width="26px"> 가구/인테리어
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=스포츠,레저" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/sport.png" height="26px"
                                                        width="26px"> 스포츠,레저
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=게임" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/game.png" height="26px"
                                                        width="26px"> 게임
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=도서" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/book.png" height="26px"
                                                        width="26px"> 도서
                                                </a>
                                            </li>
                                            <li class="nav-item mb-2">
                                                <a href="/post/select?curPage=1$category=여행,숙박" class="nav-link p-0">
                                                    <img src="/resources/images/header_pooter/travel.png" height="26px"
                                                        width="26px"> 여행,숙박
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-5 position-relative p-0" id="searchBox">
                        <form id="SearchForm2" action="/post/toSearch" method="post">
                            <a href="#" class="nav-link p-0 d-inline" id="searchIcon2"><img
                                    src="/resources/images/header_pooter/searchIcon.png" class="searchIcon"
                                    height="22px"></a>

                            <input type="text" class="searchInput ps-2" id="titleSearch2" name="post_title"
                                placeholder="물품, 동네이름을 입력해보세요.">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Contents -->

    <div class="container middle p-0 mt-3" id="contentsBox">
        <!-- 캐러셀 비반응 -->
        <div id="imgSlider" class="carousel slide car_before" data-bs-ride="carousel">
            <div class="row align-items-center position-relative">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#imgSlider" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#imgSlider" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#imgSlider" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner car_img p-0">
                    <div class="carousel-item active">
                        <img src="/resources/images/post/NoImg.webp" class="" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/resources/images/post/NoImg.webp" class="" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/resources/images/post/NoImg.webp" class="" alt="...">
                    </div>

                </div>

                <div class="col slideBox">
                    <button class="slideBtn_prev" type="button" data-bs-target="#imgSlider" data-bs-slide="prev">
                        <img src="/resources/images/post/left.png" height="30px">
                    </button>
                    <button class="slideBtn_next" type="button" data-bs-target="#imgSlider" data-bs-slide="next">
                        <img src="/resources/images/post/right.png" height="30px">
                    </button>
                </div>
            </div>
        </div>
        <!-- 캐러셀 반응 -->
        <div id="imgSlider2" class="carousel slide car_after" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#imgSlider2" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img src="/resources/images/post/NoImg.webp" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item active">
                    <img src="/resources/images/post/NoImg.webp" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="/resources/images/post/NoImg.webp" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#imgSlider2" data-bs-slide="prev">
                <img src="/resources/images/post/left.png" height="30px">
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#imgSlider2" data-bs-slide="next">
                <img src="/resources/images/post/right.png" height="30px">
            </button>
        </div>

        <div class="middle_profile py-3">
            프로필
        </div>

        <div class="mt-3">
            <select class="form-select post_category" id="post_category" aria-label="Default select example"
                name="post_category">
                <option selected valpue="판매중">판매중</option>
                <option value="예약중">예약중</option>
                <option value="거래완료">거래완료</option>
            </select>
        </div>
        <div class="my-3">
            <div class="middle_lgText">양파 12kg</div>
            <div class="middle_smText mt-1">생활/가공식품·4시간전</div>
            <div class="py-3">타이틀 내용</div>
            <div class="middle_smText">관심1·채팅1·조회242</div>
        </div>
        <div class="middle_bottom py-2 position-relative">
            <div class="alert alertBox">
                <div class="row align-items-center">
                    <div class="col art_wight">관심목록에 추가됐어요.</div>
                    <div class="col-3 text-end art_orange">
                        <a href="/mypage/toBasket"> 관심목록보기 </a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col">
                    <span class="middle_heartBtn px-1">
                        <!-- 찜이 등록되어있다면 after 아니면 before 해주기 -->
                        <button type="button" class="heartBefore">
                            <img src="/resources/images/post/heartLine.png" height="20px" width="20px">
                        </button>
                        <button type="button" class="heartAfter d-none">
                            <img src="/resources/images/post/heart.png" height="20px" width="20px">
                        </button>
                    </span>
                    <span class="px-2 fw-bolder"> 170,000원</span>
                    <span class="middle_orangeText"><a href="#">가격제안하기</a></span>
                </div>
                <div class="col d-flex justify-content-end">
                    <button type="button" class="middle_chattingBtn">채팅하기</button>
                </div>
            </div>
        </div>
        <div class="mt-3 mb-3">
            <div class="row align-items-center">
                <div class="col">

                    <span class="px-2 fw-bolder">싸다구마켓 인기중고</span>

                </div>
                <div class="col d-flex justify-content-end">
                    <span class="middle_orangeText"><a href="#">더 구경하기</a></span>
                </div>
            </div>
        </div>

    </div>



    <!-- footer -->
        <!-- Modal 창-->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-1">
                        <button type="button" id="closeBtn" data-bs-dismiss="modal" aria-label="Close">
                            <img src="/resources/images/post/left.png" height="25px">
                        </button>  
                    </div>
                    <div class="col n_title">
                        알림 창
                    </div>
                    <div class="col-1">
                        <button type="button" id="frashBtn">
                        <img src="/resources/images/header_pooter/trash.png" height="25px">
                    </button>
                    </div>
                </div>
                <div class="modal-body container n_content">
                    <div class="row p-1 ">
                        <div class="col-2 text-center n_logo">
                            <img src="/resources/images/header_pooter/채팅.png" height="40px">
                        </div>
                        <div class="col p-0">
                            <p>~~님께서 "~~"글에 채팅메세지를 보내셨습니다.</p>
                            <p class="n_date">1일전</p>
                        </div>
                        <div class="col-1">
                            <button type="button" class="btn-close"></button>
                        </div>
                    </div>
                
                    <div class="row p-1 ">
                        <div class="col-2 text-center n_logo">
                            <img src="/resources/images/header_pooter/가격.png" height="40px">
                        </div>
                        <div class="col p-0">
                            <p>~~님께서 "~~"글에 50,000원 가격제안했습니다</p>
                            <p class="n_date">2일전</p>
                        </div>
                        <div class="col-1">
                            <button type="button" class="btn-close"></button>
                        </div>
                    </div>
                
                    <div class="row p-1 ">
                        <div class="col-2 text-center n_logo">
                            <img src="/resources/images/header_pooter/후기.png" height="40px">
                        </div>
                        <div class="col p-0">
                            <p>~~님께서 "~~"글에 후기를 남기셨습니다</p>
                            <p class="n_date">3일전</p>
                        </div>
                        <div class="col-1">
                            <button type="button" class="btn-close"></button>
                        </div>
                    </div>
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
        <a class="nav-link" href="/client/toClient_post">
            <img src="/resources/images/header_pooter/고객게시판.png" height="56px" width="56px">
         </a>
    </div>
    <footer class="py-4 text-light">
        <div class="container" id="footerBox">
            <div class="row pooterLine pb-3">
                <div class="col a_reaction">
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="/post/toPost" class="nav-link p-0">
                                <img src="/resources/images/header_pooter/로고white.png" height="46px" alt="로고">
                            </a></li>

                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTrust" class="nav-link p-0">믿을수 있는 중고거래</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0">자주 묻는 질문</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toCheapPay" class="nav-link p-0">싸다구페이</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0">동네가게</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTeam" class="nav-link p-0">회사소개</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0">채용</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul class="nav flex-column pt-3">
                        <li class="nav-item mb-2"><a href="/footer/toTerms" class="nav-link p-0">이용약관</a></li>
                        <li class="nav-item mb-2"><a href="/footer/toPrivacy" class="nav-link p-0">개인정보처리방침</a></li>
                        <li class="nav-item mb-2"><a href="/footer/toLocation" class="nav-link p-0">위치기반서비스 이용약관</a>
                        </li>
                        <li class="nav-item mb-2"><a href="/footer/toPlanned" class="nav-link p-0">이용자보호 비전과 계획</a></li>
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

        // 빈하트 클릭시 찜추가해주기
        $(".heartBefore").on("click", function () {
            $(".alertBox").fadeIn(1000);
            setTimeout(function () {
                $(".alertBox").fadeOut(1000);
            }, 2500);
            $(".heartBefore").fadeOut(1000);
            setTimeout(function () {
                $(".heartAfter").fadeIn(1000);
                $(".heartAfter").removeClass('d-none');

            }, 1000);
        })
        // 꽉찬하트 클릭시 찜삭제
        $(".heartAfter").on("click", function () {

            $(".heartAfter").fadeOut(1000);
            setTimeout(function () {
                $(".heartBefore").fadeIn(1000);
                $(".heartBefore").removeClass('d-none');

            }, 1000);
        })
    </script>

</body>
    <!-- js -->
    <!-- 폭죽 -->
    <script src="/resources/js/header_footer.js"></script>
    <script src="/resources/js/Firecracker.js"></script>
</html>