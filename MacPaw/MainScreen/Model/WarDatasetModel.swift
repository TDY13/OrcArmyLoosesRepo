//
//  WarDatasetModel.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import Foundation

struct WarDataset: Decodable {
    var date: String
    var day: Int
    var personnel: Int
    var personnelSecond: String
    var pow: Int?
    
    enum CodingKeys: String, CodingKey {
        case date
        case day
        case personnel
        case personnelSecond = "personnel*"
        case pow = "POW"
    }
}
