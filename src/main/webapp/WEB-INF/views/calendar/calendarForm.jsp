<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="resources/css/index.css">
<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
<link rel="stylesheet" type="text/css" href="calendarTool/tui-calendar.css">
<link rel="stylesheet" type="text/css" href="calendarTool/bootstrap.min.css">

<style>
	#calendar {
	    position: absolute;
	    left: 10px;
	    right: 10px;
	    bottom: 10px;
	    top: 100px;    
	}

	.main-right {position:relative;}  
	
  	.moveBtn{font-weight: bold; font-size: 15pt; border-style: none; background: none; margin:10px;}
 
	#todayBtn{font-weight: bold; background: none; border: 2px solid lightgrey;}
	
	#renderRange{font-size: 15pt;}
	
	#todayBtn:hover, .moveBtn:hover{cursor: pointer;}
	
	.tui-datepicker-input{margin: 0.7em;}
	
	.cal_input{margin: 0.7em; padding: 0.3em;}
	
	#calContetn{width:80%;}
	
	#calCate{width:50%;}	
	
</style>
</head>
<body>
	<div class="main-king">
	<%@ include file = "/index.jsp" %>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<span id="renderRange" class="render-range"></span>
			<div id="menu-navi" align="right">
				<button id="todayBtn">TODAY</button>
				<span class="moveBtn" id="prevBtn">&#60;</span>
				<span class="moveBtn" id="nextBtn">&#62;</span>
			</div>
		
			<div id="calendar"></div>
		</div>
	</div>



	<!-- input 모달 -->
	<div class="modal fade" id="calendalInputModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">일정 등록</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      
		<!-- 일정 등록 form 시작 -->
	      	<form action="" id="insertCalendar">
			<!-- 캘린더 카테고리 고르기 -->
	      		<select name="calCate" id="calCate" class="cal_input">
	      			<option value="office">Office</option>
	      			<option value="team">Team</option>
	      			<option value="personal">Personal</option>
	      		</select>      		
	      		<input type="checkbox" name="calAllday" class="cal_input"> All Day
	      		
	      		<br>
	      		
	      		
	      		<input type="text" name="calContent" id="calContetn" class="cal_input" placeholder="일정">
	      		
	      		<br>
		      	
		      	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="startpicker-input" type="text" aria-label="Date" name="calStart">
		        	<span class="tui-ico-date"></span>
		        	<div id="startpicker-container" style="margin-left: -1px;"></div>
		    	</div>
		    	<span>_</span>
		    	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="endpicker-input" type="text" aria-label="Date"  name="calEnd">
		        	<span class="tui-ico-date"></span>
		        	<div id="endpicker-container" style="margin-left: -1px;"></div>
		    	</div>			
				
	      	</form>
	      	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" onclick="document.getElementById('insertCalendar').submit();">등록</button>
	      </div>
	      
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">휴가서 제출</h5>
	      
	      </div>
	      <div class="modal-body">
	      
	     	 <!-- 휴가 등록 form 시작 -->
	      	<form action="" id="approvalVac">
	      	
	      	
	      	</form>
	      	
	      </div>
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-primary" onclick="document.getElementById('approvalVac').submit();">제출</button>
	      </div>
	    </div>
	  </div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://uicdn.toast.com/tui.code-snippet/v1.5.2/tui-code-snippet.min.js"></script>
<script src="https://uicdn.toast.com/tui.time-picker/v2.0.3/tui-time-picker.min.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/v4.0.3/tui-date-picker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/chance/1.0.13/chance.min.js"></script> -->
<script src="calendarTool/tui-calendar.js"></script>
<script src="calendarTool/bootstrap.js"></script>



<script type="text/javascript" class="code-js">

//	캘린더 생성
	var cal = new tui.Calendar('#calendar', {
    	defaultView: 'month',
    	useCreationPopup: false,
    	useDetailPopup: false,
    	timezones: {
       		timezoneOffset: 540,
        	// displayLabel: 'GMT+09:00',
        	tooltip: 'Seoul'        	
        }     
     
	});

	
// 	달력 오른쪽 상단 년/월 표시
	function setRenderRangeText() {
		var renderRange = document.getElementById('renderRange');
		var options = cal.getOptions();
		var viewName = cal.getViewName();
		var html = [];
		if (viewName === 'month' && (!options.month.visibleWeeksCount || options.month.visibleWeeksCount > 4)) {
			html.push(moment(cal.getDate().getTime()).format('YYYY.MM'));
		} 
			renderRange.innerHTML = html.join('');
		}
	
	setRenderRangeText();
	
	
	
	$('#todayBtn').on('click', function(){
		cal.today();
		setRenderRangeText();
	});

	$('#prevBtn').on('click', function(){
		cal.prev();
		setRenderRangeText();
	});

	$('#nextBtn').on('click', function(){
		cal.next();
		setRenderRangeText();
	});
	
	
	
	cal.on({
		'beforeCreateSchedule': function(e) {
			console.log('beforeCreateSchedule', e);
	        // open a creation popup
				$('#calendalInputModal').modal('show');
	        	datePicker(e);
			
	        // then close guide element(blue box from dragging or clicking days)
	        e.guide.clearGuideElement();
	    }
	});
		
// 	일정 등록 modal 설정
	var today = new Date();
	function datePicker(e) {
	    var picker = tui.DatePicker.createRangePicker({
	        startpicker: {
	            date: e.start._date,
	            input: '#startpicker-input',
	            container: '#startpicker-container',
	            format: 'yyyy-MM-dd HH:mm A'
	        }, 
	        endpicker: {
	            date: today,
	            input: '#endpicker-input',
	            container: '#endpicker-container',
	            format: 'yyyy-MM-dd HH:mm A'
	        },
	        timePicker: true	       
	    })
	};
	
</script>
</body>
</html>