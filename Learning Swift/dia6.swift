print("Este es el sexto dia de conocer el lenguaje de swift")

/*
 Swift basic
 1.- Constants and variables
 2.- Type annotation
 3.- Semicolons and comments
 4.- Integers
 5.- Type safety and type inference
 6.- Numeric Literals
 7.- Numeric Conversion
 8.- Type aliases
 9.- Booleans
 10.- Tuples
 11.- Optionals
 12.- nil
 13.- If statement
 14.- Optional binding
 15.- Implicitly unwrapped optionals
 16.- Error handling
 17.- Assertions
 */

//Constantes: no van a cambiar
let maximumNumber = 10
let pi = 3.1416
//Variables
var currentTry = 0
var x=0.0, y=1.0, z=0.0
//Tipado
var welcomeMessage:String
welcomeMessage = "Bienvenido al lenguaje swift"
var red, green, blue:Double

/*
Error de compilación:

let language = "swift"
language = "swift++"

 */
print("Message: \(welcomeMessage)")

let user = "Carlogilmar"; print(user)

//Integers 8, 16, 32 y 64 bits
print("Max integer 8b value \(UInt8.max)")
print("Max integer 16b value \(UInt16.max)")
print("Max integer 32b value \(UInt32.max)")
print("Max integer 64b value \(UInt64.max)")

//Float number Double 64b, and float 32b

//Numeric literals
let decimalInteger = 17
let binatyInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
let exponent = 1.25e2

let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//Integer conversion

//UInt no puede guardar numeros negativos
let cannotBeNegative: UInt = 1

//Type aliases
typealias AudioSample = UInt16
var maxAmplitud = AudioSample.min

//Booleans
let miVerdad = true
if miVerdad{
  print("Que onda papu!!")
} else {
  print("Falseeeeeeeeeee")
}

let i = 1
if i==1 {
  print("Es igual a uno")
}
else{
  print("Tache guarache")
}

//Tuples
let http404Error = (404, "Not found")
let (statusCode, statusMessage) = http404Error
print("Code: \(statusCode)")
print("Message: \(statusMessage)")

var quotes = (10, 6, 10)
var (firstExam, secondExam, finalExam) = quotes
print("Primer examen: \(firstExam)")
print("Segundo examen: \(secondExam)")
print("Final: \(finalExam)")

let(onlyCode, _) = http404Error
print("Status Only Code .:: \(onlyCode)  ::.")

//Tuple as list
print("element 1: \(quotes.0)")
print("element 2: \(quotes.1)")
print("element 3: \(quotes.2)")

//Tuple as map
let http200Status = (statusCode:200, description:"Ok")
print("Status Code: \(http200Status.statusCode)")
print("Description: \(http200Status.description)")
print("Element 1: \(http200Status.0)")
print("Element 2: \(http200Status.1)")

//Optionals
let possibleNumber = "123"
let converterNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil








