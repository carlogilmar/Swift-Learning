// Implementation of queue
//: Playground - noun: a place where people can play

//import UIKit

public struct Queue<T>{
    private var data = [T]()

    //Construct for empty queue
    public init(){}

    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        data.append(contentsOf: elements)
    }

    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }

    public func peek() -> T? {
        return data.first
    }

    public mutating func enqueue(element:T){
        data.append(element)
    }

    public mutating func clear() {
        data.removeAll()
    }

    public var count: Int {
        return data.count
    }

    public var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }

    public func isFull() -> Bool {
        return count == data.capacity
    }

    public func isEmpty() -> Bool {
        return data.isEmpty
    }
}

var queue = Queue<Int>()
queue.enqueue(element: 100)
queue.enqueue(element: 200)
print(queue)
queue.count
let x = queue.dequeue()
print(x!)

// Protocols

extension Queue: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        return data.description
    }
    public var debugDescription: String {
        return data.debugDescription
    }
}

extension Queue: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

var queue2: Queue<Int> = [1,2,3,5]
print(queue2)









