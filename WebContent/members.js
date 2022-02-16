/**
 reg_frm : 회원가입 폼 이름
 */

function infoConfirm() {
	if(document.reg_frm.id.value.length == 0) {
		//폼태그 이름.name속성.해당 값
		alert("아이디는 필수사항입니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 사항입니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.eMail.value.length == 0) {
		alert("이메일을 입력해주세요.");
		reg_frm.eMail.focus();
		return;
	}

/*
위 모든 조건을 만족해야 중간에 return 하지 않고
submit이 동작함. -> 폼태그 action에 따라 joinOK.jsp로 이동*/
	document.reg_frm.submit();
}

function updateInfoConfirm() {
	if(document.reg_frm.pw.value == "") {
		alert("변경비밀번호를 입력해주세요.");
		document.reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("변경비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.eMail.value.length == 0) {
		alert("변경이메일을 입력해주세요.");
		reg_frm.eMail.focus();
		return;
	}
	
	document.reg_frm.submit();
	
}
