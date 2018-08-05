
  /*
    Check:
      https://www.swiftbysundell.com/posts/using-tuples-as-lightweight-types-in-swift
  */

  func render(_ texts: (title: String, subtitle: String)){
    print("Hello this is a function that receives a tuple:: \(texts.title) :: \(texts.subtitle) ::")
  }

  // Calling the function using a tuple
  render( (title: "hola", subtitle: "adios") )

  // UIView method example
  class TextView: UIView {
    typealias Texts = (title: String, subtitle: String, description: String)

    func render(_ texts: Texts) {
      titleLabel.text = texts.title
      subtitleLabel.text = texts.subtitle
      descriptionLabel.text = texts.description
    }
  }

  //Struct example
  struct Map {
    private let width: Int
    private var tiles: [Tile]

    subscript(_ coordinate: (x: Int, y: Int)) -> Tile {
      return tiles[coordinate.x + coordinate.y * width]
    }
  }
  let tileA = map[(x: 1, y: 0)]
  let tileB = map[(2, 1)]


