let sum = (array) => (array.length === 0) ? 0 : array[0] + sum(array.slice(1));

// console.log(sum([1, 2, 7, 8, 4, 64, 865, 3]))

function exponent(base, exp){
    if(exp === 1){
        return base
    }
    return exponent(base * base, exp - 1)
}

// console.log(exponent(3, 3))


function fibonacci(n){
    if (n === 1 || n === 2){
        return n
    } 
    return (fibonacci(n - 1) + fibonacci(n - 2))
}

// console.log(fibonacci(40))

function deepDup(arr){

}