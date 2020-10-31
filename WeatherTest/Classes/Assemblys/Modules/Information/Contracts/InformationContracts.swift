//
//  InformationContracts.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

// Module Input
protocol InformationModuleInput {
    func setModel(model: WeatherViewModel)
    
}

// Module Output
protocol InformationModuleOutput {
    
}

// View Input
protocol InformationViewInput: class {
    func set(title: String)
    func set(model: WeatherViewModel)
}

// View Output
protocol InformationViewOutput: class {
    func viewDidLoad()
    func cancel()
}

// Interactor
protocol InformationInteractorInput {
}

// Router
protocol InformationRouterProtocol: AlertRoutable {
    func popModule()
}
