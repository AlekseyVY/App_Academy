class Cat {
    constructor(name, owner){
        this.name = name
        this.owner = owner
    }
}

Cat.prototype.cuteStatement = function(){
    return `${this.owner} loves ${this.name}`
}

const barsik = new Cat('Barsik', 'Aleksey')
const madik = new Cat('madik', 'Alena')
const jobik = new Cat('jobik', 'Kirill')

Cat.prototype.cuteStatement = function () {
    return `Everyone loves ${this.name}`
}

Cat.prototype.meow = function(){
    console.log('meow meow prrrrr')
}

console.log(barsik.cuteStatement())
console.log(madik.cuteStatement())
console.log(jobik.cuteStatement())

madik.meow = function(){
    console.log('gav gav grrrrrr')
}

barsik.meow()
madik.meow()
jobik.meow()