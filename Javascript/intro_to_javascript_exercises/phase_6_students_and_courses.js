class Student {
    constructor(firstName, lastName){
        this.firstName = firstName
        this.lastName = lastName
        this.courses = []
    }
}

class Course {
    constructor(name, department, nuOfCredits){
        this.name = name
        this.department = department
        this.nuOfCredits = nuOfCredits
        this.students = []
    }
}

Course.prototype.addStudent = function(student){
    this.students.push(student)
}

Student.prototype.name = function(){
    return `First Name: ${this.firstName}, Last Name: ${this.lastName}`
}

Student.prototype.enroll = function(course){
        this.courses.push(course)
}

Student.prototype.courseLoad = function(){
    return this.courses
}

let aleksey = new Student('Aleksey', 'Vasiliev')
let kirill = new Student('Kirill', 'Vasiliev')

let math = new Course('Mathematika', 'CS', 4)
let phil = new Course('Philosophy', 'PH', 6)
let cs = new Course('Computer Science', 'CS', 30)

aleksey.enroll(math)
aleksey.enroll(phil)
aleksey.enroll(cs)
console.log(aleksey)