//
//  File.swift
//  
//
//  Created by iwill.h on 2021/04/22.
//

import Foundation

extension UIView {
    func makeRound(cornerRadius: CGFloat, masksToBounds: Bool = false) {
        self.layer.cornerCurve = .continuous
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = masksToBounds
    }
    
    func makeRound(masksToBounds: Bool = false) {
        if self.frame.width != self.frame.height {
            self.layer.cornerCurve = .continuous
        }
        
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = masksToBounds
    }
}