class Game {
    constructor(){
        this.towers = [[1,2,3], [], []]
    }
}

Game.prototype.promptMove = function(){
    console.log(`first pole: ${this.towers[0]} second pole: ${this.towers[1]} third pole: ${this.towers[2]}`)
    console.log('Plese specify pole from which you want move disc: ')
    console.log('Plese specify pole to which you want move disc: ')
    
}


const g = new Game()
g.promptMove()