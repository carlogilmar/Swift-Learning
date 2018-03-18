
// Overview Chapter

var str = "Hello swift"

print(str)

struct Length {
  var inches: Double

  // Computed Properties
  var feed: Double{
    get {
      return inches/12
    }
    set {
      inches = newValue * 12
    }
  }
}

var length = Length(inches:12)

print(length.inches)
print(length.feed)

length.feed = 2
print(length.feed)
