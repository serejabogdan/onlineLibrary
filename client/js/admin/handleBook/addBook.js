const inputControls = document.querySelectorAll('input');
const submit = document.querySelector('.submit');
submit.onclick = () => {
    const get = {
        name: inputControls[0].value,
        author: inputControls[1].value,
        year: inputControls[2].value,
        description: inputControls[3].value,
        img: inputControls[4].value,
        book: inputControls[5].value

};
    fetch('../../php/posts/admin.post.book.php', {method: 'POST', body: JSON.stringify(get)})
        .then(response => response.text())
        .then(item => {
            console.log(item);
            if(item) {
                const message = document.querySelector('.message');
                message.innerHTML = `<div class="alert alert-success" role="alert">
                        <strong>Операція успішна!</strong> 
                    </div>`;
            } else {
                const message = document.querySelector('.message');
                message.innerHTML = `<div class="alert alert-warning" role="alert">
                        <strong>Операція не вдала!</strong> 
                    </div>`;
            }
        });

};