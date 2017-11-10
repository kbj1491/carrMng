<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
 <!-- jQuery -->
<!-- jQuery -->
    <script src="/vendors/jquery/dist/jquery.min.js"></script>
     <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
    <!-- Bootstrap --> 
    <script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="/vendors/Flot/jquery.flot.js"></script>
    <script src="/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="/vendors/Flot/jquery.flot.time.js"></script>
    <script src="/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/vendors/moment/min/moment.min.js"></script>
    <script src="/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/build/js/custom.min.js"></script>
<script>

$(function(){
	
	var boardVO = {
	    searchStr: "제목"
	};
 

	$( "#searchStr" ).autocomplete({ 
		source: function(request, response) {
            $.ajax({
                url: "/carr/search_BusiName.do",
                method: "POST",
                type: "json",
    			data: { searchStr: request.term}, 						// --> @RequestParam("searchStr") String searchStr abc
               	//dataType: "json", 
               	//contentType: "application/json; charset=utf-8",
    			//data: JSON.stringify({ searchStr: request.term}), 	//--> @RequestBody String searchStr	{"searchStr":"목4"}
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
	    	//아이템 선택시 처리 코드
	    	/*log( ui.item ?
            "Selected: " + ui.item.value + " aka " + ui.item.id :
            "Nothing selected, input was " + this.value );
            */
	    }
	});
	
	
}) 
	
 
</script>
</head>
</body>
</html>