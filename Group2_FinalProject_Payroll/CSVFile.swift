//
//  CSVFile.swift
//  Group2_FinalProject_Payroll
//
//  Created by Sonia Rani on 2018-07-25.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class CSVFile {
    var employeeArray:[Dictionary<String, Any>] =  Array()
    func createCSV(from recArray:[Dictionary<String, Any>]) {
        var csvString = "\("Employee ID"),\("Employee Name")\n\n"
        for dct in recArray {
            csvString = csvString.appending("\(String(describing: dct["id"]!)) ,\(String(describing: dct["name"]!))\n")
        }
        
        let fileManager = FileManager.default
        do {
            let path = try fileManager.url(for: .documentDirectory, in: .allDomainsMask, appropriateFor: nil, create: false)
            let fileURL = path.appendingPathComponent("CSVFile.csv")
            try csvString.write(to: fileURL, atomically: true, encoding: .utf8)
        } catch {
            print("error creating file")
        }
    }
    
    func appendData() {
        for i in 1...10 {
            var dct = Dictionary<String, Any>()
            dct.updateValue(i as AnyObject, forKey: "EmpID")
            dct.updateValue("NameForEmplyee id = \(i)" as AnyObject, forKey: "EmpName")
            employeeArray.append(dct)
        }
        
        self.createCSV(from: employeeArray)
    }

}
