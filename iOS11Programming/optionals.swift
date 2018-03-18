enum OurOptional<T>{

  case some(T)
  case none

  init(_ value:T){
    self = .some(value)
  }

  init(){
    self = .none
  }

  func unwarp() -> T {
    switch self {
      case .some(let x):
        return x
      case .none:
        fatalError()
    }
  }

}

var ourOptionalString = OurOptional("Hello") // some("hello")
var outNilString = OurOptional<String>() // none
let string = ourOptionalString.unwarp()


struct Person{
  var givenName: String
  var middleName: String? = nil
  var surname: String

  var fullName: String {
    if let middleNameUnwarpped = middleName {
    return "Unwrapper \(givenName) \(middleNameUnwarpped) \(surname)"
    }
    return "Without middlename! \(givenName) \(surname)"
  }
}

let mike = Person(givenName:"carlo", middleName:"gilmar", surname:"PS")
print(mike.fullName)
