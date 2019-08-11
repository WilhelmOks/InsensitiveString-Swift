//
//  CIString.swift
//  CaseIsensitiveString
//
//  Created by Wilhelm Oks on 28.06.19.
//  Copyright © 2019 Wilhelm Oks. All rights reserved.
//

public struct CaseInsensitiveString {
    let string: String
    
    init(_ string: String) {
        self.string = string
    }
}

prefix operator ^

public prefix func ^(string: String) -> CaseInsensitiveString {
    return CaseInsensitiveString(string)
}

public func == (lhs: CaseInsensitiveString, rhs: CaseInsensitiveString) -> Bool {
    return lhs.string.localizedCaseInsensitiveCompare(rhs.string) == .orderedSame
}

public func == (lhs: CaseInsensitiveString, rhs: String) -> Bool {
    return lhs.string.localizedCaseInsensitiveCompare(rhs) == .orderedSame
}

public func == (lhs: String, rhs: CaseInsensitiveString) -> Bool {
    return lhs.localizedCaseInsensitiveCompare(rhs.string) == .orderedSame
}

public func ~= (lhs: CaseInsensitiveString, rhs: String) -> Bool {
    return lhs == rhs
}

public func ~= (lhs: String, rhs: CaseInsensitiveString) -> Bool {
    return lhs == rhs
}

public func ~= (lhs: CaseInsensitiveString, rhs: CaseInsensitiveString) -> Bool {
    return lhs == rhs
}
