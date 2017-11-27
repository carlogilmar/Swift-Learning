  //Create an array using full array syntax
  var intArray = Array<Int>()
  //Create an array using shorthand syntax
  intArray = [Int]()
  //Contains 0
  intArray.capacity
  intArray.reserveCapacity(500)
  //Containes 508
  intArray.capacity

  //Array literal declaration
  var intLiteralArray:[Int]=[1,2,3]
  //short declaration
  intLiteralArray = [1,2,3]

  //Array with default value
  intLiteralArray = [Int](count:5, repeatedValue:2)

  var intArray = [Int]()
  intArray.append(50)
  intArray.append([1,2,3,4,5])
  intArray.insert(55, at:1)
  intArray[2] = 63

