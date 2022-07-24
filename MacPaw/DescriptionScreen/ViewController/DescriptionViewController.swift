//
//  DescriptionViewController.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import UIKit

class DescriptionViewController: UIViewController {
    let mainView = DescriptionView()
    var equipData: [LooseEquipment] = []
    let destroyedObjectsModel = DestroyedObjectsModel.allCases
    
//    static let shared = DescriptionViewController(data: [LooseEquipment])
    
    init(data: [LooseEquipment]) {
        self.equipData = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewController()
        mainView.tableView.reloadData()
    }
    
    func initViewController() {
        equipmentRequest()
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        mainView.tableView.registerReusableCell(DescriptionTableViewCell.self)
        
        mainView.backButton.addTarget(self, action: #selector(didTapBackButton), for: .touchUpInside)
    }
    
    func equipmentRequest() {
        DataService.shared.equipDelegate = self
        guard let url: URL = URL(string: Constant.equipment) else { return }
        DataService.shared.equipmentRequest(url)
    }
    @objc private func didTapBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
//MARK: - TableView delegate & data source
extension DescriptionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        equipData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let model: DestroyedObjectsModel = destroyedObjectsModel[row]
        
        switch model {
        case .date, .day, .aircraft, .helicopter, .tank, .APC, .fieldArtillery, .MRL, .drone, .navalShip, .antiAircraftWarfare, .cruiseMissiles, .greatestLossesDirection, .mobileSRBMSystem, .vehiclesAndFuelTanks, .specialEquipment:
            let cell: DescriptionTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.objectNameLabel.text = model.getTitle()
            cell.numberOfDestroyedObjectsLabel.text = model.getDescription(apiData: equipData[row])
            cell.objectImage.image = model.getIcon()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
//MARK: - Equipment protocol
extension DescriptionViewController: EquipmentSavebleProtocol {
    func save(_ data: [LooseEquipment]) {
        equipData = data
        mainView.tableView.reloadData()
    }
}
