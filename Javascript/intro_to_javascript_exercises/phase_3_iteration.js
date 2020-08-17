Array.prototype.bubbleSort = function(){
    let swaps = true
    while (swaps) {
        let counter = 0
        for(let i = 0; i < this.length; i++){
            if (this[i] > this[i + 1]){
                let tmp = this[i]
                this[i] = this[i + 1]
                this[i + 1] = tmp
                counter++
            }
        }
        if (counter === 0){
            swaps = false
        }
    }
    return this
}


// const myArr = [5, 7, 2, 9, 1, 3, 6, 8, 4]
// console.log(myArr.bubbleSort())


String.prototype.substrings = function(){
    let data = []
    for(let i = 0; i < this.length; i++){
        for(let j = i; j < this.length; j++){
            data.push(this.slice(i, j + 1))
        }
    }
    return data
}

// const myStr = 'apple'
// console.log(myStr.substrings())