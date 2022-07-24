//
//  DescriptionModel.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import Foundation
import UIKit

enum UnknownValue: Decodable {
    
    case int(Int), string(String)
    
    init(from decoder: Decoder) throws {
        if let int = try? decoder.singleValueContainer().decode(Int.self) {
            self = .int(int)
            return
        }
        
        if let string = try? decoder.singleValueContainer().decode(String.self) {
            self = .string(string)
            return
        }
        
        throw UnknownValueError.missingValue
    }
    
    enum UnknownValueError:Error {
        case missingValue
    }
}

struct LooseEquipment: Decodable {
    var date: String
    var day: UnknownValue
    var aircraft: Int
    var helicopter: Int
    var tank: Int
    var apc: Int
    var fieldArtillery: Int
    var mrl: Int
    var militaryAuto: Int?
    var fuelTank: Int?
    var drone: Int
    var navalShip: Int
    var antiAircraftWarfare: Int
    var cruiseMissiles: Int?
    var greatestLossesDirection: String?
    var specialEquipment: Int?
    var vehiclesAndFuelTanks: Int?
    var mobileSRBMSystem: Int?
    
    
    enum CodingKeys: String, CodingKey {
        case date
        case day
        case aircraft
        case helicopter
        case tank
        case apc = "APC"
        case fieldArtillery = "field artillery"
        case mrl = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case mobileSRBMSystem = "mobile SRBM system"
        case cruiseMissiles = "cruise missiles"
        case greatestLossesDirection = "greatest losses direction"
    }
}
