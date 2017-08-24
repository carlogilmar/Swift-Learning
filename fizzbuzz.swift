for i in 1...50 {
  if i%5==0 && i%3==0 {
    print("Fizzbuzz 🍻 ")
  }
  else if i%5 == 0{
    print("Buzz")
  }
  else if i%3==0{
    print("Fizz")
  }
  else{
    print("\(i)")
  }
}
