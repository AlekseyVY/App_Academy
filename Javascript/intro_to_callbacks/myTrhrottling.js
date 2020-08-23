


Function.prototype.myThrottle = function(i){
    let toSoon = false
    let that = this
    function wrap() {
        if (toSoon) {
            return
        }
        toSoon = true
        setTimeout(() => {
            toSoon = false
            that()
        }, i)
    }
    return wrap
}




class Neuron {
    fire() {
        console.log("Firing!");
    }
}

const neuron = new Neuron();

neuron.fire = neuron.fire.myThrottle(10000)

const interval = setInterval(() => {
    neuron.fire();
}, 10);

// This time, if our Function#myThrottle worked correctly,
// the Neuron#fire function should only be able to execute
// every 500ms, even though we're still trying to invoke it
// every 10ms!

// If we want this behavior for ALL neurons, we can do the same logic in the constructor:

// class Neuron {
//     constructor() {
//         this.fire = this.fire.myThrottle(500);
//     }

//     fire() {
//         console.log("Firing!");
//     }
// }