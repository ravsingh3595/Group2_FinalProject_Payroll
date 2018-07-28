//
//  Json.swift
//  Group2_FinalProject_Payroll
//
//  Created by user on 2018-07-24.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

struct Json: Codable {
    let id: Int
    let name: String
    let age: Int
    let vehicle: Vehicle?
    let type: String
    
    // intern
    let schoolName: String?
    
    // part time
    let rate: Float?
    let hoursWorked: Int?
    
    // PartTime/Fixed
    let fixedAmount: Int?
    
    // fulltime
    let salary: Float?
    let bonus: Float?
    
    // parttime/commissioned
    let commissionPercent: Int?
    
    struct Vehicle: Codable{
        let id: Int
        let make: String
        let plate: String
        let type: String
        let isLongDistance: Bool?
    }
}


//import Foundation
//
//struct Json: Decodable {
//    let id: Int
//    let name: String
//    let email: String
//    let age: Date
//    let vehicle: Int
//    
//    let make: String
//    let plate: String
//    
//    let bootSpace: Double
//    let isLongDistance: Bool
//    
//    let employeeType: String
//    
//    let schoolName: String
//    
//    let salary: Double
//    let bonus: Double
//    
//    let rate: Double
//    let hoursWorked: Double
//    
//    let commissionBased: Double
//    
//    let fixedAmount: Double
//    
//    enum CodingKeys : String, CodingKey {
//        case employeeId = "id"
//        case name = "name"
//        case email = "email"
//    }
//    
//    
////    private enum CodingKeys: String, CodingKey {
////        case indexPath
////        case locationInText
////    }
//    
////    init(title: String, author: String, editor: String, type: String, publishDate: Date) {
////
////        self.title = title
////        self.author = author
////        self.editor = editor
////        self.type = type
////        self.publishDate = publishDate
////    }
////    required init(from decoder:Decoder) throws {
////        let values = try decoder.container(keyedBy: CodingKeys.self)
//////        indexPath = try values.decode([Int].self, forKey: .indexPath)
//////        locationInText = try values.decode(Int.self, forKey: .locationInText)
////    }
//}
