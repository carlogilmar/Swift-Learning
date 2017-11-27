print("Dia 8 de ejercicios")

//Collection Types

//Array
var arrayInt = [Int]()
print("arrayInt elements: \(arrayInt.count)")
arrayInt.append(1)
arrayInt.append(2)
arrayInt.append(3)
arrayInt.append(4)
print("arrayInt elements: \(arrayInt.count)")
print(arrayInt)

// Array with default values
var ceros = Array(repeating: 0.0, count: 3)
print(ceros)

var ones =  Array(repeating: 2.5, count: 3)
print(ones)

var numbers = ceros + ones
print(numbers)

var shoppingList : [String] = ["Eggs", "milk"]
print(shoppingList)
print("The shopping list has \(shoppingList.count)")

if shoppingList.isEmpty {
  print("List empty")
}
else{
  print("List not empty")
}

shoppingList.append("More eggs")
print(shoppingList)

shoppingList += ["BakingPowder", "Cheese", "Butter"]
print(shoppingList)
print(shoppingList[0])
print(shoppingList[1])
print(shoppingList[2])

shoppingList[0] = "--Modify--"
print(shoppingList)

shoppingList.insert("Maple", at:0)
print(shoppingList)
print(shoppingList.remove(at: 0))
shoppingList.remove(at: 0)
print(shoppingList)

let mapleSetup = shoppingList.remove(at: 0)
print(mapleSetup)

shoppingList.removeLast()
print(shoppingList)

for item in shoppingList {
  print(item)
}

for (index, value) in shoppingList.enumerated() {
  print("Item \(index + 1): \(value)")
}


