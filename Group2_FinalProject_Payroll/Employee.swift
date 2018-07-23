//
//  Employee.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Employee
{
    var employeeId: Int?
    var employeeName: String?
    var age: Date?
    var vehicle: Vehicle?
    
    init(employeeId: Int, employeeName: String, age: Date)
    {
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.age = age
    }
   // func calculateBirthYear(age) -> Int {    }
    func printMyData() {
        print("""
                Employee Details
                    Employee Id: \(employeeId!)
                    Name: \(employeeName!)
                    Age: \(age!)
                """)
    }
}