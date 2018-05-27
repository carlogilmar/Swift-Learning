for index in 1...20{
  print(index)

  if index%3==0 && index%5==0 {
    print("fizzbuzz")
  } else if index%5==0 {
    print("fizz")
  } else if index%3==0{
    print("buzz")
  } else {
    print("\(index)")
  }
}
