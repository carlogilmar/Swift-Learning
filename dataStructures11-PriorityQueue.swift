/*
 Prioriy Queue
 */

public struct PriorityQueue<T:Comparable>{
    fileprivate var heap = [T]()
    private let ordered: (T, T) -> Bool

    public init(ascending: Bool = false, startingValues: [T] = []){
        if ascending {
            ordered = { $0 > $1}
        } else {
            ordered = { $0 < $1 }
        }

        heap = startingValues
        var i = heap.count/2 - 1
        while i >= 0 {
            sink(i)
            i-=1
        }
    }

    public var count:Int { return heap.count }
    public var isEmpty:Bool {return heap.isEmpty}

    public mutating func push (_ element: T){
        heap.append(element)
        swin(heap.count - 1)
    }

    public mutating func pop() -> T? {
        if heap.isEmpty { return nil }
        if heap.count == 1 { return heap.removeFirst() }

        swap(&heap[0], &heap[heap.count - 1])
        let temp = heap.removeLast()
        sink(0)
        return temp
    }

    public mutating func remove(_ item: T){
        if let index = heap.index(of: item) {
            swap(&heap[index], &heap[heap.count - 1])
            heap.removeLast()
            swing(index)
            sink(index)
        }
    }


}

