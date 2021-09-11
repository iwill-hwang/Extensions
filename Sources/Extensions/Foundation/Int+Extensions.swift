//
//  File.swift
//  
//
//  Created by donghyun on 2021/09/11.
//

import Foundation

fileprivate extension NumberFormatter {
    convenience init(style: NumberFormatter.Style) {
        self.init()
        self.numberStyle = style
    }
}

extension Int {
    public var currency: String {
        let formatter = NumberFormatter(style: .decimal)
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
