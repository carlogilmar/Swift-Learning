// Stack

public struct Stack<T>{
  private var elements = [T]()
  public init(){}

  public mutating func pop() -> T?{
    return self.elements.popLast()
  }

  public mutating func push(element:T){
    self.elements.append(element)
  }

  public func peek() -> T?{
    return self.elements.last
  }

  public func isEmpty:Bool{
    return self.elements.isEmpty
  }

  public var count:Int{
    return self.elements.count
  }
}

var myStack = Stack<Int>()


