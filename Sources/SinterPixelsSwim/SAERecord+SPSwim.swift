//
//  SAERecord+SPSwim.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 9/27/26.
//

import Foundation
import SinterAppleEvents

public extension SAERecord {
    func setKey(_ keyword: FourCharCode, color: SPColor) {
        self.setKey(keyword, descriptor: color.asNSAppleEventDescriptor())
    }
}
