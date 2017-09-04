print("Funciones y closures")

func greet(person:String) -> String {
  let greeting = "Hello," + person + "!"
  return greeting
}

print(greet(person:"@carlogilmar"))

func sayHello()->String{
  return "Hello world!!"
}

func greeting(person:String, alreadyGreeted: Bool)
              ->String{
  if alreadyGreeted{
    return greet(person:person)
  }
  else{
    return sayHello()
  }
}

print( greeting(person:"carlogilmar", alreadyGreeted:true) )
print( greeting(person:"carlogilmar", alreadyGreeted:false) )

func helloWorld(person:String){
  print("Hello from swift \(person)")
}

helloWorld(person:"carlo")

//Unit test
assert( sayHello()  == "Hello world!!")

// TDD test

func countLetters(string:String)->Int{
  return string.characters.count
}
assert( countLetters(string:"carlogilmar") == 11 )


func minMax(array:[Int]) -> (min:Int, max:Int){
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count]{
    if value < currentMin{
      currentMin = value
    }
    else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}

print(minMax(array:[1,2,3,4]))

//Patter matching
var (min, max) = minMax(array:[1,2,3,4])
print("the min value is \(min)")
print("the max value is \(max)")

var results = minMax(array:[1,2,3,4])
print(results.min)
print(results.max)


func minMax2(array:[Int]) -> (min:Int, max:Int)?{
  if array.isEmpty { return nil }
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count]{
    if value < currentMin{
      currentMin = value
    }
    else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}

func plus(elementA:Int, elementB:Int) -> Int{
  return elementB+elementA
}
print("20 + 4 = \(plus(elementA:20, elementB:4))")

func some(person:String, from city:String) -> String{
  return "Hello \(person) from \(city)"
}
print(some(person:"Carlo", from:"CDMX"))

func circleArea(radio:Int, pi:Int=3) -> Int{
  return pi * (radio*radio)
}
print(circleArea(radio:1))

func arithmeticMean(_ numbers:Double...) -> Double {
  var total:Double=0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
print(arithmeticMean(1,2,3,4,5))











