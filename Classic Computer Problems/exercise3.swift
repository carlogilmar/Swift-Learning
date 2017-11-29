/*Fibonacci*/

print("Exercise 1: Fibonacci Function")

func fib2(n: UInt) -> UInt {
    if(n<2){
        return n
    }
    return fib2(n: n-2) + fib2(n: n-1)
}

print(fib2(n: 20))

/*Segunda Versión*/
var fibMemo: [UInt:UInt] = [0: 0, 1: 1]

func fib3(n:UInt)-> UInt{
    if let result = fibMemo[n] {
        return result
    } else {
        fibMemo[n] = fib3(n: n-1) + fib3(n: n-2)
    }
    return fibMemo[n]!
}

print(fib3(n: 20))


/* Tercera Versión */
func fib4(n:UInt) -> UInt{
    if (n==0){
        return n
    }
    var last: UInt = 0
    var next: UInt = 1

    for _ in 1..<n{
        (last, next) = (next, last+next)
    }

    return next
}

print(fib4(n: 20))







