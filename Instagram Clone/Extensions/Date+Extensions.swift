//
//  Date+Extensions.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 23.06.22.
//

import Foundation

extension Date {
    
    func descriptiveString(dateStyle: DateFormatter.Style = .short) -> String {
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ger_GER")
        formatter.dateStyle = dateStyle
        
        let daysBetween = self.daysBetween(date: Date())
        
        if daysBetween == 0 {
            return "Heute"
        } else if daysBetween == 1 {
            
        } else if daysBetween < 5 {
            let weekdayIndex = Calendar.current.component(.weekday, from: self) - 1
            return formatter.weekdaySymbols[weekdayIndex]
        }
        return formatter.string(from: self)
    }
    
    func daysBetween(date: Date) -> Int {
        let calender = Calendar.current
        let date1 = calender.startOfDay(for: self)
        let date2 = calender.startOfDay(for: date)
        if let daysBetween = calender.dateComponents([.day], from: date1, to: date2).day {
            return daysBetween
        }
        return 0
    }
}
