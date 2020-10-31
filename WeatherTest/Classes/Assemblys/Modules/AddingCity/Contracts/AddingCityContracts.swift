//
//  AddingCityContracts.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

// Module Input
protocol AddingCityModuleInput {
    func setNames(names: [String])
}

// Module Output
protocol AddingCityModuleOutput {
    
}

// View Input
protocol AddingCityViewInput: class {
    func set(title: String)
    func set(names: [String])
}

// View Output
protocol AddingCityViewOutput: class {
    func viewDidLoad()
    func cancel()
    func cancel(namesCity: [String])
    func searchFilter(text: String) -> [String]
}

// Interactor
protocol AddingCityInteractorInput {
    func searchFilter(text: String) -> [String]
}

// Router
protocol AddingCityRouterProtocol: AlertRoutable {
    func popModule()
    func showMain(namesCity: [String])
}
