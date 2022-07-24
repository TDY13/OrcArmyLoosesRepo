//
//  DataService.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import Foundation

class DataService {
    weak var delegate: SavebleProtocol?
    weak var equipDelegate: EquipmentSavebleProtocol?
    static let shared = DataService()
    
    func personnelRequest(_ url: URL) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else { return }
            print(data)
            do {
                let dataResponse = try JSONDecoder().decode([WarDataset].self, from: data)
                DispatchQueue.main.async {
                    self.delegate?.save(dataResponse)
                }
            } catch {
                print("\(error)")
            }
        }.resume()
    }
    
    func equipmentRequest(_ url: URL) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else { return }
            print(data)
            do {
                let dataResponse = try JSONDecoder().decode([LooseEquipment].self, from: data)
                print("✅\(dataResponse)✅")
                DispatchQueue.main.async {
                    self.equipDelegate?.save(dataResponse)
                }
            } catch {
                print("❌\(error)❌")
            }
        }.resume()
    }
}
