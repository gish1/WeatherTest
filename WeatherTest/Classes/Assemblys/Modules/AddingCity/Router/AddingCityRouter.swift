//
//  AddingCityRouter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class AddingCityRouter: BaseModuleRouter, AddingCityRouterProtocol {
    
    func popModule() {
        coordinator.router.popModule(animated: false)
    }
    
    func showMain(namesCity: [String]) {
        let module = container.resolve(MainAssembly.self).build(coordinator: coordinator)
        coordinator.router.setRootModule(module)
        module.input.setName(namesCity: namesCity)
    }
}
