//
//  SPVertex.swift
//  SinterPixels
//
//  Created by Olof Hellman on 8/23/26.
//

import Foundation

 
public struct SPVertex {
    let angle: Double
    let radius: Double
    
    public init(angle: Double, radius: Double) {
        self.angle = angle
        self.radius = radius
    }
    
    public func asNSAppleEventDescriptor() -> NSAppleEventDescriptor {
        let record = NSAppleEventDescriptor.record()
        record.setParam(NSAppleEventDescriptor(double: angle), forKeyword: .angle)
        record.setParam(NSAppleEventDescriptor(double: radius), forKeyword: .radius)
        return record
    }
}
