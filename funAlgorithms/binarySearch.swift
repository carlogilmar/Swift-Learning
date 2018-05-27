let numbers = [1,2,4,6,8,9,11,13,16,17,20]

func linearSearch(value:Int, array:[Int]) -> Bool{
  for num in array{
    if num == value {
      return true
    }
  }
  return false
}

print( linearSearch(value:8, array:numbers) )
print( linearSearch(value:80, array:numbers) )

func binarySearchForSeachValue( searchValue:Int, array:[Int]) -> Bool {

  var leftIndex = 0
  var rightIndex = array.count-1

  while leftIndex < rightIndex {
    let middleIndex = ( leftIndex + rightIndex ) / 2
    let middleValue = array[middleIndex]
    print("Buscando. Middle value: \(middleValue)")
    if middleValue == searchValue { return true }
    if searchValue < middleValue { rightIndex = middleIndex-1 }
    if searchValue > middleValue { leftIndex = middleIndex+1 }
  }

  return false
}

let isTheNumberFound = binarySearchForSeachValue(searchValue:4, array:numbers)
print(isTheNumberFound)


