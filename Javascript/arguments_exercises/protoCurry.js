Function.prototype.curry = function(args){
    let that = this
    let numbers = []
    for(let i = 0; i < args; i++){
        return function _curry(num){
            numbers.push(num)
            console.log(numbers)
            if(numbers.length === args){
                return that(...numbers)
            } else {
                return _curry
            }
        }
    }

}

function sum(a, b, c){
    return (a + b + c)
}

let s = sum.curry(3)
console.log(s(3)(3)(3))