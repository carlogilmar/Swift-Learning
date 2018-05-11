print("Hi! I'm a Swift Script with all Swift 4 Basics!!!")

// Basic Array
var myArray = [1,2,3,4,5]
var array2D : [[Int]] = [ [1,2], [3,4], [4,5] ]
myArray.append(6)
myArray.removeLast()
myArray.remove(at:0)

// Basic For
for e in myArray{ print("Number: \(e)") }

//Sub Array
var subArray = myArray[0...2]
print(subArray)

// Linked List Data Structure
class LinkedList<T>{ // <T> is a Generic: Type the class
  var item: T? //optional
  var next: LinkedList<T>?
}

/*
 Data Structures: array, sorted array, queue, stack, list, hash table, heap, trie, binary tree,
red-black tree, R-tree, graph
*/
