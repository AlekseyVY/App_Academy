class View {
  constructor(game, $el) {
    this.$el = $el
    this.game = game
    $(this.$el).append('<ul></ul>')
    $('ul').addClass('gridUl')
  }

  bindEvents() {}

  makeMove($square) {}

  setupBoard() {
  }
}

View.prototype.setupBoard = function() {
  for (let x = 0; x < 3; x++){
    $('.gridUl').append(`<li class='${x} 0'></li>`)
    for(let j = 1; j < 3; j++){
      $('.gridUl').append(`<li class='${x} ${j}'></li>`)
    }
  }
}

View.prototype.bindEvents = function(){
  let game = this.game
  $('li').click(function(event) {
    let coords = $(event.currentTarget).attr('class')
    let realCoords = coords.split(' ')
    game.playMove(realCoords)
    console.log(game)
    $(event.currentTarget).append(`<p>${game.currentPlayer}</p>`)
    $(event.currentTarget).css('background-color', 'white')
    if (game.winner()) {
      alert(`${game.currentPlayer} HAS WON!!!!!!!`)
    }
  })
}


module.exports = View;
