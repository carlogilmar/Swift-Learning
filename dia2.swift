print("Dia 2 de conocer el lenguaje de programación Swift")

var n = 2
while n < 100{
  n *= 2
}
print("El valor de n es \(n)")

var m = 2

repeat {
  m *= 2
} while m < 100

print("El valor de m es \(m)")

for i in 1..<4{
  print("Repeticion \(i)")
}

for i in 1...4{
  print("Loop \(i)")
}

print("Closures en swift")

func greet(person:String, day:String) ->
  String{
    return "[\(day)] Holi \(person)"
  }

print (greet(person:"Carlogilmaar", day:"Lunes"))


