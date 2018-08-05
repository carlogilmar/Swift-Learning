import CommandLineCore

let tool = CommandLineTool()

do {
  try tool.run()
} catch {
  print("Errorzzz")
}
