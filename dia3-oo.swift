print("Orientacion a objetos en swift")

class Shape {
  //Atributo
  var numberOfSides = 0

  //Método
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

class NamedShape{
  var sides: Int = 0
  var name: String

  //Constructor
  init(name:String){
    self.name = name
  }

  func simpleDescription() -> String {
    return "Sides: \(sides)"
  }

}

var shape1 = Shape()
var shape2 = Shape()
var shape3 = Shape()

shape1.numberOfSides = 10
shape2.numberOfSides = 20
shape3.numberOfSides = 30

print("Shape 1: \(shape1.simpleDescription())")
print("Shape 2: \(shape2.simpleDescription())")
print("Shape 3: \(shape3.simpleDescription())")
