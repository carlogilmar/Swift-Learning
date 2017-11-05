// Structures

  struct Person{
      var firstName:String
      var lastName:String
      init(firstName:String, lastName:String){
          self.firstName = firstName
          self.lastName = lastName
      }
  }
  var person1 = Person(firstName:"John", lastName:"Smith")
  let person2 = Person(firstName:"John", lastName:"Smith")



