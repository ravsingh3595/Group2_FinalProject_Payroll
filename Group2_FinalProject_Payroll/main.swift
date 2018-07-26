//
//  main.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

print("Hello, World!")

//To get current Directory
let cwd = FileManager.default.currentDirectoryPath
print("script run from:\n" + cwd)

if let filePath = Bundle.main.url(forResource: "Employee", withExtension: "json"){

    do {
        let data = try Data(contentsOf: filePath)
        let jsonDict: [Dictionary<String, Any>] = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments) as! [Dictionary<String, Any>]
        print(jsonDict)
        var csvObj = CSVFile()
        csvObj.createCSV(from: jsonDict)
    }
    catch {
        //Handle error
        print("ERROR")
    }
}else{
    print("FAIL-2")
}


