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


/*
=========================
       SETS
=========================
*/

var mySet = Set<Int>()
var groupA:Set<Int> = [1,2,3,4,5]
var groupB:Set<Int> = [4,5,6,7,8]
var groupC:Set<Int> = [1,4,9,10,1]

groupA.union(groupB)
groupA.intersection(groupB)
groupA.symmetricDifference(groupB)


/*
=========================
      TUPLES
=========================
*/


var myTuple = ("hola", 1, "a", 3.1416)
//myTuple.0
var typedTuple:(Int, String, Int, Any)=(10,"hola",9,"salu2")
let (a,b,c,d) = typedTuple

let responseCode: (errorCode:Int, errorMessage:String, offset:String) = (4010, "Invalid file contents", "salu")
//responseCode
//responseCode.errorCode
//responseCode.0





