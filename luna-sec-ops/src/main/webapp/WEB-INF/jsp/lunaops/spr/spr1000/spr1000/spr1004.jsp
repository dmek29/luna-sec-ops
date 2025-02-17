<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form class="kt-form" id="frSpr1004">
	<input type="hidden" name="modalId" id="modalId" value="${param.modalId}">
	<input type="hidden" name="paramPrjGrpId" id="paramPrjGrpId" value="${param.paramPrjGrpId}">
	<input type="hidden" name="paramPrjId" id="paramPrjId" value="${param.paramPrjId}">
	<input type="hidden" name="paramSprId" id="paramSprId" value="${param.paramSprId}">
	<input type="hidden" name="paramStDt" id="paramStDt" value="${param.paramStartDt}">
	<input type="hidden" name="paramEdDt" id="paramEdDt" value="${param.paramEndDt}">
	<input type="hidden" name="paramSprDesc" id="paramSprDesc" value="${param.paramSprDesc}">
	<div class="kt-portlet__body">
		<div class="osl-wizard" id="kt_wizard_v3" data-ktwizard-state="step-first">
			
			<div class="osl-wizard__nav">			
				<div class="osl-wizard__nav-items osl-wizard__nav-items--clickable">
					
					<div class="osl-wizard__nav-item" data-ktwizard-type="step" data-ktwizard-state="current">
						<div class="osl-wizard-wrapper">
							<div class="wizard-number">1</div>
							<div class="wizard-label">
								<div class="wizard-title">요구사항 결과 확인</div>
								<div class="wizard-desc">스프린트 리뷰</div>
							</div>
						</div>
					</div>
					
					
					<div class="osl-wizard__nav-item" data-ktwizard-type="step">
						<div class="osl-wizard-wrapper">
							<div class="wizard-number">2</div>
							<div class="wizard-label">
								<div class="wizard-title">회고록 작성</div>
							</div>
						</div>
					</div>
					
					
					<div class="osl-wizard__nav-item" data-ktwizard-type="step">
						<div class="osl-wizard-wrapper">
							<div class="wizard-number">3</div>
							<div class="wizard-label">
								<div class="wizard-title">스프린트 결과 통계</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="osl-form__actions kt-padding-l-25" id="wizardStepBtnTmp">
				<button class="btn btn-outline-brand" data-ktwizard-type="action-prev">
					<i class="fas fa-chevron-circle-left"></i><span data-lang-cd="spr1003.wizard.btn.prev">이전</span>
				</button>
				<button class="btn btn-outline-brand kt-margin-l-20" data-ktwizard-type="action-submit">
					<span class="kt-margin-r-5" data-lang-cd="spr1003.wizard.btn.submit">완료</span><i class="fas fa-check-circle kt-padding-r-0"></i>
				</button>
				<button class="btn btn-outline-brand kt-margin-l-20" data-ktwizard-type="action-next">
					<span class="kt-margin-r-5" data-lang-cd="spr1003.wizard.btn.next">다음</span><i class="fas fa-chevron-circle-right kt-padding-r-0"></i>
				</button>
			</div>
			
			<div class="osl-wizard__content w-100 osl-h-px--500 kt-bg-light kt-padding-30 kt-padding-l-40 kt-padding-r-40" data-ktwizard-type="step-content" data-ktwizard-state="current">
				<div class="row kt-margin-t-20">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="osl-datatable-search" data-datatable-id="sprReqResultTable"></div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12">
								<button class="btn btn-brand float-right" id="newReqappend" type="button" data-datatable-id="sprReqResultTable">
									<i class="fa fa-search"></i><span class=""><span>신규 백로그 추가</span></span>
								</button>
							</div>
						</div>
						<div class="kt_datatable" id="sprReqResultTable"></div>
					</div>
				</div>
			</div>
			
			
			<div class="osl-wizard__content w-100 osl-h-px--500 kt-bg-light kt-padding-30 kt-padding-l-40 kt-padding-r-40" data-ktwizard-type="step-content">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="form-group">
							<label class="required"><i class="fa fa-edit kt-margin-r-5"></i>회고록 제목</label>
							<input type="text" name="mmrNmInput" id="mmrNmInput" class="form-control" maxlength="99" required>
						</div>
					</div>
				</div>
				<div class="row kt-margin-b-20">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="form-group form-group-last">
							<label class="required"><i class="fa fa-edit kt-margin-r-5"></i>회고록 내용</label>
							<textarea class="form-control" name="mmrDescInput" id="mmrDescInput" required></textarea>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="osl-wizard__content w-100 kt-bg-light kt-padding-30 kt-padding-l-40 kt-padding-r-40" data-ktwizard-type="step-content">
				<div class="row kt-padding-l-20 kt-padding-r-20">
					
					<div class="col-12 text-center kt-margin-t-20"><h1 class="font-weight-bold">${param.paramSprNm}</h1></div>
					
					
					
					<div class="col-12 text-right">${param.paramStartDt} - ${param.paramEndDt}</div>
					<div class="col-12 text-right">${sessionScope.loginVO.usrNm}</div>
					<div class="col-12 text-right">${param.paramSprDesc}</div>
					
					
					
					<div class="table border kt-margin-t-20">
						<div class="row kt-margin-0">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">전체 배정 백로그</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat01"></div>
						</div>
						<div class="row kt-margin-0 border-top">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">최종 완료 백로그</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat02"></div>
						</div>
						<div class="row kt-margin-0 border-top">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">미 완료 백로그</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat03"></div>
						</div>
						<div class="row kt-margin-0 border-top">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">평균 완료 소요시간</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat04"></div>
						</div>
						<div class="row kt-margin-0 border-top">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">진척률</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat05"></div>
						</div>
						<div class="row kt-margin-0 border-top">
							<div class="col-6 text-center kt-bg-light-dark kt-padding-15 border-right font-weight-bold">완료 스토리 포인트 공수</div>
							<div class="col-6 text-center kt-padding-15" id="sprStat06"></div>
						</div>
					</div>
					
				</div>
				
				
				<div class="row kt-padding-l-20 kt-padding-r-20 kt-margin-t-40">
					<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 kt-padding-l-0 kt-padding-r-10">
						<div class="border osl-min-h-px--140 osl-card__data--empty" id="burnUpChart"></div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 kt-padding-l-10 kt-padding-r-0">
						<div class="border osl-min-h-px--140 osl-card__data--empty" id="burnDownChart"></div>
					</div>
				</div>
				<div class="row kt-padding-l-20 kt-padding-r-20 kt-margin-t-40 ">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 kt-padding-l-0 kt-padding-r-0">
						<div class="border osl-min-h-px--140 osl-card__data--empty" id="velocityChart"></div>
					</div>
				</div>
				
				
				
				<div class="row kt-margin-t-20">
					<div class="col-lg-12 col-md-12 col-sm-12 kt-padding-20">
						<div class="row">
							
							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="osl-datatable-search" data-datatable-id="sprDetailTable"></div>
							</div>
							
							
							<div class="col-lg-6 col-md-6 col-sm-12">
								<button type="button" class="btn btn-brand float-right" data-datatable-id="sprDetailTable" data-datatable-action="select" title="스프린트 상세정보 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="5">
									<i class="fa fa-list"></i><span>조회</span>
								</button>
							</div>
							
						</div>
						
						<div class="kt_datatable" id="sprDetailTable"></div>
						
					</div>
				</div>
				
			</div>
			
		</div>
	</div>

	<div class="modal-footer">
		<button class="btn btn-outline-brand" data-dismiss="modal">
			<i class="fa fa-window-close"></i><span class="osl-resize__display--show" data-lang-cd="modal.close">닫기</span>
		</button>
	</div>
