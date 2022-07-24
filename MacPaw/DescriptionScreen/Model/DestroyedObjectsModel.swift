//
//  DestroyedObjectsModel.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import UIKit

enum DestroyedObjectsModel: CaseIterable {
    case date
    case day
    case aircraft
    case helicopter
    case tank
    case APC
    case fieldArtillery
    case MRL
    case drone
    case navalShip
    case antiAircraftWarfare
    case specialEquipment
    case vehiclesAndFuelTanks
    case mobileSRBMSystem
    case cruiseMissiles
    case greatestLossesDirection
    
    func getTitle() -> String {
        switch self {
        case .date :
            return "Date"
        case .aircraft :
            return "Aircrafts"
        case .helicopter:
            return "Helicopters"
        case .tank :
            return "Tanks"
        case .APC:
            return "APC"
        case .fieldArtillery:
            return "Field Artillery"
        case .MRL:
            return "MRLs"
        case .drone:
            return "Drones"
        case .navalShip:
            return "Naval ships"
        case .antiAircraftWarfare:
            return "Anti aircraft warfare"
        case .cruiseMissiles:
            return "Cruise Missiles"
        case .greatestLossesDirection:
            return "Greatest losses direction"
        case .specialEquipment:
            return "Special Equipment"
        case .vehiclesAndFuelTanks:
            return "Vehicles and Fuel Tanks"
        case .mobileSRBMSystem:
            return "Mobile SRBM system"
        case .day:
            return "Day"
        }
    }
    
    func getIcon() -> UIImage? {
        switch self {
        case .date:
            return UIImage(named: "Tank")
        case .aircraft:
            return UIImage(named: "Tank")
        case .tank:
            return UIImage(named: "Tank")
        case .APC:
            return UIImage(named: "Tank")
        case .helicopter:
            return UIImage(named: "Tank")
        case .fieldArtillery:
            return UIImage(named: "Tank")
        case .MRL:
            return UIImage(named: "Tank")
        case .drone:
            return UIImage(named: "Tank")
        case .navalShip:
            return UIImage(named: "Tank")
        case .specialEquipment:
            return UIImage(named: "Tank")
        case .vehiclesAndFuelTanks:
            return UIImage(named: "Tank")
        case .mobileSRBMSystem:
            return UIImage(named: "Tank")
        case .antiAircraftWarfare:
            return UIImage(named: "Tank")
        case .cruiseMissiles:
            return UIImage(named: "Tank")
        case .greatestLossesDirection:
            return UIImage(named: "Tank")
        case .day:
            return UIImage(named: "Tank")
        }
    }
    
    func getDescription(apiData: LooseEquipment) -> String {
        switch self {
        case .date :
            return "\(apiData.date)"
        case .aircraft :
            return "\(apiData.aircraft)"
        case .tank :
            return "\(String(describing: apiData.tank))"
        case .APC:
            return "\(String(describing: apiData.apc))"
        case .helicopter:
            return "\(String(describing: apiData.helicopter))"
        case .fieldArtillery:
            return "\(String(describing: apiData.fieldArtillery))"
        case .specialEquipment:
            return "\(String(describing: apiData.specialEquipment))"
        case .vehiclesAndFuelTanks:
            return "\(String(describing: apiData.vehiclesAndFuelTanks))"
        case .mobileSRBMSystem:
            return "\(String(describing: apiData.mobileSRBMSystem))"
        case .MRL:
            return "\(String(describing: apiData.mrl))"
        case .drone:
            return "\(String(describing: apiData.drone))"
        case .navalShip:
            return "\(String(describing: apiData.navalShip))"
        case .antiAircraftWarfare:
            return "\(String(describing: apiData.antiAircraftWarfare))"
        case .cruiseMissiles:
            return "\(String(describing: apiData.cruiseMissiles))"
        case .greatestLossesDirection:
            return "\(String(describing: apiData.greatestLossesDirection))"
        case .day:
            return "\(String(describing: apiData.day))"
        }
    }
}
