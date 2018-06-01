// My node class
class Node {

    let value: Int
    var leftChild: Node?
    var rightChild: Node?

    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

/*
     10
    /  \
   5    14
  /     / \
 1    11   20
 */

let one = Node(value: 1, leftChild: nil, rightChild: nil)
let eleven = Node(value: 11, leftChild: nil, rightChild: nil)
let twelve = Node(value: 20, leftChild: nil, rightChild: nil)

let five = Node(value: 5, leftChild: one, rightChild: nil)
let fourteen = Node(value: 14, leftChild: eleven, rightChild: twelve)

let ten = Node(value: 10, leftChild: five, rightChild: fourteen)



