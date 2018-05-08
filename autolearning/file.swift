import Foundation

let file = "file.txt" //this is the file. we will write to and read from it

let text = "some text, can you see me? I'm a script!" //just a text

if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

    let fileURL = dir.appendingPathComponent(file)
    print("Url done!")
    print(fileURL)

    //writing
    do {
        print("Escribiendo")
        try text.write(to: fileURL, atomically: false, encoding: .utf8)
    }
    catch {
        /* error handling here */
        print("Erroz al escribir!")
    }

    //reading
    do {
        let reading = try String(contentsOf: fileURL, encoding: .utf8)
        print("Leyendo...")
        print(reading)
    }
    catch {
        /* error handling here */
        print("Error al leer")
    }
}

