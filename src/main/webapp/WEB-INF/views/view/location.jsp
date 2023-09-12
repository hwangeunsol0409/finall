<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../hf/header.jsp" %>
<style>
	.s1c5 h3 {
    margin: 50px;
    font-size: 40px;
    color: #333;
    border-bottom: 1px solid #555;
    padding-bottom: 25px;
}
.s1c5 {
    margin: 10%;
}
ul.c5main {
    margin: 50px;
}
.c5main li:first-child {
    width: 20%;
    font-size: 25px;
    font-weight: bold;
}
.c5main li:last-child {
    width: 80%;
    font-size: 25px;
    font-weight: bold;
    height: 78px;
}
.c5main li {
    float: left;
    padding: 20px 0;
    border-bottom: 1px solid #ccc;
}
.c5main:after {
    content: '';
    display: block;
    clear: both;
}
#map {
    margin: 0px 20% 10% 30%;
}
</style>
<!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">오시는 길</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">LOCATION</p>
            </div>
        </header>
<section class="page-section portfolio" id="portfolio">
                     <div class="container">
               <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <br>
	 <div class="s1c5">   
            <h3>EUNSOL</h3>
            <ul class="c5main">
                <li>주소</li>
                <li>울산 남구 삼산중로 100번길 26 케이엠빌딩</li>
            </ul>
            <ul class="c5main">
                <li>고객센터</li>
                <li>052-716-3199</li>
            </ul>
   </div>
   <div id="map">
   <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1689446117668" class="root_daum_roughmap root_daum_roughmap_landing"></div>
</div>   
</div>
 <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
</section>
<!--
   2. 설치 스크립트
   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
   new daum.roughmap.Lander({
      "timestamp" : "1689446117668",
      "key" : "2fijh",
      "mapWidth" : "640",
      "mapHeight" : "360"
   }).render();
</script>

<%@ include file="../hf/footer.jsp" %>