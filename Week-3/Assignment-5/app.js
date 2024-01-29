const twoSum = (nums, target) => {
  const map = new Map();

  for (let i = 0; i < nums.length; i++) {
    const diff = target - nums[i];
    // check whether diff is already in the map
    if (map.has(diff)) {
      // if diff is already in the map, means (the number that is assigned to diff) + (current number) = target
      return [map.get(diff), i];
    }
    //set current number as key, and it's index as value in the map
    map.set(nums[i], i);
  }

  return -1;
};

console.log(twoSum([2, 7, 11, 15], 9)); //print [0, 1]
console.log(twoSum([1, 2, 3, 4, 5, 6, 7], 11)); //print [4, 5]
