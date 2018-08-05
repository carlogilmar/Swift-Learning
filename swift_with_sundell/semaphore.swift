import Dispatch

print("start")
let sem = DispatchSemaphore(value: 5)
for i in 0..<10 {
    DispatchQueue.global().async {
        sem.wait()
        sleep(2)
        print(i)
        sem.signal()
    }
}
print("end")

