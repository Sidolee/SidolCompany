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
 				$('#updateBankName').text(bank);
 				$('#updateAccountCode').text(account);
 				//alert(bank + '/' + account);
 			},
 			error	: function(err){
 			alert('실패라네');
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
 				success	: function(result){
 					console.log(CASH + exCash);
 					
 				},
 				error	: function(){}		
 			}); // end of ajax
 	});
 	
 	
 	
 	// [경매 상품 페이지] bid_Pc.jsp 에서 입찰 버튼 클릭 시
 	$('#joinAuctionButton').click(function(){
 		var exPrice = parseInt($('#exPrice').val());
 		//alert(exPrice);
 		var ING_COST =  parseInt($('#ING_COST').val());
 		//alert(ING_COST);
 		var compareCash = parseInt($('#compareCash').val());
 		if(exPrice >= ING_COST) {
 			alert('현재 가격보다 더 큰 금액을 입찰해주세요');
 		}  else if( compareCash < ING_COST){
 			alert('현재 페이머니 잔액보다 더 큰 금액을 입력할 수 없습니다');
 		} else if ($('#ING_BUYER').val() ==  $('#whoSeller').val()) {
 			alert('본인 상품에는 입찰하실 수 없습니다');
 		}
 		else{
 			alert('입찰 신청 ~');
 				var params = {	A_NUM	 : $('#A_NUM').val(),
 								ING_COST : parseInt($('#ING_COST').val()),
 								ING_BUYER: $('#ING_BUYER').val()
 								} 			
 			$.ajax({
 				type	: 'get',
 				data	: params,
 				url		: '/sidol1/joinAuction.do',
 				success : function(result){
 					alert('성공꾸 result = ' + result);
 					$('#funcu').text(('현재가 : ' + $('#ING_COST').val() +' 원'));
 					
 				},
 				error	: function(){
 					alert('처리실패 : 멍청한 녀석그');
 				}
			
 			}); // end of ajax
 		} // end of else
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
 				alert('성공그~!');
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
 		// alert('tlqkf');
 		// 시발까지 띄움 -> 기능 안함.
 	
 	}); // end of 관리자페이지 - 배송 부분 수정 버튼 클릭
 	
	
 	
 });