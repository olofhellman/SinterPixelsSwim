//
//  SPScriptable.swift
//  SinterPixelsBridge
//
//  Created by Olof Hellman on 7/13/26.
//


import Foundation
import SinterAppleEvents

public class SPScriptable {
    
    let objSpec: NSAppleEventDescriptor
    public init(_ objSpec: NSAppleEventDescriptor) {
        self.objSpec = objSpec
    }
}
