<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><tiles:getAsString name="title" /></title>
	
    <!-- cssSrc -->
	<tiles:insertAttribute name="cssSrc" />
	 <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
	 
  </head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <!-- left sideBar-->
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>Career Manage!!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="../view/images/img.jpg" alt="profile_pic" class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <h2>${UserImpo.name }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <tiles:insertAttribute name="userSidebar" />
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <tiles:insertAttribute name="menuFooter" />
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>
       <!-- /left sideBar-->
       
        <!-- top navigation -->
        <div class="top_nav">
          <tiles:insertAttribute name="userTopNav" />
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <tiles:insertAttribute name="userMainContents" />
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <tiles:insertAttribute name="contentFooter" />
        </footer>
        <!-- /footer content -->
      </div>
    </div>
	 
	<!-- scriptSrc -->
	<tiles:insertAttribute name="scriptSrc" />
     
	
	  <script>
      $(document).ready(function(){
      $(function(){
      	
      	var boardVO = {
      	    searchStr: "제목"
      	};

      	$( "#searchStr" ).autocomplete({ 
      		source: function(request, response) {
                  $.ajax({
                    url: "search_BusiName.do",
                    method: "POST",
                    type: "json",
          			data: { searchStr: request.term}, 						// --> @RequestParam("searchStr") String searchStr abc
                   	success: function (data) {
                         response($.map(data, function (item) {
                             return { label:item.busiName, value:item.busiName };
                         }))
                     },
                    error: function (e) {
    	                $("#result-div").text(e.responseText);
    	                console.log("ERROR : ", e);
      	            }
                  });
              },
             minLength: 2, 
      		select: function (event, ui) {
      	    }
      	});
      	
      });
      
      $("#searchBtn").on("click",function(){
    	  alert("검색 버튼"+$("#searchStr").val());
    	  $.ajax({
    		  url:"searchResult_BusiName.do",
    		  method:"POST",
    		  type:"json",
    		  data: {searchStr:$("#searchStr").val()},
    		  success:function(data){
    			  
    			  console.log(data);
    			  /* var val = "";
    			  for(var v in data) {
    			  val += v + " : " + data[v];
    			  }
    			  console.log("g"+val); */
    			  /*
    			  $.each(data, function( index, value ) {
                      console.log( index + " : " + value ); //Book.java 의 변수명을 써주면 된다.
                      for(i in value) {
                   	    console.log("no is " + [i] + ", value is " + value[i]);
                   	}
    			  });
    			  */
    			  
    			  $.each(data,function(index,value){
   				  var result = "";  
    				result += "<li>" +  data[index].comSeq + "</li>";
    				console.log("index" + data[index].comSeq);
    			  });
    		  }
    	  });
      })
      });
      /* 달력선택 */
       /* $('#businessStartDt').datetimepicker({
          format: 'YYYY-MM-DD'
       });
      $('#businessEndDt').datetimepicker({
         format: 'YYYY-MM-DD'
         
      }); */
      /* $('.date').datetimepicker({
         format: 'YYYY-MM-DD'
      });
       */
   </script>

  </body>
</html>