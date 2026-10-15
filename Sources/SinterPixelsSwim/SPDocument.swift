//
//  SPDocument.swift
//  SinterPixelsSwim
//
//  Created by Olof Hellman on 7/12/26.
//

import Foundation
import SinterAppleEvents

public extension FourCharCode {
    static var document: FourCharCode { return FourCharCode(string: "docu")  }
}

public class SPDocument: SAEDocument, SAEContainer {

    //public func make<T: SAEMakeable>(new type: T.Type, props: SAERecord? = nil) -> T? {
    //   return appContext.sendCreateElement(fcc: type.fcc, container: self.containerForCrelEvent, props: props) 
    //}
    
    public func shapes() async -> [SPShape] {
        let shapeElements = await self.elements(ofClass: SPShape.fcc)
        let shapes = shapeElements.compactMap { SAEObjectSpecifier(nsAppleEventDescriptor: $0) }
        return shapes.map { SPShape(appContext: appContext, objectSpecifier: $0) }
    }
        
    public func shape(atASIndex asIndex: Int) async -> SPShape? {
        guard let shp = await element(ofClass: SPShape.fcc, atASIndex: asIndex) else {
            return nil
        }
        guard let shape = SAEObjectSpecifier(nsAppleEventDescriptor: shp) else {
            return nil
        }
        return SPShape(appContext: appContext, objectSpecifier: shape)
    }
}
