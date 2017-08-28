print("Dia 3 con swift: Funciones")

func sumOf( numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

func returnFifteen() -> Int{
  var y = 10
  func add(){
    y += 5
  }
  add()
  return y
}

func makeIncrementer() -> ((Int) -> Int){
  func addOne(number:Int) -> Int{
    return 1 + number
  }
  return addOne
}

//Using two functions
func hasAnyMatches(list:[Int], condition: (Int) -> Bool) -> Bool{
  for item in list{
    if condition(item){
      return true
    }
  }
  return false
}

func lessThanTen(number: Int) -> Bool{
  return number < 10
}

print ("Ejemplo de funcion sumOf \(sumOf(numbers:1,2,3,4))")

print ("Ejemplo de funcion returnFifteen \(returnFifteen())")

//Function can return another function as its value
var increment = makeIncrementer()
print("Ejemplo de makeIncrementer \(increment(8))")

var numbers = [1,2,3,4,5]
var result = hasAnyMatches(list:numbers, condition: lessThanTen)
print("Ejemplo hasAnyMatches \(result)")
