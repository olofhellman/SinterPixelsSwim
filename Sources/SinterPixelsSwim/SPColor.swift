//
//  SPColor.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 9/27/26.
//

import Foundation
import AppKit
import SinterAppleEvents

public extension FourCharCode {
    static var redComponent: FourCharCode { return FourCharCode(string: "redC")  }
    static var greenComponent: FourCharCode { return FourCharCode(string: "grnC")  }
    static var blueComponent: FourCharCode { return FourCharCode(string: "bluC")  }
    static var alphaComponent: FourCharCode { return FourCharCode(string: "alfC")  }
}

public protocol SPColor {
    func asNSAppleEventDescriptor() -> NSAppleEventDescriptor
    func asNSColor() -> NSColor
}

public struct SPRGBAColor: SPColor {
    let r: Double
    let g: Double
    let b: Double
    let a: Double
    
    public init(r: Double, g: Double, b: Double, a: Double = 1.0) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
    
    public func asNSColor() -> NSColor {
        return NSColor(red: CGFloat(self.r), green: CGFloat(self.g), blue: CGFloat(self.b), alpha: CGFloat(self.a))
    }
    
    public func asNSAppleEventDescriptor() -> NSAppleEventDescriptor {
        let record = NSAppleEventDescriptor.record()
        record.setParam(NSAppleEventDescriptor(double: self.r), forKeyword: FourCharCode.redComponent)
        record.setParam(NSAppleEventDescriptor(double: self.g), forKeyword: FourCharCode.greenComponent)
        record.setParam(NSAppleEventDescriptor(double: self.b), forKeyword: FourCharCode.blueComponent)
        record.setParam(NSAppleEventDescriptor(double: self.a), forKeyword: FourCharCode.alphaComponent)
        return record
    }
}
