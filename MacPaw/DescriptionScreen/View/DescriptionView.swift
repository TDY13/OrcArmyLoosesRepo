//
//  DescriptionView.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import Foundation
import UIKit

class DescriptionView: UIView {
    let backButton: UIButton = {
        let obj = UIButton()
        obj.setTitleColor(.systemBlue, for: .normal)
        obj.setTitle("Back", for: .normal)
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        return obj
    }()
    
    let tableView: UITableView = {
        let obj = UITableView()
        obj.rowHeight = UITableView.automaticDimension
        obj.backgroundColor = .yellow
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.isScrollEnabled = false
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
        backgroundColor = .white
        addSubview(tableView)
        addSubview(backButton)
        
        backButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        tableView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 4).isActive = true
    }
}
