class MovingObject {
    constructor(obj){
        this.pos = obj.pos.pos
        this.vel = obj.vel
        this.radius = obj.radius
        this.color = obj.color
    }
}
// draw function that takes ctx and draw shape on canvas
MovingObject.prototype.draw = function(ctx){
    let circle = new Path2D()
    circle.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI)
    ctx.fillStyle = this.color
    ctx.fill(circle)
}

MovingObject.prototype.move = function(){
    this.pos[0] += this.vel[0]
    this.pos[1] += this.vel[1]
}


module.exports = MovingObject