print("Dia 14")

//overloading functions
func display(value:Int){
  print("Int Number: \(value)")
}
func display(value:Double){
  print("Dou Number: \(value)")
}

display(value:10)
display(value:5.5)

//Using generics
func displayA<T>(value:T){
  print("Number:\(value)")
}

displayA(value:10)
displayA(value:5.5)

func equals<T:Equatable>(valueA:T, valueB:T) -> Bool{
  return valueA == valueB
}


class List<T>{
  var elements = [T]()
  func insert(element:T){
    elements.append(element)
  }
}

let myList = List<String>()
myList.insert(element:"Hola")
