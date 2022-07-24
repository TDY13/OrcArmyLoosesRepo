//
//  DescriptionTableViewCell.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 23.07.2022.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell, Reusable {
    
    let objectImage: UIImageView = {
        let obj = UIImageView()
        obj.contentMode = .scaleAspectFill
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let objectNameLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = .black
        obj.font = .systemFont(ofSize: 20, weight: .regular)
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let numberOfDestroyedObjectsLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = UIColor(red: 223/255, green: 200/255, blue: 31/255, alpha: 1)
        obj.font = .systemFont(ofSize: 20, weight: .heavy)
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        selectionStyle = .none
        contentView.addSubview(objectImage)
        contentView.addSubview(objectNameLabel)
        contentView.addSubview(numberOfDestroyedObjectsLabel)
        
        objectImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
        objectImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        objectImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        objectImage.heightAnchor.constraint(equalToConstant: 36).isActive = true
        objectImage.widthAnchor.constraint(equalToConstant: 36).isActive = true
        
        objectNameLabel.centerYAnchor.constraint(equalTo: objectImage.centerYAnchor).isActive = true
        objectNameLabel.leftAnchor.constraint(equalTo: objectImage.rightAnchor, constant: 16).isActive = true
        objectNameLabel.rightAnchor.constraint(equalTo: numberOfDestroyedObjectsLabel.leftAnchor).isActive = true
        
        numberOfDestroyedObjectsLabel.centerYAnchor.constraint(equalTo: objectNameLabel.centerYAnchor).isActive = true
        numberOfDestroyedObjectsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
    }
}
