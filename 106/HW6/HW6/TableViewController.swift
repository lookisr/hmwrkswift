//
//  TableViewController.swift
//  HW6
//
//  Created by Rafael Shamsutdinov on 21.10.2022.
//

import UIKit

class TableViewController: UIViewController {
    private let listOfCars = Car.getModel()
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setupView()
        // Do any additional setup after loading the view.
    }
    private func setView() {
        navigationItem.title = "Cars & Brands"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    enum CellIdentifier: String {
        case brandsList
        case carsList
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfCars.BrandsList.count
        }
        return listOfCars.CarsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = UITableViewCell(style: .value1, reuseIdentifier: CellIdentifier.brandsList.rawValue)
            let brand = listOfCars.BrandsList[indexPath.row]
            var value = UIListContentConfiguration.valueCell()
            value.imageProperties.maximumSize = CGSize(width: 60, height: 60)
            value.image = UIImage(named: brand.image)
            value.text = String(brand.name)
            value.secondaryText = brand.owner
            cell.contentConfiguration = value
            cell.selectionStyle = .none
            return cell
            
        default:
            guard
                let cell = tableView
                    .dequeueReusableCell(
                        withIdentifier: CellIdentifier.carsList.rawValue, for: indexPath
                    ) as? CarsViewTableCell
            else {
                fatalError("Could not deque cell of type \(CarsViewTableCell.self)")
            }
            let car = listOfCars.CarsList[indexPath.row]
            print(car)
            cell.set(car: car)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Car Brands"
        }
        return "Cars List"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) as? CarsViewTableCell {
            cell.didSelect(car: listOfCars.CarsList[indexPath.row], at: indexPath)
        }
    }
    private func setupView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellIdentifier.brandsList.rawValue)
        tableView.register(CarsViewTableCell.self, forCellReuseIdentifier: CellIdentifier.carsList.rawValue)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

}
