<%@page import="com.javalec.ex.MemberDto"%>
<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getMember(id);
	
	int ri = dao.deleteMember(dto);
	/* 	dao.deleteMember(id); */
	if(ri == 1){
%>
	<script language="javascript">
		alert("ȸ�� Ż�� �Ǿ����ϴ�.");
		<%session.invalidate();%>
		document.location.href="login.jsp";
	</script>
<%
	}else{ 	
%>
	<script language="javascript">
		alert("ȸ��Ż�� ������ ������ϴ�.");
		history.go(-2);
	</script>
<%}%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>