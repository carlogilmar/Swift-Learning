print("Dia 4 de dedicacion a swift: Enum and structures")

struct Card {
  var rank: Rank
  var suit: Suit

  func simpleDescription() -> String{
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}

let threeOfSpades = Card(rank: .tree, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

print("Result: \(threeOfSpadesDescription)")
