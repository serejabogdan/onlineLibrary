const exit = document.querySelector('.exit');
exit.onclick = () => {
    localStorage.removeItem('user');
    document.location.href = '../../pages';
};