
//: Playground - noun: a place where people can play

import UIKit


func stringPermutations(input: String, current: String = "") {
    
    
    let length = input.characters.count
    
    let inputArray = Array(input.characters)
    
    
    if length == 0 {
        
        print(current)
    } else {
        
        
        print(current)
        
        for i in 0 ..< length {
            
            let left = String(inputArray[0 ..< i])
            let right = String(inputArray[i+1 ..< length])
            
            stringPermutations(input: left + right, current: current + String(inputArray[i]))
            
            
        }
        
        
    }
    
    
    
}

stringPermutations(input: "anji")