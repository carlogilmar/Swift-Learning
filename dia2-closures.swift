print("Closures y funciones en swift")
func jediGreet(name: String, ability: String) -> String {
  return ("Good bye, \(name).", " May the \(ability) be with you.")
}

  let retValue = jediGreet("old friend", "Force")
  print(retValue)
