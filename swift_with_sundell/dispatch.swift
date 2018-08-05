import Dispatch

let q = DispatchQueue.global()

let text = q.sync {
    return "this will block"
}
print(text)

q.async {
    print("this will return instantly")
}
