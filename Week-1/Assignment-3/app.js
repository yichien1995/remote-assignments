function countAandB(input) {
  let count = 0;
  for (let i = 0; i < input.length; i++) {
    if (input[i] === "a" || input[i] === "b") {
      count += 1;
    }
  }
  return count;
}

function toNumber(input) {
  let letters = ["a", "b", "c", "d", "e"];
  let numbers = [1, 2, 3, 4, 5];

  let result = [];
  for (i = 0; i < input.length; i++) {
    for (j = 0; j < letters.length; j++) {
      if (input[i] === letters[j]) {
        result.push(numbers[j]);
      }
    }
  }
  return result;
}


let input1 = ["a", "b", "c", "a", "c", "a", "c"];
console.log(countAandB(input1));
console.log(toNumber(input1));

let input2 = ["e", "d", "c", "d", "e"];
console.log(countAandB(input2));
console.log(toNumber(input2));
