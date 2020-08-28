const MovingObject = require("./moving_object");
const Util = require('./utils')


class Asteroid extends MovingObject{
    constructor(pos){
        super({
            pos,
            vel: Util.randomVec(5),
            radius: 30,
            color: '#00FF00'
        })
    }
}

// Util.inherits(Asteroid, MovingObject)


module.exports = Asteroid;