import Dispatch

let q = DispatchQueue.global()

let text = q.sync {
  return "this will block"
}
print(text)

q.async {
  print("this will return instantly")
}

DispatchQueue.concurrentPerform(iterations: 5) { (i) in
  print(i)
}

extension DispatchQueue {
  static var currentLabel: String {
    return String(validatingUTF8: __dispatch_queue_get_label(nil))!
  }
}
