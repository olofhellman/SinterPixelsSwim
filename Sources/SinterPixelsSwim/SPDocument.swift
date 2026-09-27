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
    
    public func shapes() -> [SPShape] {
        let shapes = self.elements(ofClass: SPShape.fcc)
        return shapes.map { SPShape(appContext: appContext, objSpec: $0) }
    }
        
    public func shape(atASIndex asIndex: Int) -> SPShape? {
        guard let shp = element(ofClass: SPShape.fcc, atASIndex: asIndex) else {
            return nil
        }
        return SPShape(appContext: appContext, objSpec: shp)
    }
}
