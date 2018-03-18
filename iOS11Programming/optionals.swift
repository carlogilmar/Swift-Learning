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
    /* Using operator */
    return "Unwrapper \(givenName) \(middleName ?? "<- ->") \(surname)"


    /*Using guard*/
    //guard let middleNameUnwarpped = middleName else { return "Without middlename! \(givenName) \(surname)" }
    //return "Unwrapper \(givenName) \(middleNameUnwarpped) \(surname)"

    /* Using if */
    //if let middleNameUnwarpped = middleName {
    //return "Unwrapper \(givenName) \(middleNameUnwarpped) \(surname)"
    //}
    //return "Without middlename! \(givenName) \(surname)"
  }
}

let mike = Person(givenName:"carlo1", middleName:"gilmar", surname:"PS")
print(mike.fullName)
let mike1 = Person(givenName:"carlo2", middleName:nil, surname:"PS")
print(mike1.fullName)
