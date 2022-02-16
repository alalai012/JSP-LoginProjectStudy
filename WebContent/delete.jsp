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
		alert("회원 탈퇴 되었습니다.");
		<%session.invalidate();%>
		document.location.href="login.jsp";
	</script>
<%
	}else{ 	
%>
	<script language="javascript">
		alert("회원탈퇴에 오류가 생겼습니다.");
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