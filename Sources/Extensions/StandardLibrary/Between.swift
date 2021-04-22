//
//  Between.swift
//  
//
//  Created by iwill.h on 2021/04/22.
//

func between<T: Comparable>(min minValue: T, value targetValue: T, max maxValue: T) -> T {
    return max(min(maxValue, targetValue), minValue)
}
