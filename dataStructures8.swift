// Stack

public struct Stack<T> {
  private var elements = [T]()
  public init() {}

  public mutating func pop() -> T?{
    return self.elements.popLast()
  }

  public mutating func push(element: T){
    self.elements.append(element)
  }

  public func peek() -> T?{
    return self.elements.last
  }

  public func isEmpty() -> Bool {
    return self.elements.isEmpty
  }

  public var count: Int {
    return self.elements.count
  }
}

var myStack = Stack<Int>()
myStack.push(element:1)
myStack.push(element:2)
myStack.push(element:3)
myStack.push(element:4)
myStack.push(element:5)
print(myStack)
print("Stack size: \(myStack.count)")
var x = myStack.pop()
x = myStack.pop()
x = myStack.pop()
print(myStack)
print("Stack size: \(myStack.count)")


// Protocols

extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
  public var description: String{
    return self.elements.description
  }
  public var debugDescription: String{
    return self.elements.debugDescription
  }
}

extension ArrayStack: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: T...) {
    self.init(elements)
  }
}

public struct ArrayIterator<T> : IteratorProtocol {
  var currentElements: [T]
  init(elements: [T]){
    self.currentElement = elements
  }
  mutating public func next() -> T?{
    if(!self.currentElement.isEmpty){
      return self.currentElement.popLast()
    }
    return nil
  }
}

extension Stack: Sequence{
  public func makeIterator() -> ArrayIterator<T> {
    return ArrayIterator<T>(elements:self.elements)
  }
}
