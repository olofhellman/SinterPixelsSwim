//
//  SPShape.swift
//  SinterPixelsBridge
//
//  Created by Olof Hellman on 7/12/26.
//


import Foundation
import SinterAppleEvents

public extension FourCharCode {
    static var shape: FourCharCode { return FourCharCode(string: "Shpe")  }
    static var color: FourCharCode { return FourCharCode(string: "colr")  }
    static var fillColor: FourCharCode { return FourCharCode(string: "flcl")  }
    static var lineWidth: FourCharCode { return FourCharCode(string: "LWth")  }
    static var position: FourCharCode { return FourCharCode(string: "ppos")  }
    static var blendMode: FourCharCode { return FourCharCode(string: "Blnd")  }
    static var rotation: FourCharCode { return FourCharCode(string: "prot")  }
}

public class SPShape: SAEObject {
    static public var fcc: FourCharCode { .shape }
}

 
