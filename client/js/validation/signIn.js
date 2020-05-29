const emailName = document.querySelector('#email-name');
const emailDomen = document.querySelector('#email-domen');;
const password = document.querySelector('#password');

const emailNameWarning = document.querySelector('.email-name-warning');
const emailDomenWarning = document.querySelector('.email-domen-warning');
const passwordRequiredWarning = document.querySelector('.password-required-warning');
const passwordLengthWarning = document.querySelector('.password-length-warning');

emailName.addEventListener('blur', (e) => {
    if(!e.target.value) {
        emailNameWarning.style.display = 'block';
    } else {
        emailNameWarning.style.display = 'none';
        buttonDisabled();
    }
});

emailDomen.addEventListener('blur', (e) => {
    if(!e.target.value) {
        emailDomenWarning.style.display = 'block';
    } else {
        emailDomenWarning.style.display = 'none';
        buttonDisabled();
    }
});

password.addEventListener('blur', (e) => {
    if(!e.target.value) {
        passwordRequiredWarning.style.display = 'block';
    } else {
        passwordRequiredWarning.style.display = 'none';
        buttonDisabled();
    }
});

password.addEventListener('input', (e) => {
    if (e.target.value.length <= 6) {
        passwordLengthWarning.style.display = 'block';
    } else {
        passwordLengthWarning.style.display = 'none';
        buttonDisabled();
    }
});

const warnings = document.querySelectorAll('.warning');

for (let warning of warnings) {
    warning.style.display = 'none';
}

const inputControls = document.querySelectorAll('input');
const submit = document.querySelector('.submit');
function buttonDisabled() {
    for (let inputControl of inputControls) {
        if (!inputControl.value || password.value.length <= 6) {
            return;
        }
    }
    submit.disabled = false;
}