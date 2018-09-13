print("Hola perros!")

//---------------------------------------- optionals
var number:Int? // number = nil
number = 10 // number = Optional( 10 )
print( number ) // print optional
print( number! ) // unwrap optional

//---------------------------------------- Optional Binding
var message:String?
message = "hola perritos"
if message != nil {
  // message have a value
  let msg = message!
  print("\(msg)!!")
} else {
  // message is nil
  print("message is nil!")
}

//---------------------------------------- Optional Binding
var otherMessage:String?
otherMessage = "hola" // Assign a value
if let msg2 = otherMessage {
  print(" message isn't nil:: \(msg2)")
} else {
  print("other message is nil")
}





