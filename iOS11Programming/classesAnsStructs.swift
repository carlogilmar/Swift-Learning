// class: reference type
// struct: value type


struct  MyStruct{
  var myProperty:String

  func myMethod(){
    print(myProperty)
  }

  // Como un struct es value type esta relacionado a la mutabilidad
  // las fucniones que modifican propiedades, necesitan manejar la mutabilidad
  mutating func changeProperty(){
    myProperty = "Something else"
  }
}

var myStruct = MyStruct(myProperty:"1.- Hello to my struct")
var myStruct2 = myStruct
myStruct.myProperty = "2.- Goodbye"
// Goodbye
myStruct.myMethod()
// hello
myStruct2.myMethod()


class MyClass{
  var myProperty:String

  init(myProperty:String){
    self.myProperty = myProperty
  }

  func myMethod(){
    print(myProperty)
  }

  func changeProperty(){
    myProperty = "Something else"
  }

}

let myClass1 = MyClass(myProperty:"Hello class")
//Both are access to the same reference memory
let myClass2 = myClass1
myClass1.myProperty = "Goodbye"
//Goodbye
myClass1.myMethod()
// expends hello, but we receive -- Goodbye
myClass2.myMethod()


