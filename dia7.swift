print("Dia 7 de conocer el lenguaje swift")

//asserts
let age = 1
assert( age >= 0 , "A person's age c annot be less than zero")

//Basic operators: unary, binary, ternary
let a = 10
var b = 0
b = a
let (x,y) = (1,2)
var remainder = x % y
print ("Holi crayoli \(remainder)")
print("Hello"+"Swift")

//Comparison Operators: ==, !=, >, <, >=, <=

//Ternary conditional operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)

//nil-coalescing operator
let defaultColor="red"
var userDefinedColorName:String? //Defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColor
print(colorNameToUse)

//Range Operators
  for index in 1...3{
    print(index)
  }

var range = 1...10
print(range)

// Strings
let someString = "Esta es una cadena de palabras"
var emptyString = ""
var otherEmptyString = String() //Inicializando string

if otherEmptyString.isEmpty{
  print("Cadena vacia")
}

let dogName = "Boss🐶"

for caracter in dogName.characters {
  print(caracter)
}

let catCharacters: [Character] = ["b", "o", "s", "s"]
var catString = String(catCharacters)
print(catString)
catString.append("!")
print(catString)

let multiplier = 3
let message = "\(multiplier) times is \(Double(multiplier) * 2.5)"
print(message)

print(message.characters.count)

let greeting = "Guten tag!"
print("Message: \(greeting)")
print(greeting[greeting.startIndex])
print( greeting [greeting.index( before : greeting.endIndex ) ] )
print( greeting [greeting.index( after : greeting.startIndex ) ] )

let index = greeting.index( greeting.startIndex, offsetBy:7 )
print( greeting[index] )

var otherWelcome = "Hello"
print(otherWelcome)
//Insert only for character
otherWelcome.insert("!", at: otherWelcome.endIndex)
print(otherWelcome)
//Remove character
otherWelcome.remove( at: otherWelcome.index( before:otherWelcome.endIndex ) )
print(otherWelcome)
//Remove range
let otherRange = otherWelcome.index(otherWelcome.endIndex, offsetBy:-3)..<otherWelcome.endIndex
otherWelcome.removeSubrange(otherRange)
print(otherWelcome)

let letterOne:Character="a"
if letterOne=="A"{
  print("Minus y mayus dan lo mismo")
}
else{
  print("Minus y mayus no dan lo mismo")
}

let romeoAndJuliet = [
  "Act 1 Scene 1: Verona, A public place",
  "Act 1 Scene 2: Capulet's mansion",
  "Act 1 Scene 3: A room in Capulet's mansion",
  "Act 1 Scene 4: A street outside Capulet's mansion",
  "Act 1 Scene 5: The Great Hall in Capulet's mansion",
  "Act 2 Scene 1: Outside Capulet's mansion",
  "Act 2 Scene 2: Capulet's orchard",
  "Act 2 Scene 3: Outside Friar Lawrence's cell",
  "Act 2 Scene 4: A street in Verona",
  "Act 2 Scene 5: Capulet's mansion",
  "Act 2 Scene 6: Friar Lawrence's cell"
]

var actOneCount = 0
var actTwoCount = 0

for scene in romeoAndJuliet {
  if scene.hasPrefix("Act 1"){
    actOneCount += 1
  }
  else if scene.hasPrefix("Act 2"){
    actTwoCount += 1
  }
}

print("El acto 1 tiene \(actOneCount) escenas")
print("El acto 2 tiene \(actTwoCount) escenas")

var mansionCount = 0
var cellCount = 0

for act in romeoAndJuliet {
  if act.hasSuffix("Capulet's mansion") {
    mansionCount += 1
  }
  else if act.hasSuffix("Friar Lawrence's cell"){
    cellCount += 1
  }
}

print("Escenas en la mansion: \(mansionCount)")
print("Escenas en la celda: \(cellCount)")

