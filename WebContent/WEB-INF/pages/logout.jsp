<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

response.addHeader("Cache-Control",
"no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
response.addHeader("Pragma", "no-cache"); 
response.addDateHeader ("Expires", 0);

String e=(String)session.getAttribute("u_name");
if ((e=="")||(e==null)){
        
        response.sendRedirect("Login.html");
        }
else{
	session.invalidate();
	
	 response.sendRedirect("Login.html");
	}

%>
</body>
</html>