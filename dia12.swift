print("Dia 12: Ejercicios con closures :p")

let makingdevs = ["neodevelop",  "cggg888jorge", "egjimenezg", "leovergara", "vanemily", "carlogilmar"]

func backward(_ s1:String, _ s2:String) -> Bool{
  return s1 < s2
}

var reversedNames = makingdevs.sorted(by:backward)
print(makingdevs)
print(reversedNames)

  //Closure syntax
  var reverse = makingdevs.sorted(
      by: { (s1:String, s2:String) -> Bool in
      return s1 < s2
      })
  print(reverse)

  //Inferring type from context
  var reverse2 = makingdevs.sorted(by: { s1,s2 in return s1<s2 })
  print(reverse2)

  //Shorthand argument names
  var reverse3 = makingdevs.sorted(by: { $0 < $1})
  print(reverse3)

  //Operator methods
  var reverse4 = makingdevs.sorted(by: <)
  print(reverse4)
