//
//  MainRouter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class MainRouter: BaseModuleRouter, MainRouterProtocol {
    
    func showInformation(model: WeatherViewModel) {
        let module = container.resolve(InformationAssembly.self).build(coordinator: coordinator)
        coordinator.router.push(module)
        module.input.setModel(model: model)
    }
    
    func showAddCity(names: [String]) {
        let module = container.resolve(AddingCityAssembly.self).build(coordinator: coordinator)
        coordinator.router.push(module, animated: false)
        module.input.setNames(names: names)
    }
}
