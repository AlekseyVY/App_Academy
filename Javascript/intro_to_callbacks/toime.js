class Clock {
    constructor() {
        // 1. Create a Date object.
        const date = new Date()
        // 2. Store the hours, minutes, and seconds.
        this.hours = date.getHours()
        this.minutes = date.getMinutes()
        this.seconds = date.getSeconds()
        // 3. Call printTime.
        // 4. Schedule the tick at 1 second intervals.
    }

    printTime() {
        // Format the time in HH:MM:SS
        if (this.seconds >= 60){
            this.minutes++
            this.seconds = 0
        } if (this.minutes >= 60){
            this.hours++
            this.minutes = 0
        } if (this.hours >= 24) {
            this.hours = 1
        }
        console.log(`${this.hours}:${this.minutes}:${this.seconds}`)
        // Use console.log to print it.
    }

    _tick() {
        // 1. Increment the time by one second.
        setInterval(() => {
            this.seconds++
            this.printTime()
        }, 1000)
        // 2. Call printTime.
    }
}

const clock = new Clock();
clock._tick()

