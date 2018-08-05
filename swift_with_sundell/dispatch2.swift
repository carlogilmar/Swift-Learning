import Dispatch

let queue = DispatchQueue.global()
let group = DispatchGroup()
let n = 9
for i in 0..<n {
    queue.async(group: group) {
        print("\(i): Running async task...")
        sleep(3)
        print("\(i): Async task completed")
    }
}
group.wait()
print("done")
