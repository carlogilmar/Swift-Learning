struct CoolQueue<C>{

  var queue:[C]=[]

  mutating func enqueue(element:C){
    self.queue.append(element)
  }

  mutating func dequeue() -> C?{
    return self.queue.removeFirst()
  }

}
