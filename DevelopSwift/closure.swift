let joinStrings: (String, String) -> String = { (lhs, rhs) in
  return lhs+rhs
}

let joinMore: (String, String) -> String = {
  return $0 + $1
}

func doIt(times:Int, closure: () -> Void){
  for _ in 0..<times {
    closure()
  }
}

doIt(times:5, closure:{
    print("Hola")
    })

doIt(times:5) { print("Hola x2") }


let array = [1,2,3,4,5,6,7,8,9,9]
array.forEach{print($0)}

let dict = ["foo":1, "bar":2, "cat":3]
dict.forEach{print($0)}

let animals = ["dog", "cat", "tree"]

let sorted1 = animals.sorted{ $0 < $1 }
let sorted2 = animals.sorted(by: <)
print(sorted1)
print(sorted2)


  let a = [23, 46, 76, 544, 34]

  a.forEach{ (value) in
    print(value)
  }

  a.forEach{ (value:Int) in
    print(value)
  }

  a.forEach{ value in
    print(value)
  }
  a.forEach{
    print($0)
  }

