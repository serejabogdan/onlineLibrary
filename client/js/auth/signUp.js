console.log(inputControls);

submit.onclick = () => {
    const get = {
        nickname: inputControls[0].value,
        email: `${inputControls[1].value}@${inputControls[2].value}`,
        phone: inputControls[3].value,
        password: inputControls[4].value
    };
    fetch('../../php/posts/registration.php', {method: 'POST', body: JSON.stringify(get)})
        .then(response => response.text())
        .then(item => {
            console.log(item);
            if(item) {
                localStorage.setItem('user', `${inputControls[0].value}@${inputControls[1].value}`);
                console.log('da');
                document.location.href = "profile.html";
            } else {
                console.log('net');
                localStorage.removeItem('user');
            }
        });
};