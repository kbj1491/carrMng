<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Career Manage</title>
    
    <!-- cssSrc -->
	
   <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- bootstrap-datetimepicker -->
    <link href="../vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

  </head>
    
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      <div class="right_col">
            <div class="page-title">
              <div class="title_left">
                <h3><p align="center"><b>사원 추가 </b></p></h3><br>
              </div>
                  <div class="x_content">
                    <form class="form-horizontal form-label-left" id="cform" action="/served/chkUser.do" method="post">
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name" >사원명<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="seq">등록번호<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="seq" name="seq" required="required" class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="dept">부서<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="dept" name="dept" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="task">담당업무<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="task" name="task" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="spot">직위<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="spot" name="spot" required="required"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="task_start_date">입사일 <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
							<div class='input-group date' id='myDatepicker2'>
								<input id="task_start_date" class="form-control col-md-7 col-xs-12"
									name="task_start_date" required="required" type="text">
									<span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
							</div>
						</div>

						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="task_end_date">퇴직일 
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class='input-group date' id='myDatepicker1'>
								<input id="task_end_date" class="form-control col-md-7 col-xs-12"
									name="task_end_date" required="required" type="text">
									<span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>	
							</div>
						</div>
                      <div class="ln_solid"></div>
                      <div class="form-group" style="display: flex; justify-content: center">
                          <button type="button" class="btn btn-primary" onclick="window.close();">취소하기</button>
                          <button id="send" type="button" class="btn btn-success">등록하기</button>
                      </div>
                     </form>
                    </div>
                    </div>
        </div>
        <!-- /page content -->
      </div>
    </div>
	<!-- scriptSrc -->
	
  <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
     <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    
    <!-- bootstrap-datetimepicker -->    
    <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.js"></script>
	<script type="text/javascript">
			$('#send').click(function(){
				if(!$('#name').val()||!$('#seq').val()){
					alert("이름과 회원번호를 채워주세요.");
					return false;
				}
				var $form = $('#cform');
				$.ajax({
					url:$form.attr('action'),
					type:$form.attr('method'),
					data:$form.serialize(),
					timeout:1000,
					beforeSend:function(){
						$('#send').attr('disable','true');
					},
					complete:function(){
						$('#send').attr('disable','false');
					},
					success:function(data){
						if(data==false){
							alert('일치하는 회원이 존재하지 않습니다.\n아이디와 회원번호를 확인하세요.');								
						}else if(data==true){
							window.close();
							var servedVO = new Object();
							servedVO.user_seq=$('#seq').val();
							servedVO.userName=$('#name').val();
							servedVO.dept=$('#dept').val();
							servedVO.task=$('#task').val();
							servedVO.spot=$('#spot').val();
							servedVO.task_start_date=$('#task_start_date').val();
							servedVO.task_end_date=$('#task_end_date').val();
							opener.parent.childPop(servedVO);
							
						}
					},
					error:function(error){
						alert('통신중 에러발생 회원번호는 숫자만 가능합니다.');
					}
				})
			
			});
			$(document).ready(function() {
				$('#myDatepicker2').datetimepicker({
			        format: 'YYYY/MM/DD'
			    });
				$('#myDatepicker1').datetimepicker({
			        format: 'YYYY/MM/DD'
			    });
			});
	</script>

  </body>
</html>
