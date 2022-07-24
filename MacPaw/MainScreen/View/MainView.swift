//
//  MainView.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import UIKit

class MainView: UIView {
    
    let logoImage: UIImageView = {
        var obj = UIImageView()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.image = UIImage(named: "Flag")
        return obj
    }()
    
    let tableView: UITableView = {
        var obj = UITableView()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.showsVerticalScrollIndicator = false
        obj.separatorStyle = .none
        obj.rowHeight = UITableView.automaticDimension
        obj.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        return obj
    }()
    let footerImage: UIImageView = {
        var obj = UIImageView()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.image = UIImage(named: "Fire")
        obj.contentMode = .scaleAspectFill
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(logoImage)
        addSubview(tableView)
        addSubview(footerImage)
        
        logoImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        logoImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        logoImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        tableView.topAnchor.constraint(equalTo: logoImage.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        footerImage.rightAnchor.constraint(equalTo: tableView.rightAnchor, constant: 50).isActive = true
        footerImage.leftAnchor.constraint(equalTo: tableView.leftAnchor, constant: -50).isActive = true
        footerImage.bottomAnchor.constraint(equalTo: tableView.bottomAnchor).isActive = true
        footerImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
