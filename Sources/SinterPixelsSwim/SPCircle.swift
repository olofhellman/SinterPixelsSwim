//
//  SPCircle.swift
//  SinterPixelsBridge
//
//  Created by Olof Hellman on 7/12/26.
//


import Foundation
import SinterAppleEvents


public extension FourCharCode {
    static var circle: FourCharCode { return FourCharCode(string: "Circ")  }
}

public class SPCircle: SAEObject {
    static public var fcc: FourCharCode { .circle }
}
