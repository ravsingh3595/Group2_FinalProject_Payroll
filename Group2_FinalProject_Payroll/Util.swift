//
//  Util.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Util {
    static func getDate(year: Int, month: Int, day: Int) -> Date
    {
        let gc = NSCalendar(calendarIdentifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let birthDate = gc?.date(from: dateComponents)
        return birthDate!
    }
}
