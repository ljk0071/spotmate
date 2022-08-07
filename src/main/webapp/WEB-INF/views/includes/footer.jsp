<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- footer -->
<footer class="footer_wrapper" id="footer">
   <div class="footer_banner swiper-container">
      <ul class="swiper-wrapper">
         <li class="swiper-slide"><a href="#"><img src="/assets/images/common/footer_slide01.png"></a></li>
         <li class="swiper-slide"><a href="#"><img src="/assets/images/common/footer_slide02.png"></a></li>
         <li class="swiper-slide"><a href="#"><img src="/assets/images/common/footer_slide03.png"></a></li>
      </ul>
   </div>
   <div class="inner">
      <div class="footer_top">
         <div class="lft_sec">
            <h1 class="footer_logo">
               <a href="javascript:void(0);"><img src="/assets/images/common/footer_logo_s.png" alt="SPOTMATE"></a>
            </h1>
         </div>
         <div class="cen_sec">
            <strong class="footer_tit">SERVICE</strong>
            <ul class="footer_menu clear">
               <li><a href="javascript:void(0);">BRAND</a></li>
               <li><a href="javascript:void(0);">SPOT</a></li>
               <li><a href="javascript:void(0);">MATE</a></li>
               <li><a href="javascript:void(0);">COMMUNITY</a></li>
               <li><a href="javascript:void(0);">DRIVER</a></li>
            </ul>
         </div>
         <div class="rit_sec">
            <strong class="footer_tit">PORTFOLIO</strong>
            <div class="portfolio">
               <a href="javascript:void(0);">GITHUB</a>
               <div class="down">
                  <ul>
                     <li><a href="javascript:void(0);">GITHUB</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">이정화</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">김려경</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">양지훈</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">유지은</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">이준규</a></li>
                     <li><a href="javascript:void(0);" target="_blank" rel="noopenner noreferrer">조윤주</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="footer_bott">
         <ul class="footer_link">
            <li><a href="javascript:void(0);">이용약관</a></li>
            <li><a href="javascript:void(0);">개인정보 처리방침</a></li>
            <li><a href="javascript:void(0);">고객센터</a></li>
         </ul>
         <address class="copy">
            ㈜SPOTMATE | TEAM 이정화 김려경 양지훈 유지은 이준규 조윤주 | 서울특별시 관악구 봉천동 862-1 | 대표변호 : 1800-2022 사업자등록번호 : 106-86-68127 <br /> Copyright ⓒ 2022 spotmate. ALL Rights Reserved.
         </address>
      </div>
   </div>
</footer>
<!-- //footer -->

<!-- 상단 이동하기 버튼 -->
<div class="topbutton">
   <!-- <a href="#top"> -->
   <a href="javascript:void(0);" id="topbtn"> <img src="/assets/images/common/topbutton.png">
   </a>
</div>
<!-- 상단 이동하기 버튼 -->

<!-- 경찰 고정배너  -->
<div id="scrollbanner">
   <a href="javascript:void(0);" class="police" onclick="modal.show()"> <img src="/assets/images/common/policebanner.png" alt="경찰신고배너">
   </a>
   <ul>
      <li><a href="javascript:void(0);" onclick="modal.show()">경찰 신고</a></li>
      <li><a href="javascript:void(0);" onclick="modal.show()">지인에게 알림</a></li>
   </ul>
</div>
<!-- 경찰 고정배너  -->

</body>
<!-- //body -->

<script>
   var swiperFooter = new Swiper('.footer_banner', {
      slidesPerView : 1,
      effect : 'slide',
      autoplay : {
         delay : 2000
      },
      speed : 1000,
      loop : true,
   });
</script>

