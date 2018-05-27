
var optionalNumber: Int?
optionalNumber = 10

// if
if optionalNumber != nil {
  print("Hay numero!!")
} else {
  print ("No hay numero putito")
}

func tripleNumber(number:Int?){
  guard let number = number else {
    print("Exiting function!")
    return
  }

  print("There is a number!!!! \(number)")
}

tripleNumber(number: optionalNumber)

// force to have a number not nil
let forcedNumber = optionalNumber!

struct Device{
  var type: String
  var price: Float
  var color: String
}

var myPhone: Device?

let devicePrice = myPhone?.price


if devicePrice != nil {
  let total = devicePrice! + 8.99
  print("Device!!! total \(total)")
} else {
  print("No device!!")
}



