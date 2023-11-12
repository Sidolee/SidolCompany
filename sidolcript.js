/**
 *  여기는 이시돌이 만든 sidolcript.js 인 것이다.
 */
 
 $(function(){
 
 
 	// [회원가입 페이지] joinMember.jsp - 아이디 중복확인 버튼 클릭 시.
 	$('#idCheck').click(function(){
 		// alert('으앙!@');
 		alert($('#M_ID').val());
 		
 		$.ajax({
 			type	: 'get',
 			data	: {"M_ID" : $('#M_ID').val()},
 			url		: '/sidol1/idCheck.do',
 			success	: function(result){
 							console.log("결과는????? : " + result)
 							
 							 if(result == '1'){
 							 	alert('이미 사용중인 아이디입니다'); }
 							 else {
 							 	alert('사용 가능한 아이디입니다');
 							 }
 			 },
 			error	: function(err){alert('작업 그 자체의 실패');}
 		
 		}); // end of ajax
 		
 	}); // end of 회원가입-아이디 중복확인
 	
 	
 	// [계좌관리 페이지] 기본적으로 계좌정보 다 불러오는 함수
// 	function getMyAccount(){
// 		$.ajax({
// 			type	: 'get',
// 			url		: '/sidol1/getMyAccount.do',
// 			data	: {M_ID : $('#accountUserId').val()},
// 			success	: function(result){
// 							console.log(result);
// 							var cashItem = $('#getMyAccount');
// 			},
// 			error	: function(){
//			}
// 		});
// 	}
 	
 	// [계좌관리 페이지] mypageaccount.jsp - 계좌 수정하기 버튼 클릭 시
 	$('#updateBank').click(function(){
 		//alert('ㅎㅇ');
 		//alert($('#updateBankName').val() + '/' + $('#updateAccountCode').val());
 		var bank 	= $('#updateBankName').val();
 		var account = $('#updateAccountCode').val();	
 		var params = { M_ID : $('#M_ID').val(),
 						BANK : bank,
 						ACCOUNT : account
 					};
	
 		$.ajax({
 			type	: 'post',
 			data	: params,
 			url		: '/sidol1/updateMyAccount.do',
 			success	: function(result){
 			document.location.reload();
 				alert('성공적으로 변경되었습니다');
 			},
 			error	: function(err){
 			alert('계좌정보가 수정에 실패했습니다');
 			console.log(err);
 			}
 		}); // end of ajax
 	}); // end of 계좌관리 - 계좌 수정하기
 	
 	// [계좌관리 페이지] mypageaccount.jsp - 충전하기 클릭 시
 	$('#chargeAccountButton').click(function(){
 			var CASH = 	$('#chargeMoney').val();
 			var exCash = $('#totalMoney').value;
 			var params = {M_ID : $('#M_ID').val(),
 							CASH : $('#chargeMoney').val()}
				
 							
 			$.ajax({
 				type	: 'post',
 				data	: params,
 				url		: '/sidol1/chargeAccount.do',
 				success	: function(){
 					alert('충전되었습니다');
 					document.location.reload();
 					
 				},
 				error	: function(){}		
 			}); // end of ajax
 	});
 	
 	
 	
 	// [경매 상품 페이지] bid_Pc.jsp 에서 입찰 버튼 클릭 시
 	$('#joinAuctionButton').click(function(){

	// 1. 그 상품이 경매 진행중인 상품인가?
	// 경매상태 => strong 태그 : auctionCon1
	
	// 2. 그 상품의 참여 제한 인원이 아직 여유가 있는가
	// howManyPeople (참여인원수) / limitPeople(인원제한)
	
	// 3. 내가 파는 상품이 아닐 것.
	// 본인 : $('#A_NUM').val() / 
	
	// 4. 내가 부른 가격이 내 계좌 한도에 맞는가
	// 5. 그 상품의 현재 호가보다 더 높게 주문하였는거
	// 6. 만약 내가 지정가에 해당하는 가격을 불럿다면 경매는 종료
	
	var exPrice = parseInt($('#exPrice').val());		// 현재 최고가격
 	
 	var ING_COST =  parseInt($('#ING_COST').val());		// 내가 제시한 금액
 	
 	var compareCash = parseInt($('#compareCash').val());// 내 페이머니 잔액
 		
	var quickPrice = parseInt($('#quickPriceCalled').val());
	
	var params = {	A_NUM	 : $('#A_NUM').val(),
 					ING_COST : parseInt($('#ING_COST').val()),
 					ING_BUYER: $('#ING_BUYER').val()
 					};
	if($('#auctionCon1').val()!= '경매중'){
		// 경매가 진행중이 아니야.
		alert('진행중인 경매가 아닙니다');
	} else if(parseInt($('#howManyPeople').val()) == parseInt($('#limitPeople').val())){
		// 참여자 수 초과
		alert('참여제한 인원을 초과하였습니다');
	} else if($('#whoIsSeller').val() == $('#ING_BUYER').val()){
		alert('본인이 등록한 상품에는 입찰할 수 없습니다');
	} else{
		if(compareCash <ING_COST){
			// 내가 부른 가격에 내 계좌 한도를 넘었음
			alert('페이머니 잔액을 초과하였습니다');
		} else if(exPrice >= ING_COST){
			// 호가와 같거나 더 낮은 금액 제시
			alert('현재 최고 호가보다 더 큰 금액을 제시해주세요');
		} else if(quickPrice <= ING_COST){
			// 지정가와 같거나 더 큰 가격을 불렀음.
			$.ajax({
				type	: 'get',
				data	: params,
				url		: '/sidol1/finishedByQuickPrice.do',
				success	: function(){
					document.location.reload();
					alert('지정가에 도달하여 입찰에 성공하였습니다!'+ '\n' + '마이페이지에서 배송정보를 입력해주세요');
					
				},
				error	: function(){
					alert('다시 시도해주십시오');
					document.location.reload();
				}
			
			}); // end of ajax
		} // end of 지정가 입찰
		
		
		
		else{
			// 그냥 정상적인 가격을 불렀음.
			//alert('그냥 가격 부름');
			

			$.ajax({
 				type	: 'get',
 				data	: params,
 				url		: '/sidol1/joinAuction.do',
 				success : function(result){
 					alert('입찰에 성공하였습니다');
 					//$('#funcu').text(('현재가 : ' + $('#ING_COST').val() +' 원'));
 					document.location.reload();
 				},
 				error	: function(){
 					alert('에러가 발생했습니다. 네트워크 환경을 확인해주세요');
 					document.location.reload();
 				}
		
 			}); // end of ajax
			
		} // end of 정상가 입찰
	} // end of default 조건 통과








 	}); // end of bid_Pc.jsp 에서 입찰 버튼 클릭
 	
 	
 	
 	// 관리자 info.do 에서 회원등급 변경하기 버튼 클릭 시 
 	$('#changeGradeButton').click(function(){
 		// alert($('#M_ID').val() +'/' + $('#M_GRADE').val());
 		var params = {M_ID : $('#M_ID').val(), 
 						M_GRADE : $('#M_GRADE').val()}
 		
 		$.ajax({
 			type	: 'get',
 			data	: params,
 			url		: '/sidol1/changeGrade.do',
 			success	: function(){
 				$('#tlqkf_access').val($('#M_GRADE').val());
 				alert('등급이 변경되었습니다');
 				
 			},
 			error	: function(){
 				alert('실패다');
 			}
 		
 		
 		}); // end of ajax				
 		
 	}); // end of 회원등급 변경 버튼 클릭 
 	
 	// 관리자 페이지 - 경매관리 A_CONDITION 변경하기 
 	$('#change_A_CONDITION').click(function(){
 		//alert('스크럼 마스터 갱장하다');
 		//$('#changedCondition').text('갱장해!');
 		// alert(changedType);
 		var changedType= {A_CONDITION : $('#modifyConditionTag').val(),
 							A_NUM		: $('#A_NUM').val(),
 							ING_COST : $('#stopCost').val(),
 							ING_BUYER : $('#stopBuyer').val()
 						}; 
 		
 		$.ajax({
 			type	: 'get',
 			data	: changedType,
 			url		: '/sidol1/changeAcon.do',
 			success	: function(){
 				//$('#changedCondition').text($('#modifyConditionTag').val());
 				alert('변경되었습니다');
 				document.location.reload();
 			},
 			error	: function(){alert('응 실패 ~!')}
 			
 		}); // end of ajax
 		
 	}); // 관리자 페이지 - 경매관리 A_CONDITION 변경하기 끝!
 	
 	// 관리자 페이지 - 경매관리 - 상품 보관 위치 반영
 	$('#changeStorage').click(function(){
 		//alert($('#S_NUM').val());
 		// 그 상품의 info 에서 S_NUM 컬럼에 해당하는 값을 넣을거야. 그리고 A_CONDITION => 상품 접수 완료
 		var parameter = {A_NUM : $('#A_NUM').val(), S_NUM : $('#S_NUM').val()};
 		
 		$.ajax({
 			type	: 'get',
 			data	: parameter,
 			url		: '/sidol1/updateStorage.do',
 			success	: function(){
 				document.location.reload();
 			},
 			error	: function(){
 				alert('작전 실패 !');
 			}
 		}); // end of ajax 
 		
 	}); // 관리자 페이지 - 경매관리 - 상품 보관 위치 반영 끝
 	
 	// 관리자페이지 - 배송 부분 수정 버튼 클릭
 	$('#deliveryInfoButton').click(function(){
 	//	//alert($('#A_NUM').val());
 		// 시발까지 띄움 -> 기능 안함.
 		
 		var parameter = {DELIVERY_COMPANY: $('#DELIVERY_COMPANY').val(), 
 						DELIVERY_NUM: $('#DELIVERY_NUM').val(),
 						DELIVERY_DATE: $('#DELIVERY_DATE').val(), 
 						DELIVERY_ADDR: $('#DELIVERY_ADDR').val(), 
 						A_NUM: $('#A_NUM').val() };
 						
		
 		$.ajax({
 			type	: 'get',
 			data	: parameter,
 			url		: '/sidol1/updateDeliveryInfo.do',
 		success	: function(){
 			alert('접수완료'); 
 			
 		},
 			error	: function(){
 				alert('아 에러,,');
 			}
 		}); // end of ajax				 
 	
 	}); // end of 관리자페이지 - 배송 부분 수정 버튼 클릭
 	
 	// 관리자 - 경매글 리스트에서 경매글 검색하기
 	$('#admin_searchItem_btn').click(function(){
 		var A_TITLE = $('#admin_search_key').val();
 		alert(A_TITLE);
 		
 		$.ajax({
 			//searchItem.do 를 응용
 			type	: 'get',
 			data	: A_TITLE,
 			url		: '/sidol1/searchItemByAdmin.do',
 			success	: function(){
 			
 			
 			
 			},
 			error	: function(){
 				alert('작업에 실패하였습니다');
 			}
 		});
 	}); // 경매글 검색하기 끝
 	
	
 	
 });