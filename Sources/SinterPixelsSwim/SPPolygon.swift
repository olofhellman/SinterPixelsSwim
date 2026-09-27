//
//  SPPolygon.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//

import Foundation
import SinterAppleEvents

public extension FourCharCode {
    static var polygon: FourCharCode { return FourCharCode(string: "Poly")  }
    static var closed: FourCharCode { return FourCharCode(string: "Clsd")  }
    static var vertexCount: FourCharCode { return FourCharCode(string: "nVtx")  }
    static var degrees: FourCharCode { return FourCharCode(string: "Degs")  }
    static var radians: FourCharCode { return FourCharCode(string: "Rdns")  }
    static var vertexArray: FourCharCode { return FourCharCode(string: "VtxA")  }
}

public class SPPolygon: SAEClass, SAEMakeable, SAEContainer {
    
    static public var fcc: FourCharCode { .polygon }

    required public init(appContext: SAEAppContext?, objSpec: NSAppleEventDescriptor) {
        super.init(appContext: appContext, objSpec: objSpec)
    }
}
