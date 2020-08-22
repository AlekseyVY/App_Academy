const readline = require("readline");

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});


function askIfGreaterThan(el1, el2, callback) {
    reader.question(`if ${el1} > ${el2} type y (if no then n): `, (src) => {
        if (src === 'y') {
            callback(true)
        } else {
            callback(false)
        }
    })
}



function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop) {
    if (i === arr.length - 1){
        outerBubbleSortLoop(!madeAnySwaps)
    } else {
        askIfGreaterThan(arr[i], arr[i + 1], (src) => {
            if (src === true){
                let tmp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = tmp
                madeAnySwaps = false
            } 
            innerBubbleSortLoop(arr, i += 1, madeAnySwaps, outerBubbleSortLoop)
        })
    }
}



function absurdBubbleSort(arr, sortCompletionCallback) {
    function outerBubbleSortLoop(madeAnySwaps) {
        if(madeAnySwaps){
            innerBubbleSortLoop(arr, 0, madeAnySwaps, outerBubbleSortLoop)
        } else {
            sortCompletionCallback(arr)
        }
    }
    outerBubbleSortLoop(true)
}

absurdBubbleSort([3, 5, 4, 2, 1, 6, 9, 0, 8, 7], function (arr) {
    console.log("Sorted array: " + JSON.stringify(arr));
    reader.close();
});