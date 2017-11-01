//: Playground - noun: a place where people can play

import UIKit

func letterCount(sentence: String, count: Character) -> Int {
    
    var letterCount = 0
    
    for letter in sentence.characters {
        
        if letter == count {
            letterCount += 1
        }
        
    }
    
    
    
    return letterCount
}


//letterCount(sentence: "Hi this is anji", count: "a")

func letterCount_5a(sentence: String, count: Character) -> Int {
    
    return sentence.characters.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
    
}

//letterCount_5a(sentence: "hi hi hi hi", count: "h")

func letterCount_5b(sentence: String, count: String) -> Int {
    
    let array = sentence.characters.map {String($0)}
    let counted = NSCountedSet(array: array)

    return counted.count(for: count)
}

//letterCount_5b(sentence: "Hi this is anji", count: "i")



func letterCount_5c(sentence: String, count: String) -> Int {
    
    let modified = sentence.replacingOccurrences(of: count, with: "")
    
       return sentence.characters.count - modified.characters.count
}


letterCount_5c(sentence: "Hi this is it ", count: "i")



























