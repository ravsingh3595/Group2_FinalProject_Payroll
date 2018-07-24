//
//  Motorcycle.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle
{
    var isLongDistance: Bool?
    
    init(make: String, plate: String, isLongDistance: Bool)
    {
        super.init(make: make, plate: plate)
        self.isLongDistance = isLongDistance
    }

    override func printMyData()
    {
        print("Is Long Distance bike: \(isLongDistance!)")
    }
}
