//
//  CarsViewTableCell.swift
//  HW6
//
//  Created by Rafael Shamsutdinov on 21.10.2022.
//

import UIKit

class CarsViewTableCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private let brandLabel : UILabel = .init()
    private let modelLabel : UILabel = .init()
    private let powerLabel: UILabel = .init()
    private let bodyLabel: UILabel = .init()
    private func setup() {
        brandLabel.font = .boldSystemFont(ofSize: 20)
        modelLabel.font = .boldSystemFont(ofSize: 20)
        powerLabel.font = .boldSystemFont(ofSize: 25)
        brandLabel.adjustsFontSizeToFitWidth = true
        modelLabel.adjustsFontSizeToFitWidth = true
        brandLabel.textAlignment = .left
        let stackView = UIStackView(arrangedSubviews: [
        brandLabel, modelLabel
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        contentView.addSubview(stackView)
        contentView.addSubview(powerLabel)
        contentView.addSubview(bodyLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])

        powerLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            powerLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            powerLabel.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -35),
            powerLabel.widthAnchor.constraint(equalToConstant: 180),
        ])
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           bodyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 30),
           bodyLabel.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -35),
           bodyLabel.widthAnchor.constraint(equalToConstant: 180),

        ])
    }
    func set(car: Car) {
        brandLabel.text = car.brand
        modelLabel.text = car.model
        powerLabel.text = String(car.power)
        bodyLabel.text = "Body: \(car.bodyStyle)"
    }
    func didSelect(car: Car, at indexPath: IndexPath) {
        print(
            "Brand: \(car.brand), Model: \(car.model), Power: \(car.power), Body: \(car.bodyStyle))"
        )
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
