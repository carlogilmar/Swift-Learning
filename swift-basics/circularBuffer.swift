struct CircularBuffer{

    /*
     push, pop, peek, isEmpty, isFull, clear
     */
    var storage:[Int]=[0,0,0]
    var index:Int=0
    let maxSize:Int=3

    mutating func push(element:Int){

        print("Current Index::\(index)::")

        if index <= maxSize {
            print(">> \(element) Insertando en index \(index)")
            storage[index] = element
            index = index + 1
            print("Storage: \(self.storage)")
        } else {
            if index == maxSize+1{
                storage[0] = element
                index = 1
                print("-- \(element) Insertando en index 0")
                print("Storage: \(self.storage)")

            }
        }

    }

}

var buffer = CircularBuffer()
buffer.index
buffer.storage
buffer.push(element: 0)
buffer.push(element: 1)
buffer.push(element: 2)
buffer.push(element: 3)
buffer.push(element: 4)
buffer.push(element: 5)
buffer.push(element: 6)
buffer.storage

