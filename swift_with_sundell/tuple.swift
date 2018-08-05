  func render(_ texts: (title: String, subtitle: String)){
    print("Hello this is a function that receives a tuple:: \(texts.title) :: \(texts.subtitle) ::")
  }

  // Calling the function using a tuple
  render( (title: "hola", subtitle: "adios") )
