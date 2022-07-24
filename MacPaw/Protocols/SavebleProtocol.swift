//
//  SavebleProtocol.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import Foundation

protocol SavebleProtocol: AnyObject {
    func save(_ data: [WarDataset])
}

protocol EquipmentSavebleProtocol: AnyObject {
    func save(_ data: [LooseEquipment])
}
