  intArray[0...3]
  //Recorrer un array
  for e in intArray{ print(e) }
  intArray.contains(4)

  //Dictionary key type must conform to the Hashtable protocol.

  //Declaraciones
  var myDict = Dictionary<Int,String>()
  var myDict = [Int:String]()

  //Inicializando un diccionario
  var myDict: [Int:String] = [1:"one",2:"two",3:"three"]
  var myDict = [1:"one",2:"two",3:"three"]

  myDict[5] = "Five"
  myDict.updateValue("Cinco", forKey:5)
  myDict.removeValue(forKey:1)

  //Salvando valor al remover
  let removeKey = myDict.removeValue(forKey:2)
  //Removiendo
  myDict[3]=ni
  l
  //Nil or key
  let result = myDict[3]!


  var states:[String:String] = ["AL":"Alaska", "CA":"California"]

  //Recorriendo un diccionario
  for(abbr, name) in states{
    print("The state abreviation for \(name) is \(abbr) ")
  }

  //Lazymap Collection

  for (stateAbbr) in states.keys {
    print("State abbreviation: \(stateAbbr)")
  }

  for (stateName) in states.values {
    print("State name: \(stateName)")
  }

  //Ordenamiento
  states.sorted(by:{ $0.0 < $1.0 })
  let sortedArray = states.sorted(by:{ $0.0 < $1.0 })
  sortedArray.map({$0.0})


