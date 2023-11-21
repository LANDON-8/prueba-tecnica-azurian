const pageSize = 4;
const elements = await getMovieCatalog();
const totalPageCounter = calculateTotalPages(elements);
drawPaginationButtons(0);
drawElementsOnScreen(0);

async function getMovieCatalog() {
    let url = "http://localhost:8080/movies/catalog/getAll";
    return fetch(url).then(
        (result) => {
            return result.json();
        }
    ).then(
        (response) => {
            return response;
        }
    );
}

function drawElementsOnScreen(pageNumber) {
    let movieContainer = document.getElementById("get-Movie-Catalog");
    movieContainer.innerHTML = '';

    for(let i = pageSize * pageNumber; i < pageSize * (pageNumber + 1); i++) {  
        movieContainer.innerHTML += 
        `<div class = "movie">
        <h2>${elements[i].title}</h2>
        <h3>${elements[i].director}</h3>
        <h4>${"Year: "}${elements[i].year} ${"duration: "}${elements[i].duration}</h4>
        <h4>${elements[i].description}</h4>

        </div>`;
    }
}

function paginationButtonClick(event) {
    console.log(event.currentTarget.innerHTML);
    drawPaginationButtons(event.currentTarget.innerHTML - 1);
    drawElementsOnScreen(event.currentTarget.innerHTML - 1);
}

function calculateTotalPages(elements) {
    let total = elements.length / pageSize;
    return total;
}

function drawPaginationButtons(pageNumber) {
    let paginationButtons = document.getElementById("pagination-buttons");
    paginationButtons.innerHTML = '';

    for(let i = 0; i < totalPageCounter; i++) {
        if(pageNumber != i) {
            paginationButtons.innerHTML += `<button class = "button" id="pagination_button_${i}">${i + 1}</button>`;
        } else {
            paginationButtons.innerHTML += `<button style = "background-color: cyan" class = "button" id="pagination_button_${i}">${i + 1}</button>`;
        }
    }

    for(let i = 0; i < totalPageCounter; i++) {
        document.getElementById(`pagination_button_${i}`).addEventListener("click", paginationButtonClick, false);
    }
}