//: Playground - noun: a place where people can play

import UIKit


func findPangram(input: String) -> Bool {
    
    let set = Set(input.lowercased().characters)
    let letters = set.filter { $0>="a" && $0 <= "z" }
    
    return letters.count == 26
    
}

findPangram(input: "a bcdef ghij klmn opqr stuv wxyz")