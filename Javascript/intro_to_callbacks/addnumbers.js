const readline = require('readline');



const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});


function addNumbers(sum, numsLeft, completionCallback){
    if(numsLeft > 0){
        rl.question('Plese enter a number: ', (res) => {
            let x = parseInt(res, 10)
            sum += x
            console.log(sum)
            addNumbers(sum, numsLeft - 1, completionCallback)
        })
    } else {
        completionCallback(sum)
    }
    rl.close
}

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));