</form>


<script>
"use strict";
var OSLSpr1004Popup = function () {
	
	var formId = 'frSpr1004'
	
	//edit 목록
	var formEditList = [];
	//요구사항 정보 목록
	var reqInfo = null;
	//datatableOpenFlag
	var datatableInitFlag = {3:false};
	var datatableSetting = {};
	
	//스프린트 ID
	var paramSprId = $("#paramSprId").val();
	//스프린트 전체 스토리포인트
	var totalSprPoint = 0;
	//스토리포인트 리스트
	var endSprPoint = 0;
	//form validate 주입
	var formValidate = $.osl.validate(formId);
	
	//시작일
	var paramSprStDt = $("#paramStDt").val();
	//종료일
	var paramSprEdDt = $("#paramEdDt").val();
	
	//단계별 데이터
	var wizardData = {
		//요구사항 결과 입력
		reqResultDescList: {}
	};
	
	var documentSetting = function(){
		//edit 세팅
    	formEditList.push($.osl.editorSetting("mmrDescInput", {formValidate: formValidate,'minHeight': 220, disableResizeEditor: false}));
		
    	// begin:: 요구사항 결과 확인 데이터테이블
		datatableInitFlag[1] = 
			$.osl.datatable.setting("sprReqResultTable",{
				data: {
					source: {
						read: {
							url: "/spr/spr1000/spr1000/selectSpr1000SprReqListAjax.do",
							params:{
								sprId: paramSprId
							}
						}
					},
					//그리드에 표출되는 row 개수
					pageSize : 5,
				},
				toolbar:{
					items:{
						pagination:{
							//그리드에 표출되는 row 개수
							pageSizeSelect : [5, 10, 20, 30, 50, 100],
						}
					}
				},
				columns: [
					{field: 'reqOrd', title: '순번', textAlign: 'center', width: 50, search: true},
					{field: 'reqNm', title: '요청 제목', textAlign: 'center', width: 200, search: true},
					{field: 'reqProTypeNm', title: '처리유형', textAlign: 'left', width: 100, autoHide: false, search: true, searchType:"select", searchCd: "REQ00008", searchField:"reqProType", sortField: "reqProType"},
					{field: 'reqChargerNm', title: '담당자', textAlign: 'center', width: 100, search: true,
						template: function (row) {
							if($.osl.isNull(row.reqChargerNm)){
								row.reqChargerNm = "";
							}
							var usrData = {
								html: row.reqChargerNm,
								imgSize: "sm",
								class:{
									cardBtn: "osl-width__fit-content"
								}
							};
							return $.osl.user.usrImgSet(row.reqChargerId, usrData);
						},
						onclick: function(rowData){
							$.osl.user.usrInfoPopup(rowData.reqChargerId);
						}
					},
					{field: 'regDtm', title: '등록일', textAlign: 'center', width: 100, search: true, searchType:"date",
						template: function (row) {
							var paramDatetime = new Date(row.regDtm);
			                var agoTimeStr = $.osl.datetimeAgo(paramDatetime, {fullTime: "d", returnFormat: "yyyy-MM-dd"});
			                return agoTimeStr.agoString;
						}
					},
					{field: 'sprPoint', title: '스토리 포인트', textAlign: 'center', width: 80},
					{field: 'reqResultDescLen', title: '작성 여부', textAlign: 'center', width: 30, autoHide: false,
						template: function (row) {
							var rtnValue = '<i class="fa fa-hourglass"></i>';
							
							if(!$.osl.isNull(row.reqResultDescLen) && row.reqResultDescLen > 0){
								rtnValue = '<i class="fa fa-check-double kt-font-brand"></i>';
							}
			                return rtnValue;
						}
					}
				],
				actionBtn:{
					"title": "결과 작성",
					"width": 80,
					"update": false,
					"delete": false,
					"dblClick": false,
					"resultWrite": true
				},
				actionTooltip:{
					"resultWrite": "요구사항 결과 작성"
				},
				theme:{
					actionBtnIcon:{
						"resultWrite": "fas fa-edit",
					}
				},
				actionFn:{
					"resultWrite":function(rowData){
						var data = {
								paramPrjGrpId: rowData.prjGrpId
								,paramPrjId: rowData.prjId
								,paramReqId: rowData.reqId
								,paramSprId: paramSprId
							};
						var options = {
								modalTitle: "요구사항 결과 작성",
								autoHeight: false
							};
						$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1005View.do',data,options);
					}
				},
			});
		
		// end:: 요구사항 결과 확인 데이터테이블
		datatableSetting[3] = function(){
			// begin:: 스프린트 상세정보 데이터테이블 
    		return $.osl.datatable.setting("sprDetailTable",{
    			data: {
    				source: {
    					read: {
    						url: "/spr/spr1000/spr1000/selectSpr1000SprReqListAjax.do",
    						params:{
    							sprId: paramSprId
    						}
    					}
    				},
    				 pageSize : 5,
    			},
    			toolbar:{
    				 items:{
    					 pagination:{
    						 pageSizeSelect : [5, 10, 20, 30, 50, 100],
    						//페이지 그룹단위 변경
    						pages:{
    							desktop: {
    								layout: 'default',
    								pagesNumber: 5
    							},
    							tablet:{
    								layout: 'default',
    								pagesNumber: 3
    							}
    						}
    					 }
    				 }
    			},
    			columns: [
    				{field: 'prjNm', title: '프로젝트 명', textAlign: 'center', width: 150},
    				{field: 'reqOrd', title: '순번', textAlign: 'center', width: 50, search: true},
    				{field: 'reqNm', title: '요청 제목', textAlign: 'center', width: 200, search: true},
    				{field: 'reqProTypeNm', title: '진행 상태', textAlign: 'left', width: 100, autoHide: false, search: true, searchType:"select", searchCd: "REQ00008", searchField:"reqProType", sortField: "reqProType"}, 
    				{field: 'reqChargerNm', title: '담당자', textAlign: 'center', width: 100, search: true,
    					template: function (row) {
    						if($.osl.isNull(row.reqChargerNm)){
    							row.reqChargerNm = "";
    						}
    						var usrData = {
    							html: row.reqChargerNm,
    							imgSize: "sm",
    							class:{
    								cardBtn: "osl-width__fit-content"
    							}
    						};
    						return $.osl.user.usrImgSet(row.reqChargerId, usrData);
    					},
    					onclick: function(rowData){
    						$.osl.user.usrInfoPopup(rowData.reqChargerId);
    					}
    				},
    				{field: 'timeRequired', title: '실 소요시간', textAlign: 'center', width: 100,
    					template: function (row) {
    						if(row.reqProType == '01'){
    							return '-';
    						}else if(row.reqProType == '04'){
    							return $.osl.escapeHtml(String(row.endTimeRequired)); 
    						}
    						return $.osl.escapeHtml(String(row.notEndTimeRequired));
    					},
    				},
    				{field: 'sprPoint', title: '스토리포인트', textAlign: 'center', width: 80,
    					template: function (row) {
    						//완료인 경우 데이터 추가
    						if($.osl.isNull(row.sprPoint)){
    							return '-'
    						}else{
    							return $.osl.escapeHtml(String(row.sprPoint));	
    						}
    					}
    				}
    			],
    			actionBtn:{
    				select:false,
    				delete:false,
    				update:false,
    			},
    			callback:{
    				ajaxDone:function(evt, list){
    					//ajax로 전달받은 요구사항 값
    	 				var reqChartDataList = [];
    	 				if($.osl.datatable.list["sprDetailTable"].targetDt.lastResponse.hasOwnProperty('data')){
    	 					reqChartDataList = $.osl.datatable.list["sprDetailTable"].targetDt.lastResponse.data;
    	 				}
    	 				reqInfo = JSON.stringify(list);
    	 				//통계정보 출력
    	 				selectSprInfoStat();
    	 				
    	 				//차트가 안그려졌을때만
    	 				if($("#burnDownChart").children().length == 0){
    		 				//차트 출력
    		 				drawAllChart();
    	 				}
    	 				
    				}
    			}
    		});
    		// end:: 스프린트 상세정보 데이터테이블 
    		
		};
		
		// begin :: 마법사 
		//마법사 세팅
		var wizard = new KTWizard('kt_wizard_v3', {
			startStep: 1, 
		});
		
		//스텝 변경 전 현재 단계에 데이터 저장
		wizard.on('beforeNext', function(wizardObj) {
			var reqEndCnt = $.osl.datatable.list.sprReqResultTable.targetDt.lastResponse.meta.reqEndCnt;
			//form valid check
			if($("#"+formId).valid() !== true){
				wizardObj.stop();
			}
			if(reqEndCnt != '0'){
				wizardObj.stop();
				$.osl.alert($.osl.lang("spr1004.alert.reqEndCnt",reqEndCnt),{"type":"error"});
			};
		});
		
		//마법사 각 단계탭 클릭시 변경 이벤트
		wizard.on('change', function(wizardObj) {
			//전체 단계 수
			var totalStep = wizard.totalSteps;
			//현재 단계
			var checkThis = wizard.currentStep;
			//전체 단계-현재 단계
			var checking = totalStep - checkThis;
			//1번에서 3번으로 가려는 경우
			if(checking == 0 && checkThis == 3){
				var mmrDesc = $("#mmrDescInput").val();
				var mmrNm = $("#mmrNmInput").val();
				//공백이 있을 경우 이동 불가
				if($.osl.isNull(mmrDesc) || $.osl.isNull(mmrNm)){
					$.osl.alert("회고록 작성을 마무리해주세요.");
					wizardObj.goPrev();
				}
			}
			if(datatableInitFlag.hasOwnProperty(wizardObj.currentStep)){
				//마법사 단계 이동 시 버튼 표출 여부 , 데이터 테이블 세팅
				if(!datatableInitFlag[wizardObj.currentStep]){
					datatableInitFlag[wizardObj.currentStep] = datatableSetting[wizardObj.currentStep]();
					
				}else if(datatableInitFlag[wizardObj.currentStep].hasOwnProperty("targetDt")){
					datatableInitFlag[wizardObj.currentStep].targetDt.reload();
				}
			}
		});
		
		// begin :: 마법사 단계 이동 시 버튼 표출 여부 , 데이터 테이블 세팅
		var initWizard = function(wizard){
			//전체 단계 수
			var totalStep = wizard.totalSteps;
			//현재 단계
			var checkThis = wizard.currentStep;
			//전체 단계-현재 단계
			var checking = totalStep - checkThis;
			
			//마지막 단계
			if(checking==0){
				$('[data-ktwizard-type="action-prev"]').css('display','inline-block');
				$('[data-ktwizard-type="action-next"]').css('display','none');
				$('[data-ktwizard-type="action-submit"]').css('display','inline-block');
			//중간 단계
			}else if(checking<totalStep-1){
				
				$('[data-ktwizard-type="action-prev"]').css('display','inline-block');
				$('[data-ktwizard-type="action-next"]').css('display','inline-block');
				$('[data-ktwizard-type="action-submit"]').css('display','none');
			//첫번째 단계
			}else{
				$('[data-ktwizard-type="action-next"]').css('display','inline-block');
				$('[data-ktwizard-type="action-prev"]').css('display','none');
				$('[data-ktwizard-type="action-submit"]').css('display','none');
			}
		};
		// end :: 마법사 단계 이동 시 버튼 표출 여부 , 데이터 테이블 세팅
		//종료버튼 클릭했을 때
		$('#frSpr1004 [data-ktwizard-type="action-submit"]').click(function(){
	       	//formData
	   		var fd = $.osl.formDataToJsonArray(formId);
	       	
	       	//회고록 이름
	       	fd.append("mmrNm", $("#mmrNmInput").val());
	       	//회고록 설명
	       	fd.append("mmrDesc", $("#mmrDescInput").val());
	       	//스프린트 아이디
	       	fd.append("sprId", paramSprId);
	       	//요구사항 정보 표출
	       	fd.append("reqInfo", reqInfo);
	       	
	   		//AJAX 설정
	   		var ajaxObj = new $.osl.ajaxRequestAction({"url":"<c:url value='/spr/spr1000/spr1000/updateSpr1003SprEnd.do'/>", "loadingShow": false, "async": false,"contentType":false,"processData":false ,"cache":false},fd);

	   		//AJAX 전송 성공 함수
	   		ajaxObj.setFnSuccess(function(data){
	   			if(data.errorYn == "Y"){
	   				$.osl.alert(data.message,{type: 'error'});
	   			}else{
	   				//등록 성공
	   				$.osl.toastr(data.message);

	   				//모달 창 닫기
	   				$.osl.layerPopupClose();
	   				
	   				//datatable 조회
	   				//if($("button[data-datatable-id=spr1000Table][data-datatable-action=select]").length > 0){
	   				$("button[data-datatable-id=spr1000Table][data-datatable-action=select]").click();
	   				//}
	   				
	   			}
	   		});
	   		
	   		//AJAX 전송
	   		ajaxObj.send();
		});
		
		//스프린트 종료 > 1.요구사항 결과 확인 > 신규 백로그 추가 버튼
		$('#newReqappend').click(function(){
			var data = {
					type: "insert"
			};
			var options = {
					modalTitle: "신규 백로그 추가",
					autoHeight: false
				};
			$.osl.layerPopupOpen('/req/req1000/req1000/selectReq1001View.do',data,options);
		});
		
	};
	
	var selectSprInfoStat = function(){
 		//AJAX 설정
 		var ajaxObj = new $.osl.ajaxRequestAction(
 				{"url":"<c:url value='/spr/spr1000/spr1000/selectSpr1000SprInfoStatAjax.do'/>", "async":"false"},{sprId: paramSprId});
 		//AJAX 전송 성공 함수
 		ajaxObj.setFnSuccess(function(data){
 			if(data.errorYn == "Y"){
 				$.osl.alert(data.message,{type: 'error'});
 			}else{
 				//사용자 목록 저장
 				var sprStat= data.sprStat;
 				//전체 백로그
 				$("#sprStat01").html($.osl.escapeHtml(sprStat.allCntSum));
 				//완료 백로그
 				$("#sprStat02").html($.osl.escapeHtml(sprStat.endCntSum));
 				//미완료 백로그
 				$("#sprStat03").html($.osl.escapeHtml(sprStat.notEndCntSum));
 				//평균 완료시간
 				if($.osl.escapeHtml(sprStat.avgTime)=='NaN'){
	 				$("#sprStat04").html("0");
 				}else{
 					$("#sprStat04").html($.osl.escapeHtml(sprStat.avgTime.toFixed(2)+" 시간"));
 				}
 				//진척률
 				if($.osl.escapeHtml(sprStat.sprEndPercent)=='NaN'){
	 				$("#sprStat05").html($.osl.escapeHtml("0 %"));
 				}else{
 					$("#sprStat05").html($.osl.escapeHtml(sprStat.sprEndPercent.toFixed(2))+" %");
 				}
 				if($.osl.escapeHtml(sprStat.sprPerTime)=='NaN'){
	 				$("#sprStat06").html("0 시간   /  1 스토리 포인트");
 				}else{
 					$("#sprStat06").html($.osl.escapeHtml(sprStat.sprPerTime.toFixed(2)) + "시간 /  1 스토리 포인트");
 				}
 				//스토리포인트 총합
 				totalSprPoint = sprStat.sprPoint;
 			}
 		});
 		
 		//AJAX 전송
 		ajaxObj.send();
 		
 	};
 	
 	//차트그리기
 	var drawAllChart = function(){
 		var ajaxObj = new $.osl.ajaxRequestAction(
 				{"url":"<c:url value='/spr/spr1000/spr1000/selectSpr1000ChartInfoAjax.do'/>", "async":"false"},{sprId: paramSprId});
 		//AJAX 전송 성공 함수
 		ajaxObj.setFnSuccess(function(data){
 			if(data.errorYn == "Y"){
 				$.osl.alert(data.message,{type: 'error'});
 			}else{
 				
 				var chartData = data.chartData;
 				
 				var today = new Date();
 				var endDt  = today.getFullYear() + "-" + (today.getMonth()+1) + "-" + today.getDate();
 				//차트데이터 가공
 				var seriesData = getDataRangeData(paramSprStDt, endDt, "1", chartData);
 				
 				if(chartData.length == 0){
 					$("#burnDownChart").text("데이터 없음")
 					$("#burnUpChart").text("데이터 없음")
 				}else{
	 				//번업차트 출력
	 				drawBurnUpChart(seriesData);
	 				//번다운차트 출력
	 				drawBurnDownChart(seriesData);
 				}
 				//데이터 없는 경우
 				if(chartData.length == 0){
					endSprPoint = 0
					$("#velocityChart").text("데이터 없음")
 				}else{
	 				//진행된 스토리포인트 저장
	 				endSprPoint = chartData[chartData.length - 1].cumSprPoint;
	 				//상태가 종료일 경우 velocity차트그리기
					drawVelocityChart();
 				}
 				
 			}	
 		});
 		ajaxObj.send();
 	}
 	
 	//번업차트그리기	
 	var drawBurnUpChart = function(dateRange){
		 var chart = $.osl.chart.setting("apex","burnUpChart",{
				//차트 데이터 설정
				data:{										
					param:{
						dataArr: dateRange,	
						 //x축 키값
						 xKey:"time",
						 key:{
							 key1:"idealBurnUPLine",
							 key2:"burnUpSprPoint"
						 },
						 keyNm:{
							 keyNm1:"idealBurnUPLine",
							 keyNm2:"Actual burnUpSprPoint"
						 },
						 //차트 타입
						 chartType:"line",
						 dataType: "local"
					}
				},
				fill:{
					type:false
				},
				chart:{
					//라인 색상
					colors: ["#586272", "#1cac81"],
					title: {
						text: "번업차트",
						align: "center",
					},
					stroke: {
				          curve: 'straight'
				    },
				    markers: {
				          size: 1
				    },
				    grid: {
				          borderColor: '#e7e7e7',
				          row: {
				            colors: ['#f3f3f3', 'transparent'], 
				            opacity: 0.5
				          },
				    },
				    animations:{
						enabled:false
					},
				    dataLabels:{
				    	enabled:true,
				    	formatter:function(val, opts){
				    		var valIndex = new Date(opts.ctx.data.twoDSeriesX[opts.dataPointIndex]).format("MM-dd");
				    		var xlabelList = opts.w.globals.labels.map(function(x){return new Date(x).format("MM-dd")});
				    		//해당 데이터가 x라벨에 존재할 경우 표출 아니면 미표출
				    		if(xlabelList.includes(valIndex)){
				    			if($.osl.isNull(val)){
				    				return "";
				    			}
				    			return val;
				    		}else{
					    		return "";
				    		} 
				    	}
				    },
					xaxis: {
						type: 'datetime',
				        labels: {
				        	hideOverlappingLabels :true,
				            formatter: function(value){
				            	return new Date(value).format("MM-dd");
				            }
				        },
				        tickAmount: '10',
		        	},
					yaxis: {
						show:true
		        	},
		        	toolbar:{
		        		tools:{
		        			pan:false
		        		}
		        	},
		        	grid:{
		        		show:true
		        	}
				},
				callback:{
					//차트가 작성 후 실행
					initComplete: function(chartContext, config){
						$(".apexcharts-zoomout-icon").addClass("kt-margin-0");
						$(".apexcharts-reset-icon").addClass("kt-margin-0");
						$(".apexcharts-toolbar").addClass("kt-margin-10");
						$(".apexcharts-toolbar").attr("style", "top:-20px; right: 10px;");
						$(".apexcharts-toolbar").removeAttr("style[padding]");
					}
				}
			});
		 }
 	//번다운 차트 그리기
 	var drawBurnDownChart = function(dateRange){
 		 var chart = $.osl.chart.setting("apex","burnDownChart",{
 			//차트 데이터 설정
				data:{										
					param:{
						dataArr: dateRange,	
						 //x축 키값
						 xKey:"time",
						 key:{
							 key1:"idealBurnDownLine",
							 key2:"burnDownSprPoint"
						 },
						 keyNm:{
							 keyNm1:"이상적인 번다운라인",
							 keyNm2:"실제 번다운라인"
						 },
						 //차트 타입
						 chartType:"line",
						 dataType: "local"
					}
				},
				fill:{
					type:false
				},
				chart:{
					//라인 색상
					colors: ["#ffb822","#840ad9"],
					title: {
						text: "번다운차트",
						align: "center",
					},
					stroke: {
				          curve: 'straight'
				    },
				    markers: {
				          size: 1
			        },
			        animations:{
						enabled:false
					},
				    dataLabels:{
				    	enabled:true,
				    	formatter:function(val, opts){
				    		var valIndex = new Date(opts.ctx.data.twoDSeriesX[opts.dataPointIndex]).format("MM-dd");
				    		var xlabelList = opts.w.globals.labels.map(function(x){return new Date(x).format("MM-dd")});
				    		//해당 데이터가 x라벨에 존재할 경우 표출 아니면 미표출
				    		if(xlabelList.includes(valIndex)){
				    			if($.osl.isNull(val)){
				    				return "";
				    			}
				    			return val;
				    		}else{
					    		return "";
				    		} 
				    	}
				    },
				    grid: {
				          borderColor: '#e7e7e7',
				          row: {
				            colors: ['#f3f3f3', 'transparent'], 
				            opacity: 0.5
				          },
				    },
					xaxis: {
				        type: 'datetime',
				        //출력 형태
				        labels: {
				        	hideOverlappingLabels :true,
				            formatter: function(value){
				            	return new Date(value).format("MM-dd");
				            }
				        },
				        //x축 몇개를 표시할 것인지
				        tickAmount: '10',
				        //중간에 점찍기
				        tickPlacement: 'between',
		        	},
					yaxis: {
						show:true
		        	},
		        	toolbar:{
		        		tools:{
		        			pan:false
		        		}
		        	},
		        	grid:{
		        		show:true
		        	}
				},
				callback:{
					//차트가 작성 후 실행
					initComplete: function(chartContext, config){
						$(".apexcharts-zoomout-icon").addClass("kt-margin-0");
						$(".apexcharts-reset-icon").addClass("kt-margin-0");
						$(".apexcharts-toolbar").addClass("kt-margin-10");
						$(".apexcharts-toolbar").attr("style", "top:-20px; right: 10px;");
						$(".apexcharts-toolbar").removeAttr("style[padding]");
					}
				}
			});
		 }
 	//벨로시티 차트 그리기
 	var drawVelocityChart = function(){
 		var chart = $.osl.chart.setting("apex","velocityChart",{
 			data:{
				//ajax 조회 url
				url: "<c:url value='/spr/spr1000/spr1000/selectSpr1000VelocityChartInfoAjax.do'/>",
				//파라미터
				param:{
					 data: paramSprId,
					 totalSprPoint: totalSprPoint,
					 endSprPoint: endSprPoint,
					 //차트 데이터 키값
					 key: {
						 key1: "sprPoint",
						 key2: "commitSprPoint",
						 key3: "actualVelocity",
						 key4: "commitVelocity",
					 },
					 //차트 데이터 키 명칭
					 keyNm:{
						 keyNm1: "실제 완료 스토리포인트",
						 keyNm2: "약속된 완료 스토리포인트",
						 keyNm3: "실제 진행 속도",
						 keyNm4: "약속된 진행 속도",
					 },
					 keyType:{
						 keyType1:"bar",
						 keyType2:"bar",
						 keyType3:"line",
						 keyType4:"line"
					 }
					 ,
					 //x축 키값
					 xKey:"term",
					 //차트 타입
					 chartType:"mix"
				 },
				 type: "remote"
			},
			chart:{
				title: {
					text: "벨로시티 차트",
					align: "center",
				},
				//색상
				colors: ["#ffb822","#840ad9", "#ffb822","#840ad9"],
			    yaxis: {
					show:true,
					min:0
	        	},
				stroke: {
			    	width: [1, 1, 1, 1],
			        curve: 'straight',
			        dashArray: [0, 0, 5, 5]
			    },
			    animations:{
					enabled:false
				},
			},
			callback:{
				//차트가 작성 후 실행
				initComplete: function(chartContext, config){
					$(".apexcharts-zoomout-icon").addClass("kt-margin-0");
					$(".apexcharts-reset-icon").addClass("kt-margin-0");
					$(".apexcharts-toolbar").addClass("kt-margin-10");
					$(".apexcharts-toolbar").attr("style", "top:-20px; right: 10px;");
					$(".apexcharts-toolbar").removeAttr("style[padding]");
					$(".apexcharts-menu-item").addClass("osl-min-width-70");
				}
			}
		});
	}
 	
 	//차트 데이터 정제
 	var getDataRangeData = function(sttDt, endDT, type, data){
 		//이상적인 번업라인 데이터 만들기
 		
 		//누적 스토리포인트 날짜:스토리포인트 형태로 변환
 		var sprPoint = [];
 		$.each(data, function(index, value){
 			var _series = {};
 			_series[value.reqEdDtm] = value.cumSprPoint;
 			sprPoint.push(_series);
 		});
 		
 		//시작일자와 종료일자 사이의 날짜를 일별로 자르기.
 		if(type=='1'){
 			var resDay = [];
	 	 	var stDay = new Date(sttDt);
	 	   	var edDay = new Date(endDT);    	
	 	  	while(stDay.getTime() <= edDay.getTime()){
	 	  			var ideal = 0;
	 	  			var _mon = (stDay.getMonth()+1);
	 	  			_mon = _mon < 10 ? '0'+_mon : _mon;
	 	  			var _day = stDay.getDate();
	 	  			_day = _day < 10 ? '0'+_day : _day;
	 	  			var _time = stDay.getFullYear() + '-' + _mon + '-' +  _day;
	 	  			if(_time == data.reqEdDtm){
	 	  				resDay.push({"time":stDay.getFullYear() + '-' + _mon + '-' +  _day})
	 	  			}else{  
		 	   		resDay.push({"time":stDay.getFullYear() + '-' + _mon + '-' +  _day});
	 	  			
	 	  			}
	 	   			stDay.setDate(stDay.getDate() + 1);
	 	   			ideal = ideal + 10
	 	   	}
	 	//주별로
 		}else if(type=='2'){
 			
 		}
 		//이상적인 번업라인 데이터 작성
 		//일수
 		var length = resDay.length
 		//전체 스토리포인트 총합 가져와서 / 일수로 나누기
 		var step = totalSprPoint / (length-1)
 		//총 길이가 2보다 작을 때
 		var start = 0;
 		$.each(resDay, function(index, value){
 			//바로종료할경우
	 		if(length == 1){
	 			value['idealBurnUPLine'] = totalSprPoint;
	 		//2일만에 종료할경우
	 		}else if(length == 2){
	 			value['idealBurnUPLine'] = start;
	 			start += totalSprPoint;
	 		//나머지
	 		}else{
	 			value['idealBurnUPLine'] = start.toFixed(1);
	 			start += step;
	 		}
 		})
 		//이상적인 다운라인 데이터 작성
 		//일수
 		var end = totalSprPoint;
 		$.each(resDay, function(index, value){
 			//바로종료할경우
	 		if(length == 1){
	 			value['idealBurnDownLine'] = totalSprPoint;
	 		//2일만에 종료할경우
	 		}else if(length == 2){
	 			value['idealBurnDownLine'] = end;
	 			end -= totalSprPoint;
	 		//나머지
	 		}else{
	 			value['idealBurnDownLine'] = end.toFixed(1);
	 			end -= step	
	 		}
 		})
 		//오늘 날짜
 		var today = new Date();
 		//번업 스토리포인트 데이터 작성
 		for(var dayIndex = 0; dayIndex < resDay.length; dayIndex++){
 			var match = false;
 			//오늘 날짜보다 이후의 날짜는  추가하지않음.
 			var gap = new Date(resDay[dayIndex].time).getTime() - today.getTime()
 			if(gap < 0){
	 			for(var dataIndex = 0 ; dataIndex < data.length ; dataIndex ++){
	 				if(resDay[dayIndex].time == data[dataIndex].reqEdDtm){
	 					match = true;
	 					//매치할 경우 가져온 데이터에서 할당한다.
	 					resDay[dayIndex]['burnUpSprPoint'] = data[dataIndex].cumSprPoint
	 					resDay[dayIndex]['burnDownSprPoint'] = totalSprPoint - data[dataIndex].cumSprPoint
	 					break;
	 				}
	 			}
	 			//매치하지 않을 경우
	 			if(!match){
	 				//처음 시작은 0으로
	 				if(dayIndex == 0){
	 					resDay[dayIndex]['burnUpSprPoint'] = 0;
	 					resDay[dayIndex]['burnDownSprPoint'] = totalSprPoint;
	 				//매치하지 않을 경우 전의 sprPoint를 가져와서 할당한다.
	 				}else{
		 				resDay[dayIndex]['burnUpSprPoint'] = resDay[dayIndex - 1]['burnUpSprPoint']; 
		 				resDay[dayIndex]['burnDownSprPoint'] = resDay[dayIndex - 1]['burnDownSprPoint']; 
	 				}
	 			}
 			}
 		}
 	   	return resDay;
 	}
 	
	return {
        // public functions
        init: function() {
        	documentSetting();
        }
        
    };
}();

$.osl.ready(function(){
	OSLSpr1004Popup.init();
});
</script>

