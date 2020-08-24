document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas')
    const ctx = canvas.getContext('2d')

    ctx.fillStyle = 'red'
    ctx.fillRect(100, 100, 100, 100)

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.stroke();
    
    ctx.fillStyle = 'blue'
    ctx.fill()
});
