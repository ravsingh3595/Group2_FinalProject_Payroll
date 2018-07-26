//
//  FullTime.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class FullTime: Employee
{
    var salary: Double?
    var bonus: Double?
    
    init(employeeId: Int, employeeName: String, age: Int, salary: Double, bonus: Double)
    {
        super.init(employeeId: employeeId, employeeName: employeeName, age: age)
        self.salary = salary
        self.bonus = bonus
    }
    
    func calEarning() -> Double {
        return salary! + bonus!
    }
    
    override func printMyData()
    {
        print("Salary: \(salary!) \n Bonus: \(bonus!)")
        print("Earnings: \(calEarning())")
    }
}
