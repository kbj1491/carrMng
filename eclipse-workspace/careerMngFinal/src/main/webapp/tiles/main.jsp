<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="login-root">
<head>
<link rel="stylesheet" href="../view/css/common.ui.css">
<link rel="stylesheet" href="../view/css/login.ui.min.css">
<link href='https://cdn.rawgit.com/theeluwin/NotoSansKR-Hestia/master/stylesheets/NotoSansKR-Hestia.css' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
    <div class="wrap">
        <section class="login clear-fixed">
            <div class="col01">	
            <tiles:insertAttribute name="col01" />
			</div>
			<div class="col02">
            <tiles:insertAttribute name="col02" />            
            </div>
        </section>
    </div> 
    
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
     <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
</body>
</html>