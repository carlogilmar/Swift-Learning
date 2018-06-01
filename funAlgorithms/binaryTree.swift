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

func search(node: Node?, searchValue: Int) -> Bool {

    if node == nil { return false }

    if node?.value == searchValue {
        return true
    } else {
        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
    }

}

print("Is there One? \( search(node: ten, searchValue: 1 ))")
print("Is there eleven? \( search(node: ten, searchValue: 11 ))")
print("Is there twenty? \( search(node: ten, searchValue: 20 ))")
print("Is there fourteen? \( search(node: ten, searchValue: 14 ))")
print("Is there one hundred? \( search(node: ten, searchValue: 100 ))")
print("Is there six? \( search(node: ten, searchValue: 6 ))")
