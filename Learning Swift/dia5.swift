print("Dia 5 de estudio del lenguaje swift")

enum PrinterError: Error{
  case outOfPaper
  case noToner
  case onFire
}

//Arrojar el error
//throw PrinterError.noToner

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

//defer: for execute a block of code before

func fridgeContains(_ food: String) -> Bool {
  fridgeIsOpen = true

    //Setup
    defer {
      fridgeIsOpen = false
    }

  let result = fridgeContent.contains(food)
  return result
}

//fridgeContains("Banana")
print(fridgeIsOpen)
print(fridgeContains("Banana"))

//Generics

func makeArray<Item>(repeating item:Item, numberOfTimes:Int)-> [Item]{
  var result = [Item]()
    for _ in 0..<numberOfTimes{
      result.append(item)
    }
  return result
}

print( makeArray(repeating: "knock", numberOfTimes:4) )
//Result: ["knock", "knock", "knock", "knock"]






