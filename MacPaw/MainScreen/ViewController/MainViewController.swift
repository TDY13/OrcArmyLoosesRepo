//
//  ViewController.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import UIKit

class MainViewController: UIViewController {

    var mainView = MainView()
    
    var warDataset: [WarDataset] = []
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewController()
    }
    
    func initViewController() {
        guard let url: URL = URL(string: Constant.personnel) else { return }
        DataService.shared.personnelRequest(url)
        DataService.shared.delegate = self
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        mainView.tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.id)
    }
}
//MARK: - TableView delegate & dataSource
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        warDataset.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.id, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        cell.configureCell(warDataset[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var filtered: [LooseEquipment] = []
        var selectedDay = ""
        var row = indexPath.row
        
//        TODO: - ⬇️
//        warDataset.filter { $0.date == DescriptionViewController.shared.equipData[indexPath.row].date}
//        warDataset.filter {$0.date}
        
//        guard let dayData = warDataset.first(where: {$0.date == selectedDay}) else { return }
//        let dateData = warDataset.filter { warDataset in
//            warDataset.date == filtered[indexPath.row]
//        }
        let viewController = DescriptionViewController(data: filtered)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

//MARK: - Saveble protocol
extension MainViewController: SavebleProtocol {
    func save(_ data: [WarDataset]) {
        self.warDataset = data
        mainView.tableView.reloadData()
    }
    
    
}
