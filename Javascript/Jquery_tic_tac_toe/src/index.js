const View = require('./ttt-view')
const Game = require('./back_end/game')

  $(() => {
    // Your code here
    const $el = $('.ttt')
    let game = new Game()
    let view = new View(game, $el)
    view.setupBoard()
    view.bindEvents()
  });

