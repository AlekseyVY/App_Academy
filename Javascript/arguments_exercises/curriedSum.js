// function sumThree(num1, num2, num3) {
//     return num1 + num2 + num3;
// }

// sumThree(4, 20, 6); // == 30

// // you'll write `Function#curry`!
// let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
// f1 = f1(4); // [Function]
// f1 = f1(20); // [Function]
// f1 = f1(6); // = 30

// // or more briefly:
// sumThree.curry(3)(4)(20)(6); // == 30


function curriedSum(args){
    let numbers = []
    for(let i = 0; i < args; i++){
         return function _curriedSum(num){
            numbers.push(num)
            if(numbers.length === args){
                return numbers.reduce((acc, ele) => acc + ele)
            } else {
                return _curriedSum
            }
        }
    }
}

let s = curriedSum(3)
console.log(s(2)(3)(4))