// assignment 3 using fetch API to get data from the back-End
const myForm = document.querySelector("#my-form");
const input = document.querySelector("#input-number");
const result = document.querySelector("#result");

myForm.addEventListener("submit", (e) => {
	e.preventDefault();
	let inputValue = input.value;
	let url = `http://localhost:3000/data?number=${inputValue}`;
	fetch(url)
		.then((response) => response.text())
		.then((data) => generateOutput(data));
});

function generateOutput(output) {
	result.innerHTML = `計算結果：${output}`;
}
