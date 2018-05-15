struct CoolQueue<T>{

    var queue:[T]=[]

    //initializer
    public init<S:Sequence>(_ elements:S) where S.Iterator.Element == T {
        queue.append(contentsOf: elements)
    }

    mutating func enqueue(element:T){
        self.queue.append(element)
    }

    mutating func dequeue() -> T?{
        return self.queue.removeFirst()
    }

    func peek() -> T?{
        return self.queue.first
    }
}

extension CoolQueue: ExpressibleByArrayLiteral{

    public init(arrayLiteral elements:T...){
        self.init(elements)
    }

}

var q : CoolQueue<Int> = [1,2,3,4,5]
