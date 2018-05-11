/*
=========================
        ARRAYS
=========================
*/

// 1: Create
var array = Array<Int>()
// var array = [Int]()
// var array:[Int] = [1,2,3,4]
array = [1]

// 2: Array Methods
array.append(2)
array.append([3,4,5])
array.insert(2, at:1)
array.contains(19)


/*
=========================
        DICTIONARIES
=========================
*/

var myMap = Dictionary<String,Any>()//Any
var myMap["carlo"] = ["@carlogilmar"]
var myMap["jorge"] = ["@cggg88jorge"]
var myMap["juan"] = ["@neodevelop"]
var myMap["nahump"] = ["@malumap"]

var detail = Dictionary<String,String>()
detail["nombre"]="carlo gilmar"
detail["edad"]=23
detail["twitter"]="@carlogilmar"
detail["github"]="carlogilmar"

myMap["me"] = detail
