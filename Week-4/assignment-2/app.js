async function ajax(src, callback) {
    try {
        let result = await fetch(src);
        let dataFromApi = await result.json();
        callback(dataFromApi);
    } catch (e) {
        console.log(e);
    }
}

const btn = document.querySelector("#add");
const outputDiv = document.getElementById("output");

function render(data) {
    btn.addEventListener("click", () => {
        for (let item of data) {
            const newParagraph = document.createElement("p");
            newParagraph.innerText = JSON.stringify(item);
            outputDiv.appendChild(newParagraph);
        }
    });
}
ajax(
    "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/products",
    function (response) {
        render(response);
    }
); // you should get product information in JSON format and render data in the page
