<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간편회원 약관동의 &lt; 회원가입</title>
<!-- css/script -->
<jsp:include page="../inc/join_include.jsp"/>

<script type="text/javascript">

    function fnChkag() {
         
         if(document.getElementById('agreeCco_1009BG').checked == false){
            alert("필수요소를 모두 체크하세요");
            return false;
         }
         
         if(document.getElementById('agreeCco_1009BI').checked == false){
            alert("필수요소를 모두 체크하세요");
            return false;
         }
         
         document.fr.submit();
      }
         
</script>
</head>


   <!-- header -->
   <div id="mast-head">
      <div class="container">
         <h1 class="bi">

            <a href="./Main.aim" onclick="return fnWindowOpen(this.href);"
               target="_blank"><img src="https://ifh.cc/g/RGtYO5.png"
               alt="AIM홈페이지"></a>
         </h1>
      </div>
   </div>
   <!-- //header -->

   <!-- mast body -->
   <form action="./Join.aim" method="post" name="fr">
   <div id="mast-body">
      <div class="container">
         <div class="toparea">
            <h2 class="title">
               AIM 회원가입
            </h2>
           
            <div class="step __1">
               <div class="step-desc">
                  필수 약관에<br>동의해주세요:)
               </div>
            </div>
         </div>

         <!-- contents -->
         <div class="contents">
            <!-- 약관 -->
            <div id="member-terms" class="section __half __opt-in ui-allchk-wrap ui-allchk-group1" data-separator-number="1">
               <h3 class="subject __underline">
                  <em>약관</em>
               </h3>
               <div class="ui-check __toggle">
                  <input type="checkbox" id="terms-all-check" data-trigger="#member-terms" class="ui-allchk-btn ui-allchk-group1" data-separator-number="1">
                  <label for="terms-all-check">전체동의</label>
               </div>
               <div class="section __opt-in __opt-wrap" id="div-prv">
                  <div class="row __block">
                     <div class="col-md"></div>
                     <div class="col-md">
                        <div class="form-wrap __agreement">
                           <div class="inner">
                                 <div class="detail">
                                    <button type="button" class="ui-button __square-mini __underline" onclick="modal_init('term-code-agree-10090',800)"></button>
                                 </div>
                              <div id="term-code-agree-10090" class="modal-container __fixed">
                                 <div class="modal-header">
                                    <div class="headline">AIM.POINT 회원약관</div>
                                 </div>
                                 <div class="modal-contents __no-style">
                                    <div class="privacyArea">
                                       <iframe
                                          src="./assets/joincss/iframe_1009_C0_ko.html"
                                          width="100%" height="100%" frameborder="0"
                                          scrolling="auto" marginwidth="0" marginheight="0"
                                          allowtransparency="true" title=""></iframe>
                                    </div>
                                 </div>
                                 <div class="modal-closer">
                                    <button type="button" class="btn-close">닫기</button>
                                 </div>
                              </div>
                           </div>
                           
                           <div class="inner">
                              <div class="ui-wrap">
                                 <div class="ui-check">
                                    <input type="checkbox" id="agreeCco_1009BG" name="1009"
                                       class="mPrv ui-allchk-el ui-allchk-group1"
                                       onclick="fnPrvAgChange('agreeCco_1009BG');"
                                       data-title="개인정보의 필수적인 사항에 대한 수집 이용 동의" data-prvdvc="BG"
                                       data-cconm="L.POINT" data-ccoenm="L.POINT"
                                       data-separator-number="1">
                                       <label for="agreeCco_1009BG">개인정보의 필수적인 사항에 대한 수집 이용 동의 <em class="">(필수)</em></label>
                                 </div>
                                 
                                 <div class="detail">
                                    <button type="button" class="ui-button __square-mini __underline" onclick="modal_init('term-code-agree-10091',800)">자세히</button>
                                 </div>
                              </div>
                              
                              <div id="term-code-agree-10091"
                                 class="modal-container __fixed">
                                 <div class="modal-header">
                                    <div class="headline">개인정보의 필수적인 사항에 대한 수집 이용 동의</div>
                                 </div>
                                 <div class="modal-contents __no-style">
                                    <div class="privacyArea">
                                       <iframe
                                          src="./assets/joincss/iframe_1009_BG_ko.html"
                                          width="100%" height="100%" frameborder="0"
                                          scrolling="auto" marginwidth="0" marginheight="0"
                                          allowtransparency="true" title=""></iframe>
                                    </div>
                                 </div>
                                 <div class="modal-closer">
                                    <button type="button" class="btn-close">닫기</button>
                                 </div>
                              </div>
                           </div>
                           
                           <div class="inner">
                              <div class="ui-wrap">
                                 <div class="ui-check">
                                    <input type="checkbox" id="agreeCco_1009BH" name="1009"
                                       class="ui-allchk-el ui-allchk-group1"
                                       onclick="fnPrvAgChange('agreeCco_1009BH');"
                                       data-title="개인정보의 선택적인 사항에 대한 수집 이용 동의" data-prvdvc="BH"
                                       data-cconm="L.POINT" data-ccoenm="L.POINT"
                                       data-separator-number="1"><label
                                       for="agreeCco_1009BH">개인정보의 선택적인 사항에 대한 수집 이용 동의 <em
                                       class="__point-color">(선택)</em></label>
                                 </div>
                                 <div class="detail">
                                    <button type="button"
                                       class="ui-button __square-mini __underline"
                                       onclick="modal_init('term-code-agree-10092',800)">자세히</button>
                                 </div>
                              </div>
                              <div id="term-code-agree-10092"
                                 class="modal-container __fixed">
                                 <div class="modal-header">
                                    <div class="headline">개인정보의 선택적인 사항에 대한 수집 이용 동의</div>
                                 </div>
                                 <div class="modal-contents __no-style">
                                    <div class="privacyArea">
                                       <iframe
                                          src="./assets/joincss/iframe_1009_BH_ko.html"
                                          width="100%" height="100%" frameborder="0"
                                          scrolling="auto" marginwidth="0" marginheight="0"
                                          allowtransparency="true" title=""></iframe>
                                    </div>
                                 </div>
                                 <div class="modal-closer">
                                    <button type="button" class="btn-close">닫기</button>
                                 </div>
                              </div>
                           </div>
                           <div class="inner">
                              <div class="ui-wrap">
                                 <div class="ui-check">
                                    <input type="checkbox" id="agreeCco_1009BI" name="1009"
                                       class="mPrv ui-allchk-el ui-allchk-group1"
                                       onclick="fnPrvAgChange('agreeCco_1009BI');"
                                       data-title="개인정보의 필수적인 제3자 제공에 대한 동의" data-prvdvc="BI"
                                       data-cconm="L.POINT" data-ccoenm="L.POINT"
                                       data-separator-number="1"><label
                                       for="agreeCco_1009BI">개인정보의 필수적인 제3자 제공에 대한 동의 <em
                                       class="">(필수)</em></label>
                                 </div>
                                 <div class="detail">
                                    <button type="button" class="ui-button __square-mini __underline" onclick="modal_init('term-code-agree-10093',800)">자세히</button>
                                 </div>
                              </div>
                              <div id="term-code-agree-10093"
                                 class="modal-container __fixed">
                                 <div class="modal-header">
                                    <div class="headline">개인정보의 필수적인 제3자 제공에 대한 동의</div>
                                 </div>
                                 <div class="modal-contents __no-style">
                                    <div class="privacyArea">
                                       <iframe
                                          src="./assets/joincss/iframe_1009_BI_ko.html"
                                          width="100%" height="100%" frameborder="0"
                                          scrolling="auto" marginwidth="0" marginheight="0"
                                          allowtransparency="true" title=""></iframe>
                                    </div>
                                 </div>
                                 <div class="modal-closer">
                                    <button type="button" class="btn-close">닫기</button>
                                 </div>
                              </div>
                           </div>
                           <div class="inner">
                              <div class="ui-wrap">
                                 <div class="ui-check">
                                    <input type="checkbox" id="agreeCco_1009BJ" name="1009"
                                       class="ui-allchk-el ui-allchk-group1"
                                       onclick="fnPrvAgChange('agreeCco_1009BJ');"
                                       data-title="개인정보의 선택적인 제3자 제공에 대한 동의" data-prvdvc="BJ"
                                       data-cconm="L.POINT" data-ccoenm="L.POINT"
                                       data-separator-number="1"><label
                                       for="agreeCco_1009BJ">개인정보의 선택적인 제3자 제공에 대한 동의 <em
                                       class="__point-color">(선택)</em></label>
                                 </div>
                                 <div class="detail">
                                    <button type="button"
                                       class="ui-button __square-mini __underline"
                                       onclick="modal_init('term-code-agree-10094',800)">자세히</button>
                                 </div>
                              </div>
                              <div id="term-code-agree-10094"
                                 class="modal-container __fixed">
                                 <div class="modal-header">
                                    <div class="headline">개인정보의 선택적인 제3자 제공에 대한 동의</div>
                                 </div>
                                 <div class="modal-contents __no-style">
                                    <div class="privacyArea">
                                       <iframe
                                          src="./assets/joincss/iframe_1009_BJ_ko.html"
                                          width="100%" height="100%" frameborder="0"
                                          scrolling="auto" marginwidth="0" marginheight="0"
                                          allowtransparency="true" title=""></iframe>
                                    </div>
                                 </div>
                                 <div class="modal-closer">
                                    <button type="button" class="btn-close">닫기</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="description __high">
                  <p class="__point-color">
                     선택약관에 동의하지 않으셔도 회원가입이 가능합니다.
                  </p>
               </div>
            </div>

            <!-- btn -->
            <div class="btn-area __center">
               <button type="button" class="ui-button __square-large __black" onclick="location.href='./Main.aim';">
                  취소
               </button>
               <button type="button" class="ui-button __square-large __point-color" id="delaychk" onclick="fnChkag();" style="background-color: #18315D;">
                  다음
               </button>
            </div>
         </div>
         <!-- //contents -->
      </div>
   </div>
   </form>





	<jsp:include page="../inc/footer.jsp"/>
	
	
	
	
</body>
</html>