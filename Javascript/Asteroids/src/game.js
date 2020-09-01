const Asteroid = require('./asteroid')


class Game  {
    constructor(num){
        this.DIM_X = 800
        this.DIM_Y = 800
        this.NUM_ASTEROIDS = []
        this.addAsteroids(num)
    }
}

Game.prototype.addAsteroids = function(num){
    for(let i = 0; i < num; i++){
        let posX = Math.floor(Math.random() * this.DIM_X)
        let posY = Math.floor(Math.random() * this.DIM_Y)
        this.NUM_ASTEROIDS.push(new Asteroid({pos: [posX, posY]}))
    }
}

Game.prototype.draw = function(ctx){
    ctx.clearRect(0, 0, 800, 800);
    this.NUM_ASTEROIDS.forEach((asteroid) => {
        asteroid.draw(ctx)
    })
}

Game.prototype.moveObjects = function(){
    this.NUM_ASTEROIDS.forEach((asteroid) => {
        asteroid.move()
    })
}
// make this function great again
Game.prototype.wrap = function(pos){
    
}

module.exports = Game;
//fix