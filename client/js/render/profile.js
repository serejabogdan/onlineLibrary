const userInfoDom = document.querySelectorAll('.user-info');

fetch(`../../php/gets/profile.php?e=${localStorage.getItem('user')}`)
    .then(response => response.json())
    .then(json => render(json, userInfoDom));

function render(json, userInfoDom) {
    user = json[0];
    console.log(userInfoDom);
    console.log(json);
    userInfoDom[0].innerText = user.nickname;
    userInfoDom[1].innerText = user.id;
    userInfoDom[2].innerText = user.email;
    userInfoDom[3].innerText = user.nickname;
    if(user.phone)
        userInfoDom[4].innerText = user.phone;
    else
        userInfoDom[4].innerText = "Телефон не вказано";
}