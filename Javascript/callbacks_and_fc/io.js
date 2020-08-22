const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    let first, second;

    reader.question('Would you like some tea? ', (res) => {
        first = res;
        console.log(`You replied ${res}.`);
    });
    reader.question('Would you like some bescuits? ', (res) => {
        second = res;
        console.log(`You replied ${res}.`);
    });


}
teaAndBiscuits()