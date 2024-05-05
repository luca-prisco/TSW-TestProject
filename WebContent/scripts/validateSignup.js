/**
 * 
 */
const nameOrLastnamePattern = /^[A-Za-z]+$/;
const emailPattern = /^\S+@\S+\.\S+$/;
const phonePattern = /^([0-9]{3}-[0-9]{7})$/;
let count = 1;
const nameErrorMessage = "A valid name should contain only letters";
const lastnameErrorMessage = "A valid lastname should contain only letters";
const emailErrorMessage = "A valid email should be in the form username@domain.ext";
const phoneErrorMessage = "A valid number should be in the form ###-#######";

function validate() {
	let valid = true;
	let form = document.getElementById("formSignup");

	let spanName = document.getElementById("errorName");
	if (!validateFormElem(form.firstname, nameOrLastnamePattern, spanName, nameErrorMessage)) {
		valid = false;
	}
	let spanLastname = document.getElementById("errorLastname");
	if (!validateFormElem(form.lastname, nameOrLastnamePattern, spanLastname, lastnameErrorMessage)) {
		valid = false;
	}
	let spanEmail = document.getElementById("errorEmail");
	if (!validateFormElem(form.email, emailPattern, spanEmail, emailErrorMessage)) {
		valid = false;
	}

	let spanPhone = document.getElementById("errorPhone");
	if (!validateFormElem(form.numeroTel, phonePattern, spanPhone, phoneErrorMessage)) {
		valid = false;
	}
	return valid;
}



function validateFormElem(formElem, pattern, span, message) {
	if (formElem.value.match(pattern)) {
		formElem.classList.remove("error");
		span.style.color = "black";
		span.innerHTML = "";
		return true;
	}
	formElem.classList.add("error");
	span.innerHTML = message;
	span.style.color = "red";
	span.style.fontSize = "13px";
	return false; 
}