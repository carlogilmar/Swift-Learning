import Dispatch
let timer = DispatchSource.makeTimerSource()
timer.schedule(deadline: .now(), repeating: .seconds(5))
timer.setEventHandler {
    print("hello")
}
timer.resume()
