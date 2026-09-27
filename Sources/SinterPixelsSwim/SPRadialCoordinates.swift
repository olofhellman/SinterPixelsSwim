//
//  SPRadialCoordinates.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//


import Foundation
import SinterAppleEvents


public extension FourCharCode {
    static var radius: FourCharCode { return FourCharCode(string: "pRad")  }
    static var angle: FourCharCode { return FourCharCode(string: "pAng")  }
}
 
public protocol SPPosition {
    func asNSAppleEventDescriptor() -> NSAppleEventDescriptor
}
 
public struct SPRadialCoordinates : SPPosition {
    let r: Double
    let a: Double
    
    public init(radius: Double, angle: Double) {
        self.r = radius
        self.a = angle
    }
    
    public func asNSAppleEventDescriptor() -> NSAppleEventDescriptor {
        let record = NSAppleEventDescriptor.record()
        record.setParam(NSAppleEventDescriptor(double: self.r), forKeyword: FourCharCode.radius)
        record.setParam(NSAppleEventDescriptor(double: self.a), forKeyword: FourCharCode.angle)
        return record
    }
}
