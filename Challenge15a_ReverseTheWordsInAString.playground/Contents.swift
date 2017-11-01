//: Playground - noun: a place where people can play

import UIKit


func reverseTheWordsInString(input: String) -> String {
    
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map {String($0.characters.reversed())}
    
    return reversed.joined(separator: " ")
}

reverseTheWordsInString(input: "liril")