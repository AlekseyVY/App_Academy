Array.prototype.myEach = function(callback){
    for(let i = 0; i < this.length; i++){
        callback(this[i])
    }
}

// let myArr = [1, 2, 3, 4, 5]
// myArr.myEach((ele) => {
//     console.log(ele)
// })

Array.prototype.myMap = function(callback){
    let newArr = []
    this.myEach((ele) => {
        newArr.push(callback(ele))
    })
    return newArr
} 

// let myArr = [1, 2, 3, 4, 5, 6, 7]
// console.log(myArr.myMap((ele) => {
//     return ele * ele
// }))


Array.prototype.myReduce = function(callback, initialValue){
    let data = initialValue | this[0]
    console.log(data)
    for(let i = 1; i < this.length; i++){
        data += callback(this[i])
    }
    return data
}


let myArr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
const response = myArr.myReduce((ele) => {
    return ele * ele
}, 100)
console.log(response)