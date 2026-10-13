//
//  SPApp.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//

import Foundation
import SinterAppleEvents

@MainActor
open class SPApp : SAEApp {
    static let shared: SPApp? = SPApp()

    public init?() {
        super.init(identifier: "com.tomographic.sinterpixels")
    }
    
    required public init(appContext: SAEAppContext?, objSpec: NSAppleEventDescriptor) {
        fatalError("SAEApp should not be initialized with an arbitrary object specifier")
    }

    // app class should override this to return the appropriate SAEDocument subclass for each document
    override public func documentInit(objectSpecifier: NSAppleEventDescriptor) -> SAEDocument {
        return SPDocument(appContext: self, objSpec: objectSpecifier)
    }

}
