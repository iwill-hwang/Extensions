//
//  File.swift
//  
//
//  Created by iwill.h on 2021/04/22.
//

import Foundation
import UIKit

extension UIView {
    public func makeRound(cornerRadius: CGFloat, masksToBounds: Bool = false) {
        self.layer.cornerCurve = .continuous
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = masksToBounds
    }
    
    public func makeRound(masksToBounds: Bool = false) {
        if self.frame.width != self.frame.height {
            self.layer.cornerCurve = .continuous
        }
        
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = masksToBounds
    }
}
