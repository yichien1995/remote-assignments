function countAandB(input) {
  let count = 0;
  for (let i = 0; i < input.length; i++) {
    if (input[i] === "a" || input[i] === "b") {
      count += 1;
    }
  }
  return count;
}

// function toNumber(input) {
//   let letters = ["a", "b", "c", "d", "e"];
//   let numbers = [1, 2, 3, 4, 5];

//   let result = [];
//   for (i = 0; i < input.length; i++) {
//     for (j = 0; j < letters.length; j++) {
//       if (input[i] === letters[j]) {
//         result.push(numbers[j]);
//       }
//     }
//   }
//   return result;
// }

//Solution 1 - use indexOf()
function toNumber1(input) {
  let letters = ["a", "b", "c", "d", "e"];
  let numbers = [1, 2, 3, 4, 5];
  let result = [];

  for (i = 0; i < input.length; i++) {
    result.push(numbers[letters.indexOf(input[i])]);
  }
  return result;
}

//Solution 2 - make an object that describes the rules
function toNumber2(input) {
  let rules = { a: 1, b: 2, c: 3, d: 4, e: 5 };
  return input.map((key) => rules[key]);
}

//Solution 3 - use charCodeAt()
function toNumber3(input) {
  let result = [];
  for (i = 0; i < input.length; i++) {
    result.push(input[i].charCodeAt(0) - "a".charCodeAt(0) + 1);
  }
  return result;
}

// code testing
let input1 = ["a", "b", "c", "a", "c", "a", "c"];
// console.log(countAandB(input1));
// console.log(toNumber(input1));
console.log(toNumber1(input1));
console.log(toNumber2(input1));
console.log(toNumber3(input1));

let input2 = ["e", "d", "c", "d", "e"];
// console.log(countAandB(input2));
// console.log(toNumber(input2));
console.log(toNumber1(input2));
console.log(toNumber2(input2));
console.log(toNumber3(input2));
