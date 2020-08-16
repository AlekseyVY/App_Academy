
function titleize(arr, callback){
    const newArr = arr.map((ele) => {
        return ('Mx.' + ele + ' Jingleheimer Schmidt')
    })
    callback(newArr)
}



titleize(["Mary", "Brian", "Leo"], (arr) => {
    arr.forEach(element => {
        console.log(element)
    });
});
// Mx.Mary Jingleheimer Schmidt
// Mx.Brian Jingleheimer Schmidt
// Mx.Leo Jingleheimer Schmidt
// undefined



function Elephant(name, height, trickArray){
    this.name = name
    this.height = height
    this.trickArray = trickArray
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
}

Elephant.prototype.grow = function(){
    this.height += 12
}

Elephant.prototype.addTrick = function(trick){
    this.trickArray.push(trick)
}

Elephant.prototype.play = function(){
    const randTrick = this.trickArray[Math.floor(Math.random() * this.trickArray.length)]
    console.log(`${this.name} is ${randTrick}!`)
}


const e = new Elephant('SASKE', 190, ['jump', 'roll', 'die'])
e.trumpet()
e.grow()
e.addTrick('laugh')
e.play()



let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


Elephant.prototype.paradeHelper = function(){
    console.log(`${this.name} is trotting by!`)
}

herd.forEach((ele) => {
    ele.paradeHelper()
})


function dinerBreakfast(name){
    let str = 'Id like cheesy scrambled eggs please'
    return function(name){
        str = str + " and " +  name
        console.log(str)
    }
}

let b = dinerBreakfast()
b('AAAAAAAAA')
b('BBBBBBBBBBBB')
b('CCCCCCCCCCCCC')