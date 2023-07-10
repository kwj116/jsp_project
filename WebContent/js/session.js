const loginMenu = document.querySelector('#login');
const signUpMenu = document.querySelector('#signUp');
const logoutMenu = document.querySelector('#logout');
if ("${sessionScope.login}"=="loginComplete") {
	loginMenu.parentNode.removeChild(loginMenu);
	signUpMenu.parentNode.removeChild(signUpMenu);
	logoutMenu.style.display="inline";
}
else if("${sessionScope.login}" == "refuse"){
	console.log("${sessionScope.login}");
}
