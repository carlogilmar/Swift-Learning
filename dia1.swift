// Basic things about the language
var message = "Hello, playground"
print("Hello world")
print(message)

// Variables y constantes
var myVariable = 100
let myConstant = 111
myVariable = 567

// Tipados
let explicitDouble: Double = 70
let implicitDouble = 70.0
let implicitInteger = 70
let label:String = "Esto es un string tipado "
let width = 98
let widthLabel = label + String(width)
print(widthLabel)

//Interpolando en string
let apples = 3
let oranges = 10
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) fruits"
print(appleSummary)
print(fruitSummary)

//ArrayList
var shoppingList = ["eggs", "milk", "potatos", "fruit", "icecream"]
print(shoppingList[0])

//Dictionary
var dictionary = [
    "Carlo":"Diez",
    "Itzel":"Diez",
    "Fer":"Nueve"
]

//Control Flow
//Iteraciones
let scores = [3,3,2,2]
for score in scores{
    print(score)
}

// Condicionales
let numbers = [1,2,3,4,5]
for number in numbers{
    if number%2 == 0 {
      print("El numero \(number) es par")
    }
    else{
      print("El numero \(number) es impar")
    }
}


//Trabajando con nil
var vacio = ""
var cero = 0
print ( vacio == nil )
print ( cero == nil )

let nickName: String? = nil
let fullName: String = "carlogilmar"

print("Hi \(nickName ?? fullName)")










