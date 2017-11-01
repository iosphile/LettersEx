//: Playground - noun: a place where people can play

import UIKit

extension String {
    
    func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
    
    func fuzzyContains1(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

var string = "anji"
var string2 = "rajesh"
let string1: Bool = string.fuzzyContains(string2)