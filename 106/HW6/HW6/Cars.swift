//
//  Cars.swift
//  HW6
//
//  Created by Rafael Shamsutdinov on 21.10.2022.
//

enum BodyStyles: String {
    case sedan
    case hatchback
    case suv
    case coupe
    case sportCar
    case stationVagon
    case convertible
    case pickup
}

struct Car {
    let brand: String
    let model: String
    let bodyStyle: BodyStyles
    let power: Int
}

struct carBrands {
    let name: String
    let image: String
    var owner: String?
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    init(name: String, image: String, owner: String?) {
        self.name = name
        self.image = image
        self.owner = owner
    }
    

}
struct DataModel {
    let CarsList: [Car]
    let BrandsList: [carBrands]
}
extension Car {
    static func getModel() -> DataModel {
        return DataModel(CarsList: [
            Car(brand: "BMW", model: "M5", bodyStyle: .sedan, power: 635),
            Car(brand: "Mercedes", model: "E63", bodyStyle: .sedan, power: 603),
            Car(brand: "Audi", model: "RS6", bodyStyle: .stationVagon, power: 600),
            Car(brand: "Lada", model: "Priora", bodyStyle: .sedan, power: 98),
            Car(brand: "McLaren", model: "720s", bodyStyle: .sportCar, power: 720),
            Car(brand: "Audi", model: "RSQ8", bodyStyle: .suv, power: 591),
            Car(brand: "Honda", model: "Civic", bodyStyle: .sedan, power: 140),
            Car(brand: "Nissan", model: "GT-R", bodyStyle: .sportCar, power: 485),
            Car(brand: "BMW", model: "M4", bodyStyle: .coupe, power: 635),
            Car(brand: "Audi", model: "RS4", bodyStyle: .stationVagon, power: 450),
            Car(brand: "Lamborghini", model: "Urus", bodyStyle: .suv, power: 641)
            ],
                BrandsList: [carBrands(name: "BMW", image: "bmw", owner: "Karl Friedrich"),
                             carBrands(name: "Mercedes", image: "mercedes", owner: "Carl Benz"),
                             carBrands(name: "Audi", image: "audi", owner: "August Horch"),
                             carBrands(name: "Honda", image: "honda"),
                             carBrands(name: "Lamborghini", image: "lamborghini"),
                             carBrands(name: "Lada", image: "lada"),
                             carBrands(name: "Nissan", image: "nissan")
            ])
    }
}

