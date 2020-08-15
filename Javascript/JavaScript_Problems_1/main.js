function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping1()

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping2()

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping3()

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping4()

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    x = 'out of block again';
    console.log(x);
}
// mysteryScoping5()


// madLib
// Write a function that takes three strings - a verb, an adjective, and a noun - uppercases and interpolates them 
// into the sentence "We shall VERB the ADJECTIVE NOUN".Use ES6 template literals.

// For example,

// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."

function madLib(verb, adjective, noun){
    return `We shall ${verb} the ${adjective} ${noun}`
}
// console.log(madLib('make', 'best', 'guac'))



// isSubstring
// Input

// 1) A String, called searchString.
// 2) A String, called subString.
//     Output: A Boolean.true if the subString is a part of the searchString.

// > isSubstring("time to program", "time")
// true

//     > isSubstring("Jump for joy", "joys")
// false

function isSubstring(substring, searchString){
    if (substring.includes(searchString)){
        return true
    }
    return false
}

// console.log(isSubstring("time to program", "time"))
// console.log(isSubstring("Jump for joy", "joys"))



// isPrime
// Define a function isPrime(number) that returns true if number is prime.Otherwise, false.Assume number is a positive integer.


function isPrime(num) {
    if (num <= 1) return false;
    if (num === 2) return true;

    // storing the calculated value would be much 
    // better than calculating in each iteration
    var sqrt = Math.sqrt(num);

    for (var i = 2; i <= sqrt; i++)
        if (num % i === 0) return false;
    return true;
}
// console.log(isPrime(2))
// // true

// //     > isPrime(10)
// // false

// console.log(isPrime(15485863))
// // true

// console.log(isPrime(3548563))
// // false



// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of the first n prime numbers.Hint: use isPrime as a helper method.

function sumOfNPrimes(num) {
    var answer = 0;

    //loop through all numbers from 2 to input value

    for (var i = 2; i <= num; i++) {

        //sum only prime numbers, skip all others
        if (isPrime(i)) {
            answer += i;
        }
    }
    return answer;
}


// > sumOfNPrimes(0)
// 0

//     > sumOfNPrimes(1)
// 2

console.log(sumOfNPrimes(4))
// 17