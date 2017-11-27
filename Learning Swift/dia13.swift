print("Dia 13 con swift")

//Class
class Person{
  var name:String
  var email:String?//can be optional
  //initializer
  init(name:String){
    self.name = name
  }
}

//Protocol
protocol MyProtocol{
  func myMethod()
}

class Worker:Person, MyProtocol{
  var salary:Double
  init(name:String, salary:Double){
    self.salary = salary
    super.init(name:name)
  }
  func myMethod(){
    print("Protocol>>myMethod>> Worker class")
  }
}

class Price{
  var value:Double

  init(value:Double){
    self.value=value
  }

  func increment(by percentage:Double){
    self.value = self.value * (1 * percentage)
  }
}

var price = Price(value:10)
price.increment(by:0.1)

struct Price1{
  var value:Double

  init(value:Double){
    self.value=value
  }

  mutating func increment(by percentage:Double){
    self.value = self.value * (1 * percentage)
  }
}








