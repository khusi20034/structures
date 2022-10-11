
//

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        width * height
    }
}
let someSize = Size(width: 10.0, height: 5.5)
let area = someSize.area()
print("area is \(area)")

    //
struct Person {
    var name: String
    func sayHello() {
        print("Hello,ther! My name is \(name)!") 
    }
}
let person = Person(name: "Jasmine")
person.sayHello()

    //

struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine() {
        print("The \(year) \(make) \(model)'s engine has started.")
    }
    func drive() {
        print("The \(year) \(make) \(model) is moving.")
    }
    func park() {
        print("The \(year) \(make) \(model) is parked.")
    }
}
let firstCar = Car (make: "Honda", model: "Civic",year: 2010,topSpeed: 120)
let secondCar = Car(make: "Ford", model: "Fusion", year: 2013,topSpeed: 125)

firstCar.startEngine()
firstCar.drive()

    //

struct Temperature {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(fahrenheit: Double) {
        celcius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        celcius = kelvin - 273.15
    }
    
}

let currentTemperature = Temperature(celcius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)
let freezing = Temperature(kelvin: 273.15)

print(currentTemperature.celcius)
print(boiling.celcius)
print(freezing.celcius)

    //

struct Odometer {
    var count: Int = 0
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    mutating func reset() {
        count = 0
    }
}

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
odometer.reset()

    //

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
