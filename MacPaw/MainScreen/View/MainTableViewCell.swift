//
//  TableViewCell.swift
//  MacPaw
//
//  Created by Дмитрий Тимофеев on 22.07.2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    static let id = String(describing: MainTableViewCell.self)
    
    let containerView: UIView = {
        let obj = UIView()
        obj.layer.cornerRadius = 8
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.backgroundColor = .white
        return obj
    }()
    
    let dateLabel: UILabel = {
        var obj = UILabel()
        obj.textColor = .systemGray
        obj.font = .systemFont(ofSize: 14, weight: .light)
        
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let dateImage: UIImageView = {
        var obj = UIImageView()
        obj.image = UIImage(named: "Date")
        obj.contentMode = .scaleAspectFill
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let daysNumberLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = .black
        obj.font = .systemFont(ofSize: 18, weight: .heavy)
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let personnelImage: UIImageView = {
        let obj = UIImageView()
        obj.image = UIImage(named: "Orc")
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let personnelLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = .black
        obj.font = .systemFont(ofSize: 20, weight: .heavy)
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    let powImage: UIImageView = {
        let obj = UIImageView()
        obj.image = UIImage(named: "Pow")
        obj.translatesAutoresizingMaskIntoConstraints = false
        return obj
    }()
    
    var powLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = .black
        obj.font = .systemFont(ofSize: 18, weight: .heavy)
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
        backgroundColor = .clear
        contentView.addSubview(containerView)
        containerView.addSubview(dateLabel)
        containerView.addSubview(daysNumberLabel)
        containerView.addSubview(personnelLabel)
        containerView.addSubview(powLabel)
        containerView.addSubview(dateImage)
        containerView.addSubview(personnelImage)
        containerView.addSubview(powImage)
        
        containerView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
        containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8).isActive = true
        containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        
        dateImage.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16).isActive = true
        dateImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        dateImage.heightAnchor.constraint(equalToConstant: 45).isActive = true
        dateImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        dateLabel.leftAnchor.constraint(equalTo: dateImage.rightAnchor, constant: 16).isActive = true
        dateLabel.topAnchor.constraint(equalTo: dateImage.topAnchor).isActive = true
        
        daysNumberLabel.leftAnchor.constraint(equalTo: dateLabel.leftAnchor).isActive = true
        daysNumberLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor).isActive = true
        
        personnelImage.leftAnchor.constraint(equalTo: dateImage.leftAnchor).isActive = true
        personnelImage.topAnchor.constraint(equalTo: daysNumberLabel.bottomAnchor, constant: 24).isActive = true
        personnelImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        personnelImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        personnelLabel.leftAnchor.constraint(equalTo: personnelImage.rightAnchor, constant: 16).isActive = true
        personnelLabel.centerYAnchor.constraint(equalTo: personnelImage.centerYAnchor).isActive = true
        
        powImage.leftAnchor.constraint(equalTo: personnelImage.leftAnchor).isActive = true
        powImage.topAnchor.constraint(equalTo: personnelLabel.bottomAnchor, constant: 8).isActive = true
        powImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        powImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        powLabel.centerYAnchor.constraint(equalTo: powImage.centerYAnchor).isActive = true
        powLabel.leftAnchor.constraint(equalTo: powImage.rightAnchor, constant: 16).isActive = true
        powLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8).isActive = true
    }
    
    func configureCell(_ item: WarDataset?) {
        guard let item = item else { return }
        dateLabel.text = item.date
        daysNumberLabel.text = "\(item.day) day of heroic resistance"
        personnelLabel.text = "\(item.personnel) orcs demilitarized 👻"
        guard let itemPow = item.pow else { return powLabel.text = "No info"}
        powLabel.text = "\(itemPow) orcs in captivity"
    }
}
