const Util = require('./utils')
const Game = require('./game')
const GameView = require('./game_view')



const movObj = function(){
    let doc = document.getElementById('game-canvas')
    let g = new Game(10)
    let ctx = doc.getContext('2d')
    const gView = new GameView(g, ctx)
    gView.start()
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', movObj)

} else {
    movObj()
}