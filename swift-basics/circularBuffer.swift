struct CircularBuffer{

    var storage:[Int]=[0,0,0,0]
    var maxSize:Int=4
    var index:Int=0

    mutating func push(element:Int){
        if index < maxSize {
            if(storage.count<maxSize){
                print(" Adding \(element) at \(index)")
                self.storage.insert(element, at:index)
                index = index+1
            } else {
                print(" Updating \(element) at \(index)")
                self.storage[index] = element
                index = index+1
            }
        } else {
            print("Reset \(element) at 0")
            self.storage[0] = element
            index = 1
        }
    }
}

var buffer = CircularBuffer()
buffer.push(element: 10)
buffer.push(element: 20)
buffer.push(element: 30)
buffer.push(element: 40)
buffer.push(element: 50)
buffer.push(element: 60)
buffer.push(element: 70)
buffer.push(element: 80)
buffer.push(element: 90)
buffer.push(element: 100)
buffer.push(element: 110)
buffer.push(element: 120)
buffer.push(element: 130)
buffer.storage
