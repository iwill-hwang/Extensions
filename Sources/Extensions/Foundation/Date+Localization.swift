//
//  File.swift
//  
//
//  Created by donghyun on 2022/05/16.
//

import Foundation

public enum DateLocalizedFormat {
    case year
    case year_month
    case year_motnth_day
    case month
    case month_day
    case month_day_weekday
    case day
    case day_weekday
    
    var template: String {
        switch self {
        case .year:                     return "yyyy"
        case .year_month:               return "MMMMyyyy"
        case .year_motnth_day:          return "dMMMMyyyy"
        case .month:                    return "MMM"
        case .month_day:                return "dMMM"
        case .month_day_weekday:        return "dMMMEEEE"
        case .day:                      return "d"
        case .day_weekday:              return "dEEEE"
        }
    }
}

public extension Date {
    func localized(with format: DateLocalizedFormat) -> String {
        let format = DateFormatter.dateFormat(fromTemplate: format.template, options: 0, locale: Locale.current)!
        let formatter = DateFormatter(with: format)
        return formatter.string(from: self)
    }
}
