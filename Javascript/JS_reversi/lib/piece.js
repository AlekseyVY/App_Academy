/**
 * Initializes the Piece with its color.
 */
function Piece (color) {
    return this.color = color
}

/**
 * Returns the color opposite the current piece.
 */
Piece.prototype.oppColor = function () {
    return this.flipedColor = 'black'
};

/**
 * Changes the piece's color to the opposite color.
 */
Piece.prototype.flip = function () {
    this.color = this.flipedColor
};

/**
 * Returns a string representation of the string
 * based on its color.
 */
Piece.prototype.toString = function () {   
    return this.color 
};

let c = new Piece('red')
console.log(c.color)
console.log(c.oppColor())
console.log(c.flip())
console.log(c.color)

module.exports = Piece;
