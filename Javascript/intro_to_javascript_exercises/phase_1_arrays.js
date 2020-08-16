Array.prototype.uniq = function(){
    let tmp = []
    this.forEach((ele) => {
        if (!tmp.includes(ele)){
            tmp.push(ele)
        }
    })
    return tmp
}

// const myArr = [1, 2, 3, 4, 1, 2, 1, 3]
// console.log(myArr.uniq())


Array.prototype.twoSum = function(){
    let tmp = []
    for(let i = 0; i < this.length; i++){
        if(this[i + 1] != undefined){
            if((this[i] + this[i + 1]) === 0){
                tmp.push([i, i + 1])
            }
        }
    }
    return tmp
}


// const myArr = [1, -1, 4, 5, 6, -6, 1, -1, 9, 0, 5, 4, -4]
// console.log(myArr.twoSum())


Array.prototype.transpose = function(){
    let data = []
    for(let i = 0; i < this.length; i++){
        let tmp = []
        for(let j = 0; j < this[0].length; j++){
            tmp.push(this[j][i])
        }
        data.push(tmp)
    }
    return data
}

const myArr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
console.log(myArr.transpose())