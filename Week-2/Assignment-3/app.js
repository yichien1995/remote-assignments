function count(input) {
  let result = {};

  input.forEach((letter) => {
    // If the letter is not the key in the result object, initialize the letter as the key, and set the value to 1
    if (!result[letter]) {
      result[letter] = 1;
    } else {
      // If the letter is already the key in the result object, add 1 to the current value
      result[letter] += 1;
    }
  });
  return result;
}

function groupByKey(input) {
  let result = {};

  input.forEach((object) => {
    if (!result[object.key]) {
      result[object.key] = object.value;
    } else {
      result[object.key] += object.value;
    }
  });
  return result;
}

//code testing
let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1)); // should print {a:3, b:1, c:2, x:1}

let input2 = [
  { key: "a", value: 3 },
  { key: "b", value: 1 },
  { key: "c", value: 2 },
  { key: "a", value: 3 },
  { key: "c", value: 5 },
];
console.log(groupByKey(input2)); // should print {a:6, b:1, c:7}
