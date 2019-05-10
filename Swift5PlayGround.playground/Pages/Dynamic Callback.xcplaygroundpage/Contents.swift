//: [Previous](@previous)

import Foundation

struct RandomNumberGenerator{
    
    func generate(nuberOfZero:Int) -> Int {
        let maximun = pow(10, Double(nuberOfZero))
        
        return Int.random(in: 0...Int(maximun))
        
        
    }
    
}


let generator = RandomNumberGenerator()

generator.generate(nuberOfZero: 2)



//: [Next](@next)
