/*
A set is an unordered collection of unique, non-nil elements with no defined ordering. A set type must conform to the Hashtable protocol to be stored in a set.”

Excerpt From: “Swift Data Structure and Algorithms.” iBooks.
*/

// Sets

//Inicializando
var stringSet = Set<String>()
var stringSet:Set = ["Carlo", "Gilmar"]
var stringSet:Set<String> = ["Carlo", "Gilmar"]

stringSet.insert("Padilla")

stringSet.contains("Padilla")

stringSet.remove("Padilla")

stringSet.removeFirst()

stringSet.removeAll()

stringSet.index(of:"Carlo")

var stringSet: Set = ["Erik", "Mary", "Michael", "John", "Sally"]

//Iterando
for name in stringSet {
    print("name = \(name)")
}

for name in stringSet.sorted() {
    print("name = \(name)")
}

/*
“The set type is modeled on the mathematical set theory, and it implements methods that support basic set operations for comparing two sets, as well as operations that perform membership and equality comparisons between two sets.”
Excerpt From: “Swift Data Structure and Algorithms.” iBooks.
*/

//Operations

var adminRole:Set<String> = ["R", "E", "D", "C"]
var editorRole:Set<String> = ["R", "E", "D", "C", "P"]
var authorRole:Set<String> = ["R", "EO", "DO", "P", "C"]
var authorRole:Set<String> = ["R", "EO", "DO", "P", "C"]
var contributorRole:Set<String> = ["C", "EO"]
var suscriberRole:Set<String>=["R"]

// Roles + Roles
suscriberRole.union(contributorRole)

// Valores en común
authorRole.intersection(contributorRole)

//Valores no en común
authorRole.symmetricDifference(contributorRole)

//Membership and equality operations

let contactResource = authorRole
// "EDIT_OWN", "PUBLISH_OWN", "READ", "DELETE_OWN", "CREATE"

let userBob = subscriberRole
// "READ"

let userSally = authorRole
// "EDIT_OWN", "PUBLISH_OWN", "READ", "DELETE_OWN", "CREATE"

if userBob.isSuperset(of: fooResource){
    print("Access granted")
}
else {
    print("Access denied")
}
// "Access denied"

if userSally.isSuperset(of: fooResource){
    print("Access granted")
}
else {
    print("Access denied")
}
// Access granted

authorRole.isDisjoint(with: editorRole)
// false

editorRole.isSubset(of: adminRole)
//True

/*
isStrictSubset(of:): Use this method to determine if a set is a subset, but not equal to the specified Set.

isSuperset(of:): Use this method to determine if a set contains all of the values of the specified Set.

isStrictSuperset(of:): Use this method to determine if a set is a superset, but not equal to the specified Set.

isDisjoint(with:): Use this method to determine if two sets have the same values in common:”

isSubset(of:): Use this method to determine if all of the values of a set are contained in a specified Set.

Excerpt From: “Swift Data Structure and Algorithms.” iBooks.

*/







