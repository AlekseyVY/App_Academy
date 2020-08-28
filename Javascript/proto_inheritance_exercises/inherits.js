Function.prototype.inherits = function(SuperClass){
    let Surrogate = function() {}
    Surrogate.prototype = SuperClass.prototype
    this.prototype = new Surrogate()
    this.prototype.constructor = this
}

function MovingObject() {}


function Ship() {}
Ship.inherits(MovingObject);

function Asteroid() {}
Asteroid.inherits(MovingObject);

let astero = new Asteroid()
let ship = new Ship()

MovingObject.prototype.a = function() {
    console.log('MOVINGOBJECT')
}

ship.a()
astero.a()

Asteroid.prototype.idle = function(){
    console.log('I AM ASTEROID')
}
//ship.idle()
astero.idle()