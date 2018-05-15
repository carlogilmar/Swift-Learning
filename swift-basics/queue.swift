struct CoolQueue<T>{

  var queue:[T]=[]

  mutating func enqueue(element:T){
    self.queue.append(element)
  }

  mutating func dequeue() -> T?{
    return self.queue.removeFirst()
  }

  func peek() -> T?{
    return self.queue.first
  }

  //Check this!
  //public var capacity:Int{
  //  get{
  //    return queue.capacity
  //  }
  //  set{
  //    return queue.reserveCapacity(newCapacity)
  //  }
  //}

}


// Protocols!

extension CoolQueue: CustomStringConvertible, CustomDebugStringConvertible{

  public var description: String{
    return queue.description
  }

  public var debugDescription: String{
    return queue.debugDescription
  }

}


var queue = CoolQueue<Int>()
queue.enqueue(element:1)
queue.enqueue(element:2)
queue.enqueue(element:3)
queue.enqueue(element:4)
queue.enqueue(element:5)

print("========================")
print( queue.debugDescription )
print("========================")
