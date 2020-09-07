class View {
    constructor(HanoiGame, $el){
        this.HanoiGame = HanoiGame
        self.HanoiGame = this.HanoiGame
        this.$el = $el
        this.setupTowers()
        this.moveTower()
    }

    setupTowers() {
        console.log(self.HanoiGame)
        $(this.$el).append('<ul class="hanoiContainer"></ul>')
        for (let i = 0; i < 3; i++) {
            $('.hanoiContainer').append(`<li class="${i}"></li>`)
        }
        for (let i = 0; i < self.HanoiGame.towers.length; i++) {
            for (let j = 0; j < self.HanoiGame.towers[i].length; j++) {
                let x = $(`.${i}`)
                $(x).append(`<h1>${j + 1}</h1>`)
            }
        }
    }
    render() {}
    moveTower() {}
}
// fix this shit

View.prototype.render = function(){
    $('.hanoiContainer').empty()
    console.log(View.prototype)
    View.prototype.setupTowers()
}

View.prototype.moveTower = function(){
    console.log(this.HanoiGame)
    const hGame = this.HanoiGame
    const render = this.render
    let point = []
    $('li').click(function(event){
        point.push($(event.currentTarget).attr('class'))
        console.log(point)
        if (point.length === 2){
            hGame.move(Number(point[0]), Number(point[1]))
            point = []
            render()
            for (let i = 0; i < hGame.towers.length; i++) {
                for (let j = 0; j < hGame.towers[i].length; j++) {
                    let x = $(`.${i}`)
                    $(x).append(`<h1>${j + 1}</h1>`)
                }
            }
        }
    })
}

module.exports = View;