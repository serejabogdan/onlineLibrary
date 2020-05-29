fetch('../../php/gets/getBooks.php')
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