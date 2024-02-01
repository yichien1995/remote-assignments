const input = document.querySelector("#input-number");
const result = document.querySelector("#result");

function getResult() {
	const inputValue = input.value;
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function () {
		if (this.readyState == 4 && this.status == 200) {
			result.innerHTML = `計算結果： ${this.responseText}`;
		}
	};
	xhr.open("GET", `http://localhost:3000/data?number=${inputValue}`, true);
	xhr.send();
}
