//
//  Car.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Car: Vehicle
{
    var bootSpace: Double?
    
    init(make: String, plate: String, bootSpace: Double)
    {
        super.init(make: make, plate: plate)
        self.bootSpace = bootSpace
    }
    
    override func printMyData() {
        print("Boot Space: \(bootSpace!)")
    }
}
