<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax</title>
<script type="text/javascript">
	function loadXmlDoc() {
		var xmlHttp;
		if (window.xmlHttpRequest) {
			xmlHttp = new XmlHttpRequest();
		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
				document.getElementById("div1").innerHTML = xmlHttp.responseText;
			}
		}
		xmlHttp.open("GET", "ajax_info.txt?t=" + Math.random(), true);

		xmlHttp.send();
	}
</script>
</head>
<body>

	<div id="div1">
		<h2>使用Ajax修改内容</h2>
	</div>
	<button type="button" onclick="loadXmlDoc()">修改内容</button>
</body>
</html>