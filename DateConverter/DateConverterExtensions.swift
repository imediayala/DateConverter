//
//  File.swift
//  DateConverter
//
//  Created by Daniel Ayala Jabon on 14/11/2019.
//  Copyright © 2019 imediayala. All rights reserved.
//

import Foundation

extension Date {

    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }

    func dateString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    var monthShort: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "MMM"
        return dateFormatter.string(from: self)
    }
    
    var monthNumber: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "MM"
        return dateFormatter.string(from: self)
    }
    
    var monthLong: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
    
    var dayShort: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: self)
    }
    
    var hourShort: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "HH"
        return dateFormatter.string(from: self)
    }
    
    var minutesShort: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "mm"
        return dateFormatter.string(from: self)
    }
    
    var secondsShort: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "ss"
        return dateFormatter.string(from: self)
    }

    // Compare
    func compareByDay(secondDate: Date) -> Bool {
        return Calendar.current.compare(self, to: secondDate, toGranularity: .day) == .orderedSame
    }

    
}
