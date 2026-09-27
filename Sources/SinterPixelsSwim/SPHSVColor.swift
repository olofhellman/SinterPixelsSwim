//
//  SPHSVColor.swift
//  SinterPixelsBridge
//
//  Created by Olof Hellman on 7/12/26.
//


import Foundation
import SinterAppleEvents


public extension FourCharCode {
    static var hue: FourCharCode { return FourCharCode(string: "Hue ")  }
    static var saturation: FourCharCode { return FourCharCode(string: "Satu")  }
    static var brightness: FourCharCode { return FourCharCode(string: "Brtn")  }
}
 
public struct SPHSBColor: SPColor {
    let h: Double
    let s: Double
    let b: Double
    let a: Double
    
    public init(h: Double, s: Double, b: Double, a: Double = 1.0) {
        self.h = h
        self.s = s
        self.b = b
        self.a = a
    }
    
    public func asNSAppleEventDescriptor() -> NSAppleEventDescriptor {
        let record = NSAppleEventDescriptor.record()
        record.setParam(NSAppleEventDescriptor(double: self.h), forKeyword: FourCharCode.hue)
        record.setParam(NSAppleEventDescriptor(double: self.s), forKeyword: FourCharCode.saturation)
        record.setParam(NSAppleEventDescriptor(double: self.b), forKeyword: FourCharCode.brightness)
        record.setParam(NSAppleEventDescriptor(double: self.a), forKeyword: FourCharCode.alphaComponent)
        return record
    }
}
