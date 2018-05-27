
var names:[String] = ["carlo", "carlogilmar", "carlo", "carlo", "carlogilmar", "carlogilmar", "carlo", "gilmar", "gilmar"]

func mostCommonName(names:[String]){

    //Create dictionary k,v
    var counters = [String:Int]()

    for element in names {
        if counters[element] == nil {
            //print("No hay nada, llenando \(element)")
            counters[element] = 0
        } else {
            //print("Ya estufas \(element)")
            let c = counters[element]
            counters[element] = c! + 1
        }
    }

    for name in counters{
        print("\(name.key) : \(name.value)")
    }

}

mostCommonName(names: names)

