//
//  Date+dateFormatter.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

enum DateFormattingType: String {
    case mothDayYear = "MMM d, yyyy"
    case fullDate = "yyyy-MM-dd HH:mm:ssZ"
}

extension Date {
    func formattDate(formatType: DateFormattingType) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatType.rawValue
        dateFormatter.locale = .current
        return dateFormatter.string(from: self)
    }
}
