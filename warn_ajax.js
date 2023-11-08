$(function(){
	
	$("#warnWrite").click(function(){
	
		var A_NUM = $("#A_NUM").val();
		var	W_CUSTOMER = $("#W_CUSTOMER").val();
		
		var params = {A_NUM, W_CUSTOMER}
		if (W_CUSTOMER == ""){
			alert("아이디 없음");
		}
		$.ajax({
 				type	: 'post',
 				data	: params,
 				url		: '/sidol1/bid_Write2.do',
 				success	: function(result){
 					if(result == '0'){
 					}else if (result == '1'){alert('이미 신고한 기록이 있습니다.');}
 				},
 				error	: function(err){console.log(err);}		
 			});

	});
	
});