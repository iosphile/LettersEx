//: Playground - noun: a place where people can play

import UIKit

func stringRotated(input: String, rotated: String) -> Bool {
    
    let combined = input + input
    
    return combined.contains(rotated)
    
}

stringRotated(input: "act", rotated: "tac")

func stringRotated_8a(input: String, rotated: String) -> Bool {
    
    guard input.characters.count == rotated.characters.count else {return false}
    
    let combined = input + input
    return combined.contains(rotated)

}

stringRotated_8a(input: "abcde", rotated: "cdeab")