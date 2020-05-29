const content = document.querySelector('.content');
let booksStore = [];
fetch(`../../php/gets/books.php?books=1`)
    .then(response => response.json())
    .then(books => {
        if(books) {
            booksStore = books;
            books.forEach(book => {
                render(book);
            });
        }
    });

function clearContent() {
    content.innerHTML = '';
}

const searcher = document.querySelector('.searcher');

searcher.addEventListener('input', (e) => {
    clearContent();
    booksStore
        .filter(book => book.name.toLowerCase().includes(e.target.value.toLowerCase()))
        .forEach(book => {
            render(book);
        });
});

function render(book) {
    content.innerHTML +=
        `<div class="media">
            <h6 class="mt-0">
                ${book.name}
            </h6>
            <div class="media-body">
                <img class="d-flex align-self-center mr-3" src=${book.img} alt="Generic placeholder img">
            </div>
            <div class="btns">
                <a href=${book.download_url}><button type="button" class="btn btn-primary">Скачать</button></a>
            </div>
        </div>`;
}