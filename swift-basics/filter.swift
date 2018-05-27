struct Student{
  var name:String
  var age:Int
  var school:String
}

var carlo = Student(name:"carlo", age:23, school:"upiicsa")
var luis = Student(name:"carlo1", age:17, school:"esime")
var brady = Student(name:"carlo2", age:15, school:"esime")
var fresi = Student(name:"carlo3", age:13, school:"upiicsa")
var fer = Student(name:"carlo4", age:21, school:"esime")
var malum = Student(name:"carlo5", age:25, school:"upiicsa")

let students = [carlo, luis, brady, fresi, fer, malum]

let s = students.filter({ return $0.school == "upiicsa" })
print(s)
print(s[0])

let m = students.map({ return $0.age * 100 })
print(m)

let r = m.reduce(0, +)
print(r)

