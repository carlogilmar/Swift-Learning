enum OurOptional<T>{

  case some(T)
  case none

  init(_ value:T){
    self = .some(value)
  }

  init(){
    self = .none
  }

}

var ourOptionalString = OurOptional("Hello") // some("hello")
var outNilString = OurOptional<String>() // none

/*
    In this case
 */

struct Person{
  var givenName: String
  var middleName: String? = nil
  var surname: String

  var fullName: String {
    return "\(givenName) \(middleName!) \(surname)"
  }
}

let mike = Person(givenName:"carlo", middleName:"gilmar", surname:"PS")
print(mike.fullName)
