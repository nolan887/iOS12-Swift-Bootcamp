import UIKit

func fibonacci(sequenceCount : Int) -> String {
    var fullSequence : String = "0, 1"
    var firstNumber : Int = 0
    var secondNumber : Int = 1
    
    for _ in 1...sequenceCount {
        let newNumber : Int = firstNumber + secondNumber
        fullSequence += ", "
        fullSequence += String(newNumber)
        firstNumber = secondNumber
        secondNumber = newNumber
    }
    
    return fullSequence
}

print(fibonacci(sequenceCount: 10))
