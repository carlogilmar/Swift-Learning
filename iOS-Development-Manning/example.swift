protocol Greeting {
    var message:String { get set}
    func sayHello()
    func sayGoodbye()
}

extension Greeting {
    func sayHello(){
        print("Message: \(message)")
        print("H E L L O !!!")
    }
    func sayGoodbye(){
        print("Message: \(message)")
        print("G O O D B Y E !")
    }
}

class Something: Greeting {
    var message: String
    init(message:String) {
        self.message = message
    }
}

extension Something {
    func example(msg:String){
        print("Función 1")
        print(msg)
    }

    func example(msg:String, msg2:String){
        print("Función 1")
        print(msg)
        print(msg2)
    }

    func example(msg:String, msg2:String, msg3:String){
        print(msg)
        print(msg2)
        print(msg3)
    }
}

var sm = Something(message: "Holi!")
sm.sayHello()
sm.sayGoodbye()
sm.example(msg: "hola", msg2: "adios")
