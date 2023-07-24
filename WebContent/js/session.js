const loginMenu = document.querySelector('#login');
const signUpMenu = document.querySelector('#signUp');
const logoutMenu = document.querySelector('#logout');
const del_button = document.querySelector('.del_button');
if ("${sessionScope.login}"=="loginComplete") {
	loginMenu.parentNode.removeChild(loginMenu);
	signUpMenu.parentNode.removeChild(signUpMenu);
	logoutMenu.style.display="inline";
}
