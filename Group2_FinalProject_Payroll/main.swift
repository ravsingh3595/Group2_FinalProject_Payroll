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

if let filePath = Bundle.main.url(forResource: "EmployeeData", withExtension: "json"){

    do {
        let data = try Data(contentsOf: filePath)
        let json = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments)
        print(json)
    }
    catch {
        //Handle error
        print("ERROR")
    }
}else{
    print("FAIL-2")
}


