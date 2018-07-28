//
//  CSVEmployee.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-28.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class CSVEmployee {
    
    func createCSV(from employees: [String: Employee])
    {
        
        var csvTitleString = "\("Employee ID"),\("Employee Name"), \("Age"), \("Employee Type"), \("Vehicle"), \("Make"), \("Plate"), \("isLongDistance"), \("bootSpace"), \("School Name"), \("Hours Worked"), \("Rate"), \("Fixed Amount"), \("Commission"), \("Salary"), \("Bonus"), \("Earning")\n"
        
        var csvDataString = ""
        
        for value in employees.values
        {
            if value is Intern{
                csvDataString = appendData(string: csvDataString, employee: value )
            }
            else if value is FullTime{
                csvDataString = appendData(string: csvDataString, employee: value)
            }
            else if value is CommissionBased{
                csvDataString = appendData(string: csvDataString, employee: value)
            }
            else if value is FixedBased{
                csvDataString = appendData(string: csvDataString, employee: value)
            }
        }
        
        csvTitleString = csvTitleString.appending(csvDataString)
        
        let fileManager = FileManager.default
        do {
            let path = try fileManager.url(for: .documentDirectory, in: .allDomainsMask, appropriateFor: nil, create: false)
            let fileURL = path.appendingPathComponent("CSVFile.csv")
            try csvTitleString.write(to: fileURL, atomically: true, encoding: .utf8)
        } catch {
            print("error creating file")
        }
    }
    
    func appendData(string: String, employee: Employee) -> String
    {
        var bootSpace: Double? = 0.0
        var isLongDistance: Bool? = false
        var appendedString: String?
        
        if(employee._vehicle is Car)
        {
            let carObj = employee._vehicle as! Car
            employee._vehicle?._vehicleType = "Car"
            bootSpace = carObj._bootSpace
        }
        else if(employee._vehicle is Motorcycle)
        {
            let motorcycleObj = employee._vehicle as! Motorcycle
            employee._vehicle?._vehicleType = "Motorcycle"
            isLongDistance = motorcycleObj._isLongDistance
        }
        
        if(employee._employeeType == "Intern")
        {
            let intern = employee as! Intern
            appendedString = string.appending("\(employee._employeeId!), \(employee._employeeName!), \(employee._age!), \(employee._employeeType!), \(employee._vehicle?._vehicleType ?? "None"), \(employee._vehicle?._make ?? "-"), \(employee._vehicle?._plate ?? "-"), \(isLongDistance!), \(bootSpace!), \(intern._schoolName ?? "-"), \(0.0), \(0.0), \(0.0), \(0.0), \(0.0), \(0.0), \(intern.calEarning()) \n")
        }
        else if(employee._employeeType == "FullTime")
        {
            let fullTime = employee as! FullTime
            appendedString = string.appending("\(employee._employeeId!), \(employee._employeeName!), \(employee._age!), \(employee._employeeType!), \(employee._vehicle?._vehicleType ?? "None"), \(employee._vehicle?._make ?? "-"), \(employee._vehicle?._plate ?? "-"), \(isLongDistance!), \(bootSpace!), \("-"), \(0.0), \(0.0), \(0.0), \(0.0), \(fullTime._salary ?? 0.0), \(fullTime._bonus ?? 0.0), \(fullTime.calEarning()) \n")
        }
        else if(employee._employeeType == "CommissionBased")
        {
            let commissionBased = employee as! CommissionBased
            appendedString = string.appending("\(employee._employeeId!), \(employee._employeeName!), \(employee._age!), \(employee._employeeType!), \(employee._vehicle?._vehicleType ?? "None"), \(employee._vehicle?._make ?? "-"), \(employee._vehicle?._plate ?? "-"), \(isLongDistance!), \(bootSpace!), \("-"), \(commissionBased._hoursWorked ?? 0.0), \(commissionBased._rate ?? 0.0), \(0.0), \(commissionBased._commissionPercentage ?? 0.0), \(0.0), \(0.0), \(commissionBased.calEarning()) \n")
        }
        else if(employee._employeeType == "FixedBased")
        {
            let fixedBased = employee as! FixedBased
            appendedString = string.appending("\(employee._employeeId!), \(employee._employeeName!), \(employee._age!), \(employee._employeeType!), \(employee._vehicle?._vehicleType ?? "None"), \(employee._vehicle?._make ?? "-"), \(employee._vehicle?._plate ?? "-"), \(isLongDistance!), \(bootSpace!), \("-"), \(fixedBased._hoursWorked ?? 0.0), \(fixedBased._rate ?? 0.0), \(fixedBased._fixedAmount ?? 0.0), \(0.0), \(0.0), \(0.0), \(fixedBased.calEarning()) \n")
        }
        
        return appendedString!
    }
}
