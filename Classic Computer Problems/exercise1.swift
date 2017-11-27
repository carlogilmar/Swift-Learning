print("Exercise 1: Fibonacci Function")

//First version
func fib1(n:UInt) -> UInt {
  return fib1(n: n-1) + fib1(n: n-2)
}

//Second Version
func fib2(n:UInt) -> UInt{
  if( n < 2){
    return n
  }
  return fib2(n: n-2) + fib2(n: n-1)
}

print(fib2(n: 5))
print(fib2(n: 20))

//Third Version
var fibMemo:[UInt: UInt] = [0:0, 1:1]
func fib3(n:UInt) -> UInt {
  if let result = fibMemo[0] {
    return result
  } else {
    fibMemo[0] = fib3(n: n-1) + fib3(n: n-2)
  }
  return fibMemo[n]!
}

print(fib3(n:20))

func fib4(n:UInt)-> UInt {
  if(n == 0){
    return n
  }
  var last: UInt = 0
  var next: UInt = 1
  for _ in 1..<n{
    (last, next) = (next, last+next)
  }
  return next
}

print(fib4(n:20))

