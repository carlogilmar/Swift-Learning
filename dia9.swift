print("Dia 9 con swift")
//Sets
var letters = Set<Character>()
print("Letters set items: \(letters.count)")
letters.insert("a")
print("Letters set items: \(letters.count)")
print(letters)
letters = []
print("Letters set items: \(letters.count)")

var musicGenres : Set<String> = ["Rock", "Classical", "Hip hop"]
var musicGenresTwo : Set = ["rock", "classial", "other"]

print("music genres counter: \(musicGenres.count)")
musicGenres.insert("Jazz")
print(musicGenres)

if musicGenres.contains("Jazz") {
  print("Si lo contiene")
} else {
  print("No lo contiene")
}

for genre in musicGenres {
  print(genre)
}

print(musicGenres.sorted())
print(musicGenres)

let oddDigits: Set = [1,3,5,7,9]
let eventDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

print( oddDigits.union(eventDigits) )
print( oddDigits.union(eventDigits).sorted() )

print( oddDigits.intersection(eventDigits).sorted() )

print( oddDigits.subtracting(singleDigitPrimeNumbers).sorted() )

print( oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() )

let setOne: Set = ["a", "b"]
let setTwo: Set = ["c", "d", "e", "a", "b"]
let setThree: Set = ["f", "g"]

print( setOne.isSubset(of: setTwo) )
print( setTwo.isSuperset(of: setOne) )
print( setTwo.isDisjoint(with: setThree) )





