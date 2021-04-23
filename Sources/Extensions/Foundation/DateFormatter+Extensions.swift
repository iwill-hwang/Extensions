//
//  File.swift
//  
//
//  Created by donghyun on 2021/04/23.
//

import Foundation

extension DateFormatter {
    public convenience init(with format: String) {
        self.init()
        self.dateFormat = format
    }
}
