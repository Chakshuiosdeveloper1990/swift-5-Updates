//: [Previous](@previous)

import Foundation


struct Value{
    var id:Int
    
    init?(id:Int){
        if(id < 1){
            
            return nil
        }
        
        self.id = id
        
    }
    
    func showMessage() throws -> String {
        // Some Code
        return "There is my print"
    }
    
    
}

let value = Value(id:0)

let message = try? value?.showMessage()


//: [Next](@next)
