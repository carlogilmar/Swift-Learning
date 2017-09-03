print("Dia 10: Dictionary")

//Empty dictionary
var namesOfIntegers = [Int:String]()
namesOfIntegers[16] = "Sixteen"
print(namesOfIntegers)

var airports: [String: String] = [
                                  "YYZ":"Toronto",
                                  "DUB":"Dublin"
                                 ]
print(airports)
print(airports.count)
print(airports.isEmpty)

airports["DUB"] = "Holi crayoli"
print(airports)

airports["MEX"] = "Mexico"
print(airports)

for (airportCode, airportName) in airports{
  print("\(airportCode) : \(airportName)")
}

for airportCode in airports.keys {
  print("Airportcode: \(airportCode)")
}

for airportName in airports.values{
  print("Airportname: \(airportName)")
}

let codes = [String](airports.keys)
let names = [String](airports.values)

print(codes)
print(names)

//Delete element
airports["DUB"] = nil
print(airports)

airports.removeValue(forKey:"YYZ")
print(airports)





