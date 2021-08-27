<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="resources/css/index.css">
<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
<link rel="stylesheet" type="text/css" href="resources/calendarTool/tui-calendar.css">
<link rel="stylesheet" type="text/css" href="resources/calendarTool/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/calendarTool/calendar.css">
</head>
<body>
	<div class="main-king">
	<%@ include file="../common/mainLeft.jsp"%>

		<!-- 오른쪽 내용 박스 -->
		<div class="main-right">
			<span id="renderRange" class="render-range"></span>
				
			<div>	
				<div id="cateNavi">
					<div class="color" style="background-color:#00a9ff; border-color: #00a9ff"></div> Company 
					<div class="color" style="background-color:#bbdc00; border-color: #bbdc00"></div> Team 
					<div class="color" style="background-color:#ff5583; border-color: #ff5583"></div> Personal</div>
				<div id="menu-navi" align="right">
					<button id="todayBtn">TODAY</button>
					<span class="moveBtn" id="prevBtn">&#60;</span>
					<span class="moveBtn" id="nextBtn">&#62;</span>
				</div>
			</div>
		
			<div id="calendar"></div>
		</div>
	</div>





	<!-- input 모달 -->
	<div class="modal fade" id="calendarInputModal" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="inputModalCenterTitle">일정 등록</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      
		<!-- 일정 등록 form 시작 -->
	      	<form action="insertCal.ca" id="insertCalendar" method="post">
			<!-- 캘린더 카테고리 고르기 -->
	      		<select name="calCate" id="calCate" class="cal_input">
	      			<option value=0>Company</option>
	      			<option value=1>Team</option>
	      			<option value=2>Personal</option>
	      		</select>      		
	      		<input type="checkbox" name="calAllDay" class="cal_input" value="Y"> All Day
	      		
	      		<br>
	      		
	      		
	      		<input type="text" name="calContent" id="calContent" class="cal_input" placeholder="일정">
	      		
	      		<br>
		      	
		      	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="startpicker-input" type="text" aria-label="Date" name="calStart">
		        	<span class="tui-ico-date"></span>
		        	<div id="startpicker-container" style="margin-left: -1px;"></div>
		    	</div>
		    	<span>_</span>
		    	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="endpicker-input" type="text" aria-label="Date" name="calEnd">
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





	<!-- 일정  update 모달 -->
	<div class="modal fade" id="calendarUpdateModal" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="updateModalLabel">일정 수정</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="updateCal.ca" id="updateCalendar" method="post">
				<input type="hidden" name="calNo" id="calNo">
	      		<select name="calCate" id="calUpdateCate" class="cal_input">
	      			<option value=0>Company</option>
	      			<option value=1>Team</option>
	      			<option value=2>Personal</option>
	      		</select>      		
	      		<input type="checkbox" name="calAllDay" class="cal_input" id="calUpdateAllDay" value="Y"> All Day
	      		
	      		<br>	      		
	      		
	      		<input type="text" name="calContent" id="calUpdateContent" class="cal_input" placeholder="일정">
	      		
	      		<br>
		      	
		      	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="startpicker-input-update" type="text" aria-label="Date" name="calStart">
		        	<span class="tui-ico-date"></span>
		        	<div id="startpicker-container-update" style="margin-left: -1px;"></div>
		    	</div>
		    	<span>_</span>
		    	<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
		        	<input id="endpicker-input-update" type="text" aria-label="Date" name="calEnd">
		        	<span class="tui-ico-date"></span>
		        	<div id="endpicker-container-update" style="margin-left: -1px;"></div>
		    	</div>			
				
	      	</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-primary" onclick="document.getElementById('updateCalendar').submit();">수정</button>
	      </div>
	    </div>
	  </div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://uicdn.toast.com/tui.code-snippet/v1.5.2/tui-code-snippet.min.js"></script>
<script src="https://uicdn.toast.com/tui.time-picker/v2.0.3/tui-time-picker.min.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/v4.0.3/tui-date-picker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chance/1.0.13/chance.min.js"></script>
<script src="resources/calendarTool/tui-calendar.js"></script>
<script src="resources/calendarTool/bootstrap.js"></script>
<script src="resources/calendarTool/calendar.js"></script>

<script type="text/javascript" class="code-js">

	// 캘린더 생성
	var cal = new tui.Calendar('#calendar', {
    	defaultView: 'month',
    	useCreationPopup: false,
    	useDetailPopup: true,
    	timezones: {
       		timezoneOffset: 540,
//         	displayLabel: 'GMT+09:00',
        	tooltip: 'Seoul'        	
        },
        template: {
           allday: function(schedule) {
                return getTimeTemplate(schedule, true);
            },
            time: function(schedule) {
                return getTimeTemplate(schedule, false);
            }
        }      
	});
	
	
	
	
	
	// Calendar 데이터 가져오기
	function selectCalendar() {
		$.ajax({
			url: 'selectCal.ca',
			dataType: "json",
			success: function(data) {
// 				console.log(data);
				
				for(var i in data) {								
					
					var calColor = CalendarList[data[i].calCate];
// 					console.log(calColor);
					var schedule = new ScheduleInfo();
					
					schedule.id = data[i].calNo;
					schedule.calendarId = data[i].calCate;
					schedule.title = data[i].calContent;
					schedule.isAllday = data[i].calAllDay == "Y" ? true : false;
					schedule.start = data[i].calStart;
					schedule.end = data[i].calEnd;
					schedule.category = schedule.isAllday ? 'allday' : 'time';
					schedule.isReadOnly = data[i].mNo != ${loginUser.mNo} ? true : false;
					schedule.color = calColor.color;
					schedule.bgColor = calColor.bgColor;
					schedule.dragBgColor = calColor.dragBgColor;
					schedule.borderColor = calColor.borderColor;				
					
					ScheduleList.push(schedule);
					
				}				
				
				cal.createSchedules(ScheduleList);
				
			},
			error: function(data) {
				console.log(data);
				console.log("fail");
			}
		});
// 		console.log(ScheduleList);	
	}
	
	
	
	
	
	cal.on({
		'beforeCreateSchedule': function(e) {
			console.log('beforeCreateSchedule', e);
	        // open a creation popup
				$('#calendarInputModal').modal('show');
	        	datePicker(e);
	        	
	        // then close guide element(blue box from dragging or clicking days)
	        e.guide.clearGuideElement();
	    },
        'beforeUpdateSchedule': function(e) {
            console.log('beforeUpdateSchedule', e);
            datePicker(e);            

            var schedule = e.schedule;
            
            $('#calendarUpdateModal').modal('show');
            $('#calNo').val(Number(schedule.id));
            $('#calUpdateCate').val(schedule.calendarId == "" ? 0 : schedule.calendarId);
            $('#calUpdateContent').val(schedule.title);
            
            if(schedule.isAllDay == true) {
            	$('#calUpdateAllDay').prop('checked', true);
            }
        },
        'beforeDeleteSchedule': function(e) {
        	console.log('beforeDeleteSchedule', e);
       		if(confirm("정말 삭제하시겠습니까?")) {
       		 $('#calNo').val(Number(e.schedule.id));
       			$('#updateCalendar').prop('action', 'deleteCal.ca').submit();
       		}
        }
	});		
	
</script>
</body>
</html>