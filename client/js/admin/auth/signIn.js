submit.onclick = () => {
    const get = {
        email: `${inputControls[0].value}@${inputControls[1].value}`,
        password: `${inputControls[2].value}`,
        admin: 'admin'
    };
    fetch('../../php/posts/admin.auth.php', {method: 'POST', body: JSON.stringify(get)})
        .then(response => response.text())
        .then(item => {
            console.log(item);
            if(item) {
                localStorage.setItem('user', `${inputControls[0].value}@${inputControls[1].value}`);
                console.log('da');
                document.location.href = "addBookPanel.html";
            } else {
                console.log('net');
                localStorage.removeItem('user');
            }
        });
};