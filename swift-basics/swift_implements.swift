
struct Person{
  var name:String
  var age:Int
}

struct Evaluation{
  //This value is not change!!
  let name:String
  init(name:String){
    self.name = name
  }
}

let evaluation1 = Evaluation(name:"evaluation")

/*
Stack: Last In First Out

Stack
| a |
| b |
| c |
| d |
| e |

push(e)  -> arriba de (a)
pop() -> toma el ultimo elemento
count -> count elements
peek -> primer elemento

*/

struct CoolStack{
  var stackArray:[Int] = []
  func show() -> [Int]{
    return stackArray
  }
  func counter() -> Int{
    return stackArray.count
  }
  mutating func push(element:Int){
    self.stackArray.append(element)
  }
  mutating func pop() -> Int{
    return self.stackArray.popLast()!
  }
}
