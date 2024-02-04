// A. callback
function delayedResult(n1, n2, delayTime, callback) {
    setTimeout(() => {
        const result = n1 + n2;
        callback(result);
    }, delayTime);
}
delayedResult(4, 5, 3000, function (result) {
    console.log(result);
}); // 9 (4+5) will be shown in the console after 3 seconds
delayedResult(-5, 10, 2000, function (result) {
    console.log(result);
}); // 5 (-5+10) will be shown in the console after 2 seconds

// B. Promise
function delayedResultPromise(n1, n2, delayTime) {
    const resultPromise = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve(n1 + n2);
        }, delayTime);
    });
    return resultPromise;
}
delayedResultPromise(4, 5, 3000).then(console.log); // 9 (4+5) will be shown in the console after 3 seconds

//async await
async function main() {
    const response = await delayedResultPromise(5, 6, 5000);
    console.log(response);
}
main(); // result will be shown in the console after <delayTime> seconds;
