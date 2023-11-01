/**
 * 
 */
 //
 document.addEventListener("DOMContentLoaded", function () {

 //[구매 데이터] 
	price_salesvolume_linechart();
	week_salesvolume_barchart(); 
	category_salesvolume_piechart(); 
	
//[방문 데이터]
	daily_visitor_linechart();
	weekly_visitor_linechart();

//[매출 데이터]
	gender_ratiosales_piechart();
	category_sales_barchart();
	monthly_sales_barchart();

//[고객 데이터] 
	customer_agegroup_linechart();
	gender_ratio_piechart();
	
});




//[구매 데이터] 가격대 판매량 
function price_salesvolume_linechart() {
   var data = {
    labels: ['1만원 이하', '1만원 ~ 10만원', '10만원 ~ 50만원', '50만원 ~ 100만원', '100만원 ~ 200만원', '200만원 이상'],
    datasets: [{
      label: '판매량',
      data: [165, 240, 1132, 133, 6, 12],
      fill: false,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.1
    }]
  };

  // 차트 옵션 설정
  var options = {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  };

  // Line Chart 생성
  var ctx = document.getElementById('price_salesvolume_linechart').getContext('2d');
  var lineChart = new Chart(ctx, {
    type: 'line',
    data: data,
    options: options
  });
}

//[구매 데이터] 요일 판매량 
function week_salesvolume_barchart(){

 const barChartData = {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
            label: 'Bar Chart',
            data: [35, 49, 20, 181, 156, 95, 50],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    };

    const barChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.querySelector('#week_salesvolume_barchart').getContext('2d');
    
    new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: barChartOptions
    });

}


//[구매 데이터] 카테고리 판매량 
function category_salesvolume_piechart(){
 const pieChartData = {
        labels: [
            '패션의류/잡화',
            '뷰티',
            '유아',
            '식품',
            '가전/디지털/자동차',
            '스포츠/레저/건강용품',
            '도서/음반/DVD',
            '완구/취미/문구',
        ],
        datasets: [{
            label: 'My First Dataset',
            data: [1200, 1250, 1100, 500, 300, 10, 333, 250],
            backgroundColor: [
                'rgb(255, 99, 132)',
                'rgb(54, 162, 235)',
                'rgb(255, 205, 86)',
                'rgb(54, 162, 135)',
                'rgb(54, 162, 135)',
                'rgb(54, 112, 235)',
                'rgb(54, 132, 235)',
                'rgb(154, 162, 235)'
            ],
            hoverOffset: 4
        }]
    };

    const pieChartOptions = {};

    const ctx = document.getElementById('category_salesvolume_piechart').getContext('2d');

    new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: pieChartOptions
    });
}


//[방문 데이터] 일간 방문자 데이터
function daily_visitor_linechart(){
	  const lineChartData = {
        labels: ['00~06', '06~09', '09~12', '12~15', '15~18', '18~21', '21~00'],
        datasets: [{
            label: '일간 방문자 데이터',
            data: [65, 359, 80, 181, 256, 55, 40],
            fill: false,
            borderColor: 'rgb(0, 0, 0)',
            tension: 0.1
        }]
    };

    const lineChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.getElementById('daily_visitor_linechart').getContext('2d');

    new Chart(ctx, {
        type: 'line',
        data: lineChartData,
        options: lineChartOptions
    });
	}
	
//[방문 데이터] 주간 방문자 데이터	
function weekly_visitor_linechart(){
	    const lineChartData = {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
            label: '주간 방문자 데이터',
            data: [65, 59, 80, 81, 56, 55, 40],
            fill: false,
            borderColor: 'rgb(0, 0, 255)',
            tension: 0.1
        }]
    };

    const lineChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.getElementById('weekly_visitor_linechart').getContext('2d');

    new Chart(ctx, {
        type: 'line',
        data: lineChartData,
        options: lineChartOptions
    });
    
	}
	
	
// [매출 데이터] 성비 매출
function gender_ratiosales_piechart(){
	   const pieChartData = {
        labels: ['남자', '여자'],
        datasets: [{
            label: 'My First Dataset',
            data: [100000000, 250000000],
            backgroundColor: ['rgb(54, 162, 235)', 'rgb(255, 99, 132)'],
            hoverOffset: 4
        }]
    };

    const pieChartOptions = {};

    const ctx = document.getElementById('gender_ratiosales_piechart').getContext('2d');

    new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: pieChartOptions
    });
	}



// [매출 데이터] 카테고리 매출
function category_sales_barchart(){
	 const barChartData = {
        labels: [
            '패션의류/잡화',
            '뷰티',
            '유아',
            '식품',
            '가전/디지털/자동차',
            '스포츠/레저/건강용품',
            '도서/음반/DVD',
            '완구/취미/문구'
        ],
        datasets: [{
            label: 'Bar Chart',
            data: [35, 49, 20, 81, 156, 95, 50, 111],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    };

    const barChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.getElementById('category_sales_barchart').getContext('2d');

    new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: barChartOptions
    });
	}
	
	
// [매출 데이터] 월별 매출
function monthly_sales_barchart(){
	  const barChartData = {
        labels: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
        datasets: [{
            label: 'Bar Chart',
            data: [35, 49, 20, 81, 156, 95, 50, 60, 800, 100, 120, 130],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    };

    const barChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.getElementById('monthly_sales_barchart').getContext('2d');

    new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: barChartOptions
    });
    
	}

	
//[고객 데이터] 고객 연령층 데이터
function customer_agegroup_linechart(){
	 const lineChartData = {
        labels: ['10~20', '20~30', '30~40', '40~50', '60대 이상'],
        datasets: [{
            label: '연령 통계',
            data: [65, 159, 180, 81, 56],
            fill: false,
            borderColor: 'rgb(0, 0, 255)',
            tension: 0.1
        }]
    };

    const lineChartOptions = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    const ctx = document.getElementById('customer_agegroup_linechart').getContext('2d');

    new Chart(ctx, {
        type: 'line',
        data: lineChartData,
        options: lineChartOptions
    });
		}
		

//[고객 데이터] 남녀 성비 데이터
function gender_ratio_piechart(){
	 const pieChartData = {
        labels: ['남자', '여자'],
        datasets: [{
            label: 'My First Dataset',
            data: [100000000, 110000000],
            backgroundColor: ['rgb(54, 162, 235)', 'rgb(255, 99, 132)'],
            hoverOffset: 4
        }]
    };

    const pieChartOptions = {};

    const ctx = document.getElementById('gender_ratio_piechart').getContext('2d');

    new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: pieChartOptions
    });
	}