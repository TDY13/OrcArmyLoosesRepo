//
//  Constants.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import Foundation

struct Constant {
    static let personnel = "https://raw.githubusercontent.com/PetroIvaniuk/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"
    static let equipment = "https://raw.githubusercontent.com/PetroIvaniuk/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
}

enum APIRoutes{
    case personnelURL
    case equipmentURL
    
    var urlString: String {
        
        switch self {
        case .personnelURL:
            return "/PetroIvaniuk/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"
        case .equipmentURL:
            return "/PetroIvaniuk/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
        }
    }
}



