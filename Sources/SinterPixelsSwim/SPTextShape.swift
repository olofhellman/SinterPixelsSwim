//
//  SPTextShape.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//

import Foundation
import SinterAppleEvents

public class SPTextShape: SAEObject {
    static var textShape: FourCharCode { return FourCharCode(string: "TxSh")  }
    static var textContent: FourCharCode { return FourCharCode(string: "ptxC")  }
    static var font: FourCharCode { return FourCharCode(string: "font")  }
    static var fontSize: FourCharCode { return FourCharCode(string: "FtSz")  }
    static var bold: FourCharCode { return FourCharCode(string: "pbld")  }
    static var italic: FourCharCode { return FourCharCode(string: "pitl")  }
}
