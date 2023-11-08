$(function(){
	
	$("#addWishList").click(function(){
		
		var W_PRODUCT = $("#A_NUM").val();
		var	W_ID = $("#W_CUSTOMER").val();
		
		var params = { W_PRODUCT , W_ID }
		
		$.ajax({
 				type	: 'post',
 				data	: params,
 				url		: '/sidol1/addWishList.do',
 				success	: function(result){
 					if(result == '0'){
 						alert('찜하기 완료.');
 						document.location.reload();
 					}else if (result == '1')
 					{alert('이미 찜한 기록이 남아있습니다.');}
 				},
 				error	: function(err){console.log(err);}		
 			});

	});
	
	
	
});