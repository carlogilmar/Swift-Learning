struct CircularBuffer<T>{

    var buffer:[T] = []

    mutating func setElements(size:Int){
        buffer.reserveCapacity(size)
    }

    func bufferSize() -> Int {
        return buffer.capacity
    }

}


var buffer = CircularBuffer<Int>()
buffer.bufferSize()
buffer.setElements(size: 5)
buffer.bufferSize()
