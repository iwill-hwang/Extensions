//
//  File.swift
//  
//
//  Created by donghyun on 2021/04/23.
//

import Foundation

extension String {
    public func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
