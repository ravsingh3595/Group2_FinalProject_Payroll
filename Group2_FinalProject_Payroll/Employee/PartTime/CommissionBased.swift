//
//  CommissionBased.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class CommissionBased: PartTime
{
    var commissionPercentage: Double?
    
    init(employeeId: Int, employeeName: String, age: Date, rate: Double, hoursWorked: Double, commissionPercentage: Double)
    {
        super.init(employeeId: employeeId, employeeName: employeeName, age: age, rate: rate, hoursWorked: hoursWorked)
        self.commissionPercentage = commissionPercentage
    }
    
    func calEarning() -> Double
    {
        return (rate! * hoursWorked!) + commissionPercentage!
    }
    
    override func printMyData()
    {
        print("Commission Percentage: \(commissionPercentage!)")
        print("Earnings: \(calEarning())")
    }
}
