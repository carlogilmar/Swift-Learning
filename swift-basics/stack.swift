struct IntegerStack{
  var stackArray:[Int] = []
  func show() -> [Int]{
    return stackArray
  }
  func counter() -> Int{
    return stackArray.count
  }
  mutating func push(element:Int){
    self.stackArray.append(element)
  }
  mutating func pop() -> Int{
    return self.stackArray.popLast()!
  }
}

// var myStack = IntegerStack()

struct CoolStack<T> {
  var stack:[T] = []
  mutating func push(element:T){
    self.stack.append(element)
  }
  func show() -> [T]{
    return stack
  }
}

// var myStack = CoolStack<Int>()
// var myStack = CoolStack<Any>()
// var myStack = CoolStack<String>()













