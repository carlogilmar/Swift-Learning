
func factorial(value:Int) -> Int{

  var product = 1
  for i in 1...value{
    product = product * i
  }

  return product

}

print(" Factorial de 3: \(factorial(value:3))")
