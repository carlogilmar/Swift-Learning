public struct ArrayStack<T> {

  fileprivate var elements = [T]()

  public init() {}

  public init<S : Sequence>(_ s: S) where S.Iterator.Element == T {
    self.elements = Array(s.reversed())
  }

  mutating public func pop() -> T? {
    return self.elements.popLast()
  }

  mutating public func push(element: T){
    self.elements.append(element)
  }

  public func peek() -> T? {
    return self.elements.last
  }

  public func isEmpty() -> Bool {
    return self.elements.isEmpty
  }

  public var count: Int {
    return self.elements.count
  }
}

// Protocols
extension ArrayStack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension ArrayStack: CustomStringConvertible, CustomDebugStringConvertible {
  public var description: String {
    return self.elements.description
  }
  public var debugDescription: String {
    return self.elements.debugDescription
  }
}

var myStack = ArrayStack<Int>()
myStack.push(element: 1)
myStack.push(element: 2)
myStack.push(element: 3)
myStack.push(element: 4)
myStack.push(element: 5)
print(myStack)
print("Stack size: \(myStack.count)")
var x = myStack.pop()
x = myStack.pop()
x = myStack.pop()
print(myStack)
print("Stack size: \(myStack.count)")

