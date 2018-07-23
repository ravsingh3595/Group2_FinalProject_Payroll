//
//  Vehicle.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Vehicle
{
    var make: String?
    var plate: String?
    
    init(make: String, plate: String)
    {
        self.make = make
        self.plate = plate
    }
    
    func printMyData() {
        print("Make: \(make) \n Plate: \(plate)")
    }
}
