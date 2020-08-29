


class GameView {
    constructor(Game, ctx){
        this.Game = Game
        this.ctx = ctx
    }
}
// this function starts the ball rolling
GameView.prototype.start = function(){
    setInterval(() => {
        this.Game.draw(this.ctx)
    }, 100)
    setInterval(() => {
        this.Game.moveObjects()
    }, 100)
}


module.exports = GameView;