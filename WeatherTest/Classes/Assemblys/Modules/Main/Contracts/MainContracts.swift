//
//  MainContracts.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

// Module Input
protocol MainModuleInput {
    func setName(namesCity: [String])
}

// Module Output
protocol MainModuleOutput {
    
}

// View Input
protocol MainViewInput: class {
    func set(title: String)
    func set(namesCity: [String])
    func set(model: WeatherViewModel)
}

// View Output
protocol MainViewOutput: class {
    func viewDidLoad()
    func handleAddCityTap(names: [String])
    func viewLoadInformation(nameCity: String)
    func handleInformationTap(model: WeatherViewModel)
}

// Interactor
protocol MainInteractorInput {
    func obtainInformation(nameCity: String, completion: @escaping (WeatherResponse) -> Void)
}

// Router
protocol MainRouterProtocol: AlertRoutable {
    func showInformation(model: WeatherViewModel)
    func showAddCity(names: [String])
}
