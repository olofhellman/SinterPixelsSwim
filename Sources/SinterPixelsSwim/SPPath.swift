//
//  SPPath.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//

import Foundation
import SinterAppleEvents

public extension FourCharCode {
    static var path: FourCharCode { return FourCharCode(string: "Path")  }
    static var anchorData: FourCharCode { return FourCharCode(string: "PAkD")  }
    static var radiansRotation: FourCharCode { return FourCharCode(string: "RRot")  }
    static var radii: FourCharCode { return FourCharCode(string: "Rdii")  }
    static var anchorCount: FourCharCode { return FourCharCode(string: "nAnk")  }
}

@MainActor
public class SPPath: SAEObject, SAEMakeable, SAEContainer {
    static public var fcc: FourCharCode { .path }
}
