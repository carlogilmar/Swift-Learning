//Array de Int's
var myIntArray: Array<Int> = [1,2,3,4,5,6]
var myIntArray: [Int] = [1,2,3,4,5,6]
//Type Inference syntax
var myIntArray=[1,3,4,5,6]
//Array empty
var myIntArray: [Int] = []
//Array 2D
var my2DArray:[[Int]] = [[1,2], [10,11], [20,30]]
//Iterate simple array
for element in myIntArray{
  print(element)
}
//Subset of arrays
var subsetArray = myIntArray[1...2]
//Agregar al final
subsetArray.append(15)
//Insertar en posicion
subsetArray.insert(4, at:1)
//Remover ultimo
subsetArray.removeLast()
//Remover posicion
subsetArray.remove(at:1)

  /*“Arrays are used to implement many other data structures, such as stacks, queues, heaps, hash tables, and strings, just to name a few.”

    Excerpt From: “Swift Data Structure and Algorithms.” iBooks. */
