// Day 1
var name: String = "Kristian"
var age: Int = 18
var hobby: String = "Programming stuff"

// Day 2

// arrays - are the best of the next three
let cat = "Juri" // let == const
let dog = "Greta"

let pets = [cat, dog]
pets[1]

// sets
let colors2 = Set(["red", "green", "black"])

// tuples
var name2 = (first: "Kristian", last: "Kovac")
name2.1
name2.first

// dictonary
let heights = [
    "Kristian Kovac": 1.75,
    "Greta": 0.5
]
heights["Kristian Kovac"]

// empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>( )
var resultsS = Array<Int>( )

// enumerations
let result = "failure"

let result2 = "failed"
let result3 = "fail"

enum Result{
    case success
    case failure
}

let result4 = Result.failure

// enum associated values
enum Activity1{
    case bored
    case programming
    case sleeping
    case learning
}

enum Activity{
    case bored(destination: String)
    case programming(game: String)
    case sleeping(duration: Double)
    case learning(topic: String)
}

let programming = Activity.programming(game: "tekken style game")

// enum raw values
enum Planet1{
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}

// Day 3

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// component assignment operators
var scoreE = 95
scoreE -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// comparison operators
let firstScoreA = 6
let secondScoreA = 4

firstScoreA == secondScoreA
firstScoreA != secondScoreA

firstScoreA < secondScoreA
firstScoreA >= secondScoreA

"Taylor" <= "Swift"

// conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21{
    print("Blackjack!")
}

if firstCard + secondCard == 21{
    print("Blackjack!")
}else {
    print("Regular cards")
}

if firstCard + secondCard == 2{
    print("Aces - lucky!")
}else if firstCard + secondCard == 21{
    print("Blackjack!")
}else{
    print("Regular cards")
}

// combining operators
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18{
    print("Both are over 18")
}

// switch statement
let weather = "sunny"

switch weather {
case "rain":
    print("Bring a umbrella")
case "snow":
    print("wrap up warm")
case "sunny":
    print("its hot")
default:
    print("its nothing here")
}

// range operators
let scoreB = 85

switch scoreB {
case 0..<50:
    print("You failed")
case 50..<85:
    print("You did OK")
default:
    print("You did great")
}


// Day 4 Loops

// for loop
let count = 1...10
for number in count{
    print("Number is \(number)")
}

let albums = ["Alpha", "Berlin Lebt 2", "Palmen aus Plastik 2"]
for album in albums{
    print("\(album) is on Apple Music.")
}

print("Players gonna ")
for _ in 1...5{
    print("play")
}

// while loops
var number = 1
while number <= 20{
    print(number)
    number += 1
}
print("Ready or not, here I come!")

// repeat loops (== do while loop)
var number1 = 1
repeat{
    print(number1)
    number1 += 1
}while number1 <= 20
print("Ready or not, here I come!")

repeat{
    print("This is false")
}while false

// Day 5 Functions

func printHelp( ){
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and MyApp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()

// accesing parameters
print("Hello world")

func square(number: Int){
    print(number * number)
}
square(number: 8)

// returning values
func square1(number: Int) -> Int {
    return number * number
}

let result1 = square1(number: 8)
print(result1)

// parameters labels
func square2(number: Int) -> Int{
    return number * number
}
let result5 = square2(number: 8)

func sayHello(to name: String){
    print("Hello, \(name)!")
}
sayHello(to: "Kristian")

// Omitting parameter labels
func greet(_ person: String){
    print("Hello, \(person)!")
}
greet("kristian")

// Default Parameters
func greet1(_ person: String, nicely: Bool = true){
    if nicely == true{
        print("Hello, \(person)!")
    }else{
        print("Oh no, its \(person) again...")
    }
}
greet1("Kristian")
greet1("Kristian", nicely: false)

// variadic functions
print("Haters", "gonna", "hate")

func square3(numbers: Int...){
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}
square3(numbers: 1, 2, 3, 4, 5)

// writing throwing functions
enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    
    return true
}

// running throwing functions
do{
    try checkPassword("password")
    print("That pssword is good!")
}catch{
    print("You cant use that password.")
}

// inout parameters
func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

// Day 6

// closures

